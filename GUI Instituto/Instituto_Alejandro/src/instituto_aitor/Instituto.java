package instituto_aitor;

import java.awt.Component;
import java.awt.Image;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.ComboBoxModel;
import javax.swing.DefaultComboBoxModel;
import javax.swing.DefaultListModel;
import javax.swing.ImageIcon;
import javax.swing.JComboBox;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.RowFilter;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableModel;
import javax.swing.table.TableRowSorter;

/**
 *
 * @author Aitor García
 */
public class Instituto extends MiVentanaBase{

    static Connection conn;
    JTable tablaAlumnos;
    JTable tablaGrupos;
    JTable tablaMatAlum, tablaMatModulos;
    HashMap<Integer, ArrayList<String>> matriculas = new HashMap();
    
    public Instituto(String titulo, int ancho, int alto) {
        super(titulo, ancho, alto);
        initComponents();
        Login login = new Login(this, true);
        conn = login.getConexion();
        this.setVisible(true);
        
    //------------------------- BUSQUEDAS DE ALUMNOS ---------------------------
        //Cargo la tabla de alumnos...
         tablaAlumnos = creaTabla(panelAlumnos, "SELECT * FROM ALUMNOS;", conn);
         
          //Cargo la tabla de cursos...
         tablaGrupos = creaTabla(panelGrupos, "SELECT GRUPO, AULA, PROFESOR FROM GRUPOS, PROFESORES WHERE PROFESORES.ID_PROF=GRUPOS.TUTOR;", conn);
        
         //Cargo la foto inicial de la ficha...
         cargaImagenJLabel("src/fotos/sinfoto.png", Fich_Foto);
         
               
        //Modifico algunas columnas de la tabla de alumnos...
        tablaAlumnos.getColumnModel().getColumn(0).setPreferredWidth(250);
       
        //ocultar la columna 5...
        ocultaColumnas(tablaAlumnos, 5);
        
        //ocultar la columna 4...
        ocultaColumnas(tablaAlumnos, 4);
        
        
        //Programo los listeners para la tabla de alumnos...
        tablaAlumnos.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                //Ejecuto el evento de keyReleased...
                KeyEvent ke = new KeyEvent(tablaAlumnos, KeyEvent.KEY_RELEASED, 1, 0, KeyEvent.VK_UNDEFINED, 'a');
                tablaAlumnos.dispatchEvent(ke);
            }
        });
        tablaAlumnos.addKeyListener(new KeyAdapter() {
            @Override
            public void keyReleased(KeyEvent e) {
                int filaSeleccionada = tablaAlumnos.getSelectedRow();
                
                String nombreYApellidos = (String) tablaAlumnos.getValueAt(filaSeleccionada, 0);
                String nombre = nombreYApellidos.substring(nombreYApellidos.indexOf(",")+2);
                String apellidos = nombreYApellidos.substring(0, nombreYApellidos.indexOf(","));
                int nie = (int) tablaAlumnos.getValueAt(filaSeleccionada, 1);
                String cp = (String) tablaAlumnos.getValueAt(filaSeleccionada, 2);
                String localidad = (String) tablaAlumnos.getValueAt(filaSeleccionada, 3);
                String grupo = (String) tablaAlumnos.getValueAt(filaSeleccionada, 4);
                String foto = (String) tablaAlumnos.getValueAt(filaSeleccionada, 5);
                
                Fich_Nombre1.setText(nombre);
                Fich_Apellidos.setText(apellidos);
                Fich_NIE.setText(String.valueOf(nie));
                Fich_Curso.setText(grupo);
                Fich_CP.setText(cp);
                if (cargaImagenJLabel("src/fotos/"+foto,Fich_Foto) == false)
                    cargaImagenJLabel("src/fotos/sinfoto.png",Fich_Foto);
                
                Fich_Localidad.setText(localidad);
                
                creaTabla(Fich_Asignaturas, 
                        "SELECT MA.ASIGNATURA, P.PROFESOR FROM PROFESORES P, MATRICULAS MA, MODULOS MO WHERE MO.PROFESOR=P.ID_PROF AND MO.CLAVE=MA.ASIGNATURA AND MA.ALUMNO="+nie+";", conn);
            }
        });
        
        
         tablaGrupos.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                //Ejecuto el evento de keyReleased...
                KeyEvent ke = new KeyEvent(tablaGrupos, KeyEvent.KEY_RELEASED, 1, 0, KeyEvent.VK_UNDEFINED, 'a');
                tablaGrupos.dispatchEvent(ke);
            }
        });
        tablaGrupos.addKeyListener(new KeyAdapter() {
            @Override
            public void keyReleased(KeyEvent e) {
                if (tablaGrupos.getSelectedRow()!=-1){
               //Cogemos el row sorter de la tabla:
            TableRowSorter trs = (TableRowSorter) tablaAlumnos.getRowSorter();
               //Creamos el filtro:
            RowFilter rf = RowFilter.regexFilter((String)tablaGrupos.getValueAt(tablaGrupos.getSelectedRow(), 0), 4);
               //Le aplicamos el filtro:
            trs.setRowFilter(rf);
            
            
            label_AlumnosTabla.setText("ALUMNOS DE "+(String)tablaGrupos.getValueAt(tablaGrupos.getSelectedRow(), 0)+":");
        } else {
            ((TableRowSorter)tablaAlumnos.getRowSorter()).setRowFilter(null);
            label_AlumnosTabla.setText("ALUMNOS DEL INSTITUTO:");
        }
            }
        });
        
        
        //----------------------- LISTADOS DE GRUPOS ---------------------------
        cargaComboDirectorio("src/listados",jC_Listado);
        
        
        
        
        //-------------------------- MATRICULAS -------------------------------
         tablaMatAlum = creaTabla(Js_AlumMatriculas, "SELECT ALUMNO, NIE FROM ALUMNOS;", conn);
         ocultaColumnas(tablaMatAlum, 1);
         
         tablaMatModulos = creaTabla(Js_ModulMatriculas, "SELECT NOMBRE, CLAVE FROM MODULOS;", conn);
         ocultaColumnas(tablaMatModulos, 1);
         
         cargarMapaMatriculas(matriculas);
        
         tablaMatAlum.addKeyListener(new KeyAdapter() {
            @Override
             public void keyReleased(KeyEvent e) {
                 
                 tablaMatModulos.clearSelection();
                 
                 int nieSeleccionado = (int) tablaMatAlum.getModel().getValueAt(tablaMatAlum.getSelectedRow(), 1);
                 TableRowSorter sorter = (TableRowSorter) tablaMatModulos.getRowSorter();

                 ArrayList listaFiltros = new ArrayList<RowFilter>();
                 ArrayList listaModulos = matriculas.get(nieSeleccionado);
                 if (listaModulos != null) {
                     for (Object modulo : listaModulos) {
                         listaFiltros.add(RowFilter.regexFilter((String) modulo, 1));
                     }

                     sorter.setRowFilter(RowFilter.orFilter(listaFiltros));
                 } else {
                     sorter.setRowFilter(RowFilter.regexFilter("FILTRO NULO", 1));
                 }
                                  
             }
     });
         
          tablaMatAlum.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                //Ejecuto el evento de keyReleased...
                KeyEvent ke = new KeyEvent(tablaMatAlum, KeyEvent.KEY_RELEASED, 1, 0, KeyEvent.VK_UNDEFINED, 'a');
                tablaMatAlum.dispatchEvent(ke);
            }
        });
          
          tablaMatModulos.addKeyListener(new KeyAdapter() {
            @Override
            public void keyReleased(KeyEvent e) {
                tablaMatAlum.clearSelection();
                
              String codModulo = (String) tablaMatModulos.getModel().getValueAt(tablaMatModulos.getSelectedRow(), 1);
              ArrayList listaFiltros = new ArrayList();
                
              for (Map.Entry<Integer, ArrayList<String>> entry : matriculas.entrySet()) {
                    Integer key = entry.getKey();
                    ArrayList<String> value = entry.getValue();
                    
                 if (value.contains(codModulo))   
                     listaFiltros.add(RowFilter.numberFilter(RowFilter.ComparisonType.EQUAL,key, 1));
                 
                }
                TableRowSorter sorter = (TableRowSorter) tablaMatAlum.getRowSorter();
                
                if (listaFiltros.isEmpty())
                sorter.setRowFilter(RowFilter.regexFilter("FILTRO NULO", 1));
                 else
                sorter.setRowFilter(RowFilter.orFilter(listaFiltros));
            }
              
          });
          tablaMatModulos.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                //Ejecuto el evento de keyReleased...
                KeyEvent ke = new KeyEvent(tablaMatModulos, KeyEvent.KEY_RELEASED, 1, 0, KeyEvent.VK_UNDEFINED, 'a');
                tablaMatModulos.dispatchEvent(ke);
            }
        });
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jTabbedPane1 = new javax.swing.JTabbedPane();
        jPanel1 = new javax.swing.JPanel();
        fichaAlumno = new javax.swing.JPanel();
        Fich_Foto = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        Fich_NIE = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        Fich_Asignaturas = new javax.swing.JScrollPane();
        jLabel7 = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();
        Fich_CP = new javax.swing.JLabel();
        Fich_Curso = new javax.swing.JLabel();
        Fich_Nombre1 = new javax.swing.JLabel();
        Fich_Localidad = new javax.swing.JLabel();
        Fich_Apellidos = new javax.swing.JLabel();
        panelAlumnos = new javax.swing.JScrollPane();
        Bot_limpiaFicha = new javax.swing.JToggleButton();
        label_AlumnosTabla = new javax.swing.JLabel();
        jLabel10 = new javax.swing.JLabel();
        panelGrupos = new javax.swing.JScrollPane();
        jButton1 = new javax.swing.JButton();
        jPanel2 = new javax.swing.JPanel();
        jC_Listado = new javax.swing.JComboBox<>();
        jLabel1 = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        TexArea_Listados = new javax.swing.JTextArea();
        jScrollPane2 = new javax.swing.JScrollPane();
        jList_Listados = new javax.swing.JList<>();
        jPanel3 = new javax.swing.JPanel();
        Js_ModulMatriculas = new javax.swing.JScrollPane();
        Js_AlumMatriculas = new javax.swing.JScrollPane();
        jButton3 = new javax.swing.JButton();
        jButton4 = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jPanel1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jPanel1MouseClicked(evt);
            }
        });

        fichaAlumno.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0), 2), "  FICHA DEL ALUMNO  ", javax.swing.border.TitledBorder.CENTER, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Segoe UI", 1, 14))); // NOI18N

        Fich_Foto.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        Fich_Foto.setText("Sin foto");
        Fich_Foto.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));

        jLabel2.setFont(new java.awt.Font("Segoe UI", 2, 14)); // NOI18N
        jLabel2.setText("Nombre:");

        jLabel3.setFont(new java.awt.Font("Segoe UI", 2, 14)); // NOI18N
        jLabel3.setText("Apellidos:");

        jLabel4.setFont(new java.awt.Font("Segoe UI", 2, 18)); // NOI18N
        jLabel4.setText("NIE:");

        Fich_NIE.setBackground(new java.awt.Color(102, 102, 102));
        Fich_NIE.setFont(new java.awt.Font("Segoe UI", 1, 24)); // NOI18N
        Fich_NIE.setText("00");

        jLabel6.setFont(new java.awt.Font("Segoe UI", 2, 14)); // NOI18N
        jLabel6.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        jLabel6.setText("Curso:");

        jLabel7.setFont(new java.awt.Font("Segoe UI", 2, 14)); // NOI18N
        jLabel7.setText("Asignaturas que recibe:");

        jLabel8.setFont(new java.awt.Font("Segoe UI", 2, 14)); // NOI18N
        jLabel8.setText("Localidad:");

        jLabel9.setFont(new java.awt.Font("Segoe UI", 2, 14)); // NOI18N
        jLabel9.setText("CP:");

        Fich_CP.setBackground(new java.awt.Color(102, 102, 102));
        Fich_CP.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        Fich_CP.setText("0000");

        Fich_Curso.setBackground(new java.awt.Color(102, 102, 102));
        Fich_Curso.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        Fich_Curso.setText("Sin datos");

        Fich_Nombre1.setBackground(new java.awt.Color(102, 102, 102));
        Fich_Nombre1.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        Fich_Nombre1.setText("Sin datos");

        Fich_Localidad.setBackground(new java.awt.Color(102, 102, 102));
        Fich_Localidad.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        Fich_Localidad.setText("Sin datos");

        Fich_Apellidos.setBackground(new java.awt.Color(102, 102, 102));
        Fich_Apellidos.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        Fich_Apellidos.setText("Sin datos");

        javax.swing.GroupLayout fichaAlumnoLayout = new javax.swing.GroupLayout(fichaAlumno);
        fichaAlumno.setLayout(fichaAlumnoLayout);
        fichaAlumnoLayout.setHorizontalGroup(
            fichaAlumnoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(fichaAlumnoLayout.createSequentialGroup()
                .addGroup(fichaAlumnoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(fichaAlumnoLayout.createSequentialGroup()
                        .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jLabel7)
                        .addGap(225, 225, 225))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, fichaAlumnoLayout.createSequentialGroup()
                        .addGroup(fichaAlumnoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(fichaAlumnoLayout.createSequentialGroup()
                                .addGap(41, 41, 41)
                                .addComponent(Fich_Apellidos, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                            .addGroup(fichaAlumnoLayout.createSequentialGroup()
                                .addGap(26, 26, 26)
                                .addGroup(fichaAlumnoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jLabel2)
                                    .addComponent(jLabel3))
                                .addGap(0, 0, Short.MAX_VALUE))
                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, fichaAlumnoLayout.createSequentialGroup()
                                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addGroup(fichaAlumnoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, fichaAlumnoLayout.createSequentialGroup()
                                        .addComponent(jLabel4)
                                        .addGap(18, 18, 18)
                                        .addComponent(Fich_NIE)
                                        .addGap(21, 21, 21))
                                    .addComponent(Fich_Nombre1, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 191, javax.swing.GroupLayout.PREFERRED_SIZE))))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(fichaAlumnoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(fichaAlumnoLayout.createSequentialGroup()
                                .addComponent(jLabel6, javax.swing.GroupLayout.PREFERRED_SIZE, 59, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(Fich_Curso, javax.swing.GroupLayout.PREFERRED_SIZE, 92, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addComponent(Fich_Foto, javax.swing.GroupLayout.PREFERRED_SIZE, 175, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addGroup(fichaAlumnoLayout.createSequentialGroup()
                        .addGroup(fichaAlumnoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addGroup(javax.swing.GroupLayout.Alignment.LEADING, fichaAlumnoLayout.createSequentialGroup()
                                .addGap(18, 18, 18)
                                .addComponent(jLabel8)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(Fich_Localidad, javax.swing.GroupLayout.PREFERRED_SIZE, 147, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(javax.swing.GroupLayout.Alignment.LEADING, fichaAlumnoLayout.createSequentialGroup()
                                .addGap(52, 52, 52)
                                .addComponent(jLabel9)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(Fich_CP, javax.swing.GroupLayout.PREFERRED_SIZE, 84, javax.swing.GroupLayout.PREFERRED_SIZE)))
                        .addGap(0, 0, Short.MAX_VALUE))
                    .addGroup(fichaAlumnoLayout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(Fich_Asignaturas)))
                .addContainerGap())
        );
        fichaAlumnoLayout.setVerticalGroup(
            fichaAlumnoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(fichaAlumnoLayout.createSequentialGroup()
                .addGap(20, 20, 20)
                .addGroup(fichaAlumnoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                    .addGroup(fichaAlumnoLayout.createSequentialGroup()
                        .addGroup(fichaAlumnoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel2, javax.swing.GroupLayout.Alignment.TRAILING)
                            .addGroup(fichaAlumnoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                .addComponent(jLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addComponent(Fich_NIE)))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(Fich_Nombre1)
                        .addGap(39, 39, 39)
                        .addComponent(jLabel3)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(Fich_Apellidos))
                    .addComponent(Fich_Foto, javax.swing.GroupLayout.PREFERRED_SIZE, 188, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(fichaAlumnoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel6)
                    .addComponent(Fich_Curso))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(fichaAlumnoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel8)
                    .addComponent(Fich_Localidad))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(fichaAlumnoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel9)
                    .addComponent(Fich_CP))
                .addGap(18, 18, 18)
                .addComponent(jLabel7)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(Fich_Asignaturas, javax.swing.GroupLayout.PREFERRED_SIZE, 159, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(12, Short.MAX_VALUE))
        );

        panelAlumnos.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));

        Bot_limpiaFicha.setText("Limpiar Ficha");
        Bot_limpiaFicha.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                Bot_limpiaFichaActionPerformed(evt);
            }
        });

        label_AlumnosTabla.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        label_AlumnosTabla.setText("ALUMNOS DEL INSTITUTO:");

        jLabel10.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        jLabel10.setText("GRUPOS:");

        jButton1.setText("Guardar lista de alumnos");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(18, 18, 18)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addComponent(label_AlumnosTabla, javax.swing.GroupLayout.PREFERRED_SIZE, 178, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(431, 431, 431))
                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jLabel10)
                                    .addComponent(panelGrupos, javax.swing.GroupLayout.PREFERRED_SIZE, 454, javax.swing.GroupLayout.PREFERRED_SIZE))
                                .addGap(70, 70, 70))))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                        .addContainerGap()
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(panelAlumnos, javax.swing.GroupLayout.PREFERRED_SIZE, 603, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 183, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)))
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(fichaAlumno, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                        .addGap(333, 333, 333)
                        .addComponent(Bot_limpiaFicha)))
                .addGap(17, 17, 17))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap(28, Short.MAX_VALUE)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                        .addComponent(jLabel10)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(panelGrupos, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(label_AlumnosTabla)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(panelAlumnos, javax.swing.GroupLayout.PREFERRED_SIZE, 351, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(jButton1)
                        .addGap(23, 23, 23))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                        .addComponent(fichaAlumno, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(Bot_limpiaFicha)
                        .addGap(11, 11, 11))))
        );

        jTabbedPane1.addTab("Busqueda de Alumnos", jPanel1);

        jC_Listado.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Selecciona un listado" }));
        jC_Listado.addItemListener(new java.awt.event.ItemListener() {
            public void itemStateChanged(java.awt.event.ItemEvent evt) {
                jC_ListadoItemStateChanged(evt);
            }
        });

        jLabel1.setFont(new java.awt.Font("Segoe UI", 3, 14)); // NOI18N
        jLabel1.setText("LISTADOS DE GRUPOS:");

        TexArea_Listados.setEditable(false);
        TexArea_Listados.setColumns(20);
        TexArea_Listados.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N
        TexArea_Listados.setRows(5);
        TexArea_Listados.setTabSize(12);
        jScrollPane1.setViewportView(TexArea_Listados);

        jScrollPane2.setViewportView(jList_Listados);

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addGap(47, 47, 47)
                        .addComponent(jLabel1)
                        .addGap(18, 18, 18)
                        .addComponent(jC_Listado, javax.swing.GroupLayout.PREFERRED_SIZE, 213, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addGap(36, 36, 36)
                        .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 542, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(59, 59, 59)
                        .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 399, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(30, Short.MAX_VALUE))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(54, 54, 54)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jC_Listado, javax.swing.GroupLayout.PREFERRED_SIZE, 31, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel1))
                .addGap(51, 51, 51)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jScrollPane2)
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 440, Short.MAX_VALUE))
                .addContainerGap(47, Short.MAX_VALUE))
        );

        jTabbedPane1.addTab("Listado de Grupos", jPanel2);

        Js_ModulMatriculas.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(255, 0, 51), 2), "MODULOS", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Segoe UI", 1, 18), new java.awt.Color(153, 0, 0))); // NOI18N

        Js_AlumMatriculas.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 102, 255), 2), "ALUMNOS", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Segoe UI", 1, 18), new java.awt.Color(0, 0, 153))); // NOI18N

        jButton3.setForeground(new java.awt.Color(0, 51, 255));
        jButton3.setText("Regenerar Tabla");
        jButton3.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 153)));
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });

        jButton4.setForeground(new java.awt.Color(204, 0, 0));
        jButton4.setText("Regenerar Tabla");
        jButton4.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(102, 0, 0)));
        jButton4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton4ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel3Layout = new javax.swing.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel3Layout.createSequentialGroup()
                .addGap(33, 33, 33)
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(Js_AlumMatriculas, javax.swing.GroupLayout.PREFERRED_SIZE, 416, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(jPanel3Layout.createSequentialGroup()
                        .addGap(283, 283, 283)
                        .addComponent(jButton3, javax.swing.GroupLayout.PREFERRED_SIZE, 120, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 143, Short.MAX_VALUE)
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel3Layout.createSequentialGroup()
                        .addComponent(Js_ModulMatriculas, javax.swing.GroupLayout.PREFERRED_SIZE, 427, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(47, 47, 47))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel3Layout.createSequentialGroup()
                        .addComponent(jButton4, javax.swing.GroupLayout.PREFERRED_SIZE, 120, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(62, 62, 62))))
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel3Layout.createSequentialGroup()
                .addContainerGap(54, Short.MAX_VALUE)
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(Js_AlumMatriculas, javax.swing.GroupLayout.DEFAULT_SIZE, 525, Short.MAX_VALUE)
                    .addComponent(Js_ModulMatriculas))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jButton3, javax.swing.GroupLayout.PREFERRED_SIZE, 22, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jButton4, javax.swing.GroupLayout.PREFERRED_SIZE, 22, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(16, 16, 16))
        );

        jTabbedPane1.addTab("Matriculas", jPanel3);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jTabbedPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 1066, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jTabbedPane1)
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void Bot_limpiaFichaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_Bot_limpiaFichaActionPerformed
        Fich_NIE.setText("00");
        Fich_Nombre1.setText("Sin datos");
        Fich_Apellidos.setText("Sin datos");
        Fich_Curso.setText("Sin datos");
        Fich_Localidad.setText("Sin datos");
        Fich_CP.setText("0000");
        cargaImagenJLabel("src/fotos/sinfoto.png", Fich_Foto);
        Fich_Asignaturas.setViewportView(null);
        
        tablaAlumnos.clearSelection();
    }//GEN-LAST:event_Bot_limpiaFichaActionPerformed

    private void jPanel1MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jPanel1MouseClicked
        tablaAlumnos.clearSelection();
        tablaGrupos.clearSelection();
        Bot_limpiaFichaActionPerformed(null);
        KeyEvent ke = new KeyEvent(tablaGrupos, KeyEvent.KEY_RELEASED, 1, 0, KeyEvent.VK_UNDEFINED, 'a');
        tablaGrupos.dispatchEvent(ke);
    }//GEN-LAST:event_jPanel1MouseClicked

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        if (tablaGrupos.getSelectedRow()!=-1){
        //Cabecera del fichero:
        String nombreFic = label_AlumnosTabla.getText().substring(label_AlumnosTabla.getText().indexOf(" ", 10), label_AlumnosTabla.getText().indexOf(":")).trim();
        
         //Datos del fichero:
        String datos = "              --- LISTA DE "+nombreFic+" ---\n";
        datos +="-----------------------------------------------------\n";
        
        String nombre="";
        for (int i = 0; i < tablaAlumnos.getRowCount(); i++) {
            nombre = (String) tablaAlumnos.getValueAt(i, 0);
            datos+="\t"+(i+1)+": "+nombre+"\n";
        }
        datos +="-----------------------------------------------------\n";
        datos +="              --- TOTAL "+tablaAlumnos.getRowCount()+" ALUMNOS"+" ---";
        
        
        //Guardar fichero:
        boolean repetido = false;
            for (int i = 1; i < jC_Listado.getItemCount() && !repetido; i++) { //Mientras sea menor que la cuenta y no esté repetido
                //Comprueba para todos los campos del combo si el fichero ya existe...
                String ficheros = jC_Listado.getItemAt(i);
                
                if(nombreFic.equalsIgnoreCase(ficheros)) //Si es igual el nombre que hemos leido al nombre del fichero nuevo
                    repetido=true;
            }
            
           if (repetido==true){ //Si ya existe...
               int opc = JOptionPane.showConfirmDialog(null, "El fichero ya está creado, ¿Quieres sobreescribirlo?","¿Quieres sobreescribirlo?",JOptionPane.YES_NO_OPTION);
               
               if (opc == JOptionPane.YES_OPTION) //Si existe y quiere sobreescribirlo...
                    guardaEnFichero(datos, "src/listados/"+nombreFic+".txt");
           
           } else {//NO existe
               guardaEnFichero(datos, "src/listados/"+nombreFic+".txt");
               jC_Listado.addItem(nombreFic);
           }
        
        } else {
            JOptionPane.showMessageDialog(null, "Debes seleccionar algo en la tabla de Grupos","Debes seleccionar algo",JOptionPane.ERROR_MESSAGE);
        }
    }//GEN-LAST:event_jButton1ActionPerformed

    private void jC_ListadoItemStateChanged(java.awt.event.ItemEvent evt) {//GEN-FIRST:event_jC_ListadoItemStateChanged
        if (jC_Listado.getSelectedIndex()!=0){
            String fichero = leeTexto("src/listados/"+jC_Listado.getSelectedItem()+".txt");
            DefaultListModel modelo = new DefaultListModel();
            for (String string : fichero.split("\n")) {
                modelo.addElement(string);
            }
            jList_Listados.setModel(modelo);
            TexArea_Listados.setText(fichero);
        } else {
            TexArea_Listados.setText("");
            jList_Listados.setModel(new DefaultListModel());
        }
    }//GEN-LAST:event_jC_ListadoItemStateChanged

    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
        ((TableRowSorter)tablaMatAlum.getRowSorter()).setRowFilter(null);
        tablaMatModulos.clearSelection();
    }//GEN-LAST:event_jButton3ActionPerformed

    private void jButton4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton4ActionPerformed
       ((TableRowSorter)tablaMatModulos.getRowSorter()).setRowFilter(null);
        tablaMatAlum.clearSelection();
    }//GEN-LAST:event_jButton4ActionPerformed
   
    public String leeTexto(String ruta){
        String texto="";
        String linea="";
        try {
            
            BufferedReader br = new BufferedReader(new FileReader(ruta));
            while ((linea=br.readLine())!=null) {
            texto+=linea+"\n";
                
            }
        } catch (FileNotFoundException ex) {
            JOptionPane.showMessageDialog(null, "Fichero "+ruta+"no encontrado","Error leyendo el fichero",JOptionPane.ERROR_MESSAGE);
        } catch (IOException ex) {
            JOptionPane.showMessageDialog(null, "Error inesperado leyendo el fichero: \n"+ex.getMessage(),"Error leyendo el fichero",JOptionPane.ERROR_MESSAGE);
        }
        return texto;
    }
    
    public void guardaEnFichero(String datos, String ruta){
       PrintWriter pw = null;
       FileWriter fw = null;
       
        try {
            fw = new FileWriter(ruta);
            pw = new PrintWriter(fw);
            
            pw.println(datos);
            
            JOptionPane.showMessageDialog(null,"Fichero creado con éxito","Fichero creado",JOptionPane.INFORMATION_MESSAGE);
        } catch (IOException ex) {
            JOptionPane.showMessageDialog(null, "Error de entrada/salida al crear el fichero","Error guardando el fichero",JOptionPane.ERROR_MESSAGE);
        } finally {
           try {
               pw.close();
               fw.close();
           } catch (IOException ex) {
               JOptionPane.showMessageDialog(null, "Error de entrada/salida al cerrar el fichero","Error guardando el fichero",JOptionPane.ERROR_MESSAGE);
           }
        }
        
        
    }
    
    public static void main(String args[]) {
        new Instituto("Instituto", 1078, 644);
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JToggleButton Bot_limpiaFicha;
    private javax.swing.JLabel Fich_Apellidos;
    private javax.swing.JScrollPane Fich_Asignaturas;
    private javax.swing.JLabel Fich_CP;
    private javax.swing.JLabel Fich_Curso;
    private javax.swing.JLabel Fich_Foto;
    private javax.swing.JLabel Fich_Localidad;
    private javax.swing.JLabel Fich_NIE;
    private javax.swing.JLabel Fich_Nombre1;
    private javax.swing.JScrollPane Js_AlumMatriculas;
    private javax.swing.JScrollPane Js_ModulMatriculas;
    private javax.swing.JTextArea TexArea_Listados;
    private javax.swing.JPanel fichaAlumno;
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButton4;
    private javax.swing.JComboBox<String> jC_Listado;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JList<String> jList_Listados;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JTabbedPane jTabbedPane1;
    private javax.swing.JLabel label_AlumnosTabla;
    private javax.swing.JScrollPane panelAlumnos;
    private javax.swing.JScrollPane panelGrupos;
    // End of variables declaration//GEN-END:variables

    static JTable creaTabla(JScrollPane scroll, String consulta, Connection conn){
      
        Statement stmt;
        ResultSet rset;
        ResultSetMetaData rsetMd;
        
        
        DefaultTableModel dtm;
        JTable tabla=null;
        try {
            stmt = conn.createStatement();
            rset = stmt.executeQuery(consulta);
            rsetMd = rset.getMetaData();

            //1 - CREAR EL ARRAY DE LA CABECERA DE LA COLUMNAS..................
            Object[] etiquetas = new Object[rsetMd.getColumnCount()];

            for (int i = 0; i < rsetMd.getColumnCount(); i++) {
                etiquetas[i] = rsetMd.getColumnLabel(i+1);
            }

            //2 - CREAR EL MODELO...............................................
                dtm = new DefaultTableModel(etiquetas, 0);
                
            //3 - CREAR LA TABLA CON EL MODELO..................................
            tabla = new JTable(dtm) {
                //SOBREESCRIBO ALGUNOS MÉTODOS DEL DEFAULT TABLE MODEL..........
                    @Override
                    public boolean isCellEditable(int rowIndex, int vColIndex) {
                        return false;
                    }   

                @Override
                public Class getColumnClass(int column) {
                    return getValueAt(0, column).getClass();
                }  
                    
                };   
            //4 - CARGAR LOS DATOS..............................................
                while(rset.next()){
                     for (int i = 0; i < rsetMd.getColumnCount(); i++) {
                           
                           etiquetas[i]=rset.getObject(i+1);
                     }
                     dtm.addRow(etiquetas);
                }
            
                // CAMBIAR LA EDICIÓN............................................
                // CANCELAR EL MOVIMIENTO DE COLUMNAS..........................  
                tabla.getTableHeader().setReorderingAllowed(false);
                
                
            //5 - ORDENAR LA TABLA..............................................
                TableRowSorter<TableModel> ordena = new TableRowSorter(dtm);
                tabla.setRowSorter(ordena);
                
            //6 - MOSTRAR.......................................................
                scroll.setViewportView(tabla);
                
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(scroll, "Error cargando la tabla","Error",JOptionPane.ERROR_MESSAGE);
        }

        return tabla;
        
    }
    
    static void cargaCombo(Connection conn, String select, JComboBox combo) {
        
        try {
            Statement stmt;
            ResultSet rset;

            //CREA UN STATEMENT CON LA CONEXIÓN.......
            stmt = conn.createStatement();

            //EJECUTAS LA SENTENCIA SQL.......
            rset = stmt.executeQuery(select);

            //PROCESAS LAS FILAS Y LAS AÑADES A LA LISTA    
            while (rset.next()) {
                combo.addItem(rset.getString(1));
            }

        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Error cargando la lista", "Error", JOptionPane.ERROR_MESSAGE);
        }

    }
    
    void cargaComboDirectorio(String ruta, JComboBox combo){
        File file = new File(ruta);
        
        for (File fichero : file.listFiles()) {
            combo.addItem(fichero.getName().substring(0, fichero.getName().indexOf(".")));
        }
    }
    
    boolean cargaImagenJLabel(String ruta, JLabel etiqueta) {
        File imagen = new File(ruta);
        if (imagen.exists()) {
            if (!etiqueta.getText().isEmpty())
                etiqueta.setText("");
            
            ImageIcon icono = new ImageIcon(ruta);
            etiqueta.setIcon(new ImageIcon(icono.getImage().getScaledInstance(etiqueta.getWidth(), etiqueta.getHeight(), Image.SCALE_DEFAULT)));
            return true;
        } else {
           return false;
        }
    }
    
    void cargarMapaMatriculas(Map mapa){ //HashMap<Integer, ArrayList<String>> matriculas = new HashMap();
        ResultSet rset = generaResultSet("SELECT * FROM MATRICULAS;");
            int nie;
            String asignatura;
        try {
            while (rset.next()){
                nie=rset.getInt(1);
                asignatura=rset.getString(2);
                
                if (mapa.get(nie)==null){
                    ArrayList lista = new ArrayList();
                    lista.add(asignatura);
                    mapa.put(nie, lista);
                } else {
                    ArrayList listaAsignaturas = (ArrayList) mapa.get(nie);
                    listaAsignaturas.add(asignatura);
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(Instituto.class.getName()).log(Level.SEVERE, null, ex);
        }
            
        
    }
    
    static ResultSet generaResultSet(String consulta){
         Statement stmt=null;
        ResultSet rset=null;
        try {
            stmt = conn.createStatement();
            rset = stmt.executeQuery(consulta);
            } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Error cargando el mapa","Error",JOptionPane.ERROR_MESSAGE);
        }
        return rset;
    }
    
    
    void ocultaColumnas(JTable tabla, int columna) {
        tabla.getColumnModel().getColumn(columna).setMaxWidth(0);
        tabla.getColumnModel().getColumn(columna).setMinWidth(0);
        tabla.getTableHeader().getColumnModel().getColumn(columna).setMaxWidth(0);
        tabla.getTableHeader().getColumnModel().getColumn(columna).setMinWidth(0);
    }
            
}
