create table COMUNIDADES
(
  NOMBRE VARCHAR2(200),
  CODIGO VARCHAR2(20) primary key
);
create table PROVINCIAS
(
 IDPROVINCIA INTEGER  primary key,
 PROVINCIA   VARCHAR2(150),
 COMUNIDAD 	 VARCHAR2(20)   
);

alter table PROVINCIAS
 add constraint FK_comunidad
  foreign key (COMUNIDAD)
  references COMUNIDADES(CODIGO);

CREATE TABLE MUNICIPIOS (
  IDPOBLACION 	INTEGER NOT NULL,
  IDPROVINCIA  	INTEGER  NOT NULL,
  POBLACION 	VARCHAR2(150) NOT NULL,
  POBLACIONSEO 	VARCHAR2(150) DEFAULT NULL,
  POSTAL 		INTEGER DEFAULT NULL,
  LATITUD 		NUMBER(9,6) DEFAULT NULL,
  LONGITUD 		NUMBER(9,6) DEFAULT NULL
) ;

alter table MUNICIPIOS
 add constraint FK_provincia
  foreign key (IDPROVINCIA)
  references PROVINCIAS(IDPROVINCIA);


prompt Loading COMUNIDADES...
insert into COMUNIDADES (NOMBRE, CODIGO)
values ('Canarias', 'CAN');
insert into COMUNIDADES (NOMBRE, CODIGO)
values ('Illes Balears', 'BAL');
insert into COMUNIDADES (NOMBRE, CODIGO)
values ('Galicia', 'GAL');
insert into COMUNIDADES (NOMBRE, CODIGO)
values ('La Rioja', 'LRJ');
insert into COMUNIDADES (NOMBRE, CODIGO)
values ('Principado de Asturias ', 'AST');
insert into COMUNIDADES (NOMBRE, CODIGO)
values ('Cantabria', 'CTB');
insert into COMUNIDADES (NOMBRE, CODIGO)
values ('PaÌs Vasco', 'PVC');
insert into COMUNIDADES (NOMBRE, CODIGO)
values ('Comunidad Foral de Navarra', 'NVR');
insert into COMUNIDADES (NOMBRE, CODIGO)
values ('AragÛn', 'ARA');
insert into COMUNIDADES (NOMBRE, CODIGO)
values ('CataluÒa', 'CAT');
insert into COMUNIDADES (NOMBRE, CODIGO)
values ('Castilla y LeÛn', 'CYL');
insert into COMUNIDADES (NOMBRE, CODIGO)
values ('Comunidad de Madrid', 'MAD');
insert into COMUNIDADES (NOMBRE, CODIGO)
values ('Comunitat Valenciana', 'VAL');
insert into COMUNIDADES (NOMBRE, CODIGO)
values ('RegiÛn de Murcia', 'MUR');
insert into COMUNIDADES (NOMBRE, CODIGO)
values ('Castilla - La Mancha', 'CLM');
insert into COMUNIDADES (NOMBRE, CODIGO)
values ('Extremadura', 'EXT');
insert into COMUNIDADES (NOMBRE, CODIGO)
values ('AndalucÌa', 'AND');
insert into COMUNIDADES (NOMBRE, CODIGO)
values ('Ciudad de Ceuta', 'CEU');
insert into COMUNIDADES (NOMBRE, CODIGO)
values ('Ciudad de Melilla', 'MEL');
commit;
prompt 19 records loaded

prompt Loading PROVINCIAS...
insert into provincias values(1, '¡lava', 'PVC');
insert into provincias values(2, 'CastellÛn', 'VAL');
insert into provincias values(3, 'LeÛn', 'CYL');
insert into provincias values(4, 'Salamanca', 'CYL');
insert into provincias values(5, 'Albacete', 'CLM');
insert into provincias values(6, 'Ceuta', 'CEU');
insert into provincias values(7, 'Lleida', 'CAT');
insert into provincias values(8, 'Segovia', 'CYL');
insert into provincias values(9, 'Alicante', 'VAL');
insert into provincias values(10, 'Ciudad Real', 'CLM');
insert into provincias values(11, 'Lugo', 'GAL');
insert into provincias values(12, 'Sevilla', 'AND');
insert into provincias values(13, 'AlmerÌa', 'AND');
insert into provincias values(14, 'CÛrdoba', 'AND');
insert into provincias values(15, 'Madrid', 'MAD');
insert into provincias values(16, 'Soria', 'CYL');
insert into provincias values(17, 'Asturias', 'AST');
insert into provincias values(18, 'A CoruÒa', 'GAL');
insert into provincias values(19, 'M·laga', 'AND');
insert into provincias values(20, 'Tarragona', 'CAT');
insert into provincias values(21, '¡vila', 'CYL');
insert into provincias values(22, 'Cuenca', 'CLM');
insert into provincias values(23, 'Melilla', 'MEL');
insert into provincias values(24, 'S.C. Tenerife', 'CAN');
insert into provincias values(25, 'Badajoz', 'EXT');
insert into provincias values(26, 'Girona', 'CAT');
insert into provincias values(27, 'Murcia', 'MUR');
insert into provincias values(28, 'Teruel', 'ARA');
insert into provincias values(29, 'Baleares', 'BAL');
insert into provincias values(30, 'Granada', 'AND');
insert into provincias values(31, 'Navarra', 'NVR');
insert into provincias values(32, 'Toledo', 'CLM');
insert into provincias values(33, 'Barcelona', 'CAT');
insert into provincias values(34, 'Guadalajara', 'CLM');
insert into provincias values(35, 'Ourense', 'GAL');
insert into provincias values(36, 'Valencia', 'VAL');
insert into provincias values(37, 'Burgos', 'CYL');
insert into provincias values(38, 'Guip˙zcoa', 'PVC');
insert into provincias values(39, 'Palencia', 'CYL');
insert into provincias values(40, 'Valladolid', 'CYL');
insert into provincias values(41, 'C·ceres', 'EXT');
insert into provincias values(42, 'Huelva', 'AND');
insert into provincias values(43, 'Las Palmas', 'CAN');
insert into provincias values(44, 'Vizcaya', 'PVC');
insert into provincias values(45, 'C·diz', 'AND');
insert into provincias values(46, 'Huesca', 'ARA');
insert into provincias values(47, 'Pontevedra', 'GAL');
insert into provincias values(48, 'Zamora', 'CYL');
insert into provincias values(49, 'Cantabria', 'CTB');
insert into provincias values(50, 'JaÈn', 'AND');
insert into provincias values(51, 'La Rioja', 'LRJ');
insert into provincias values(52, 'Zaragoza', 'ARA');

INSERT INTO MUNICIPIOS VALUES
(294, 13, 'Abla', 'abla', 04510, '37.143631', '-2.775700');INSERT INTO MUNICIPIOS VALUES
(295, 13, 'Abrucena', 'abrucena', 04520, '37.113466', '-2.837766');INSERT INTO MUNICIPIOS VALUES
(296, 13, 'Adra', 'adra', 04770, '36.747860', '-3.022442');INSERT INTO MUNICIPIOS VALUES
(297, 13, 'Alb·nchez', 'albanchez', 04857, '37.287233', '-2.181473');INSERT INTO MUNICIPIOS VALUES
(298, 13, 'Alboloduy', 'alboloduy', 04531, '37.033323', '-2.620068');INSERT INTO MUNICIPIOS VALUES
(299, 13, 'Albox', 'albox', 04800, '37.389391', '-2.144394');INSERT INTO MUNICIPIOS VALUES
(300, 13, 'Alcolea', 'alcolea', 04480, '36.974273', '-2.961245');INSERT INTO MUNICIPIOS VALUES
(301, 13, 'AlcÛntar', 'alcontar', 04897, '37.336479', '-2.596730');INSERT INTO MUNICIPIOS VALUES
(302, 13, 'Alcudia de Monteagud', 'alcudia-de-monteagud', 04276, '37.235829', '-2.266188');INSERT INTO MUNICIPIOS VALUES
(303, 13, 'Alhabia', 'alhabia', 04567, '36.989185', '-2.586937');INSERT INTO MUNICIPIOS VALUES
(304, 13, 'Alhama de AlmerÌa', 'alhama-de-almeria', 04400, '36.958988', '-2.571590');INSERT INTO MUNICIPIOS VALUES
(305, 13, 'Alic˙n', 'alicun', 04409, '36.966146', '-2.601185');INSERT INTO MUNICIPIOS VALUES
(306, 13, 'AlmerÌa', 'almeria', 04002, '36.837130', '-2.463179');INSERT INTO MUNICIPIOS VALUES
(307, 13, 'AlmÛcita', 'almocita', 04458, '37.003444', '-2.790356');INSERT INTO MUNICIPIOS VALUES
(308, 13, 'Alsodux', 'alsodux', 04568, '37.001867', '-2.594147');INSERT INTO MUNICIPIOS VALUES
(309, 13, 'Antas', 'antas', 04628, '37.244770', '-1.918710');INSERT INTO MUNICIPIOS VALUES
(310, 13, 'Arboleas', 'arboleas', 04660, '37.350168', '-2.074184');INSERT INTO MUNICIPIOS VALUES
(311, 13, 'ArmuÒa de Almanzora', 'armuna-de-almanzora', 04888, '37.351231', '-2.412450');INSERT INTO MUNICIPIOS VALUES
(312, 13, 'Bacares', 'bacares', 04889, '37.262131', '-2.453900');INSERT INTO MUNICIPIOS VALUES
(313, 13, 'Bay·rcal', 'bayarcal', 04479, '37.030331', '-2.995300');INSERT INTO MUNICIPIOS VALUES
(314, 13, 'Bayarque', 'bayarque', 04888, '37.331266', '-2.435875');INSERT INTO MUNICIPIOS VALUES
(315, 13, 'BÈdar', 'bedar', 04288, '37.190818', '-1.982689');INSERT INTO MUNICIPIOS VALUES
(316, 13, 'Beires', 'beires', 04458, '37.012765', '-2.790527');INSERT INTO MUNICIPIOS VALUES
(317, 13, 'Benahadux', 'benahadux', 04410, '36.925366', '-2.456732');INSERT INTO MUNICIPIOS VALUES
(318, 13, 'Benitagla', 'benitagla', 04276, '37.231012', '-2.239494');INSERT INTO MUNICIPIOS VALUES
(319, 13, 'BenizalÛn', 'benizalon', 04276, '37.211601', '-2.241554');INSERT INTO MUNICIPIOS VALUES
(320, 13, 'Bentarique', 'bentarique', 04569, '36.987128', '-2.619381');INSERT INTO MUNICIPIOS VALUES
(321, 13, 'Berja', 'berja', 04760, '36.845285', '-2.946396');INSERT INTO MUNICIPIOS VALUES
(322, 13, 'Canj·yar', 'canjayar', 04450, '37.009955', '-2.740402');INSERT INTO MUNICIPIOS VALUES
(323, 13, 'Cantoria', 'cantoria', 04850, '37.352829', '-2.192116');INSERT INTO MUNICIPIOS VALUES
(324, 13, 'Carboneras', 'carboneras', 04140, '36.994738', '-1.893768');INSERT INTO MUNICIPIOS VALUES
(325, 13, 'Castro de Filabres', 'castro-de-filabres', 04212, '37.184801', '-2.440681');INSERT INTO MUNICIPIOS VALUES
(326, 13, 'Chercos', 'chercos', 04859, '37.254478', '-2.267570');INSERT INTO MUNICIPIOS VALUES
(327, 13, 'Chirivel', 'chirivel', 04825, '37.595328', '-2.265587');INSERT INTO MUNICIPIOS VALUES
(328, 13, 'CÛbdar', 'cobdar', 04859, '37.261895', '-2.209625');INSERT INTO MUNICIPIOS VALUES
(329, 13, 'Cuevas del Almanzora', 'cuevas-del-almanzora', 04610, '37.291191', '-1.878110');INSERT INTO MUNICIPIOS VALUES
(330, 13, 'DalÌas', 'dalias', 04750, '36.820691', '-2.871895');INSERT INTO MUNICIPIOS VALUES
(331, 13, 'Ejido', 'ejido', 04700, '36.772701', '-2.817600');INSERT INTO MUNICIPIOS VALUES
(332, 13, 'Enix', 'enix', 04729, '36.877355', '-2.602043');INSERT INTO MUNICIPIOS VALUES
(333, 13, 'Felix', 'felix', 04728, '36.868292', '-2.657490');INSERT INTO MUNICIPIOS VALUES
(334, 13, 'Fines', 'fines', 04869, '37.358901', '-2.263012');INSERT INTO MUNICIPIOS VALUES
(335, 13, 'FiÒana', 'finana', 04500, '37.171397', '-2.840309');INSERT INTO MUNICIPIOS VALUES
(336, 13, 'FondÛn', 'fondon', 04460, '36.980752', '-2.857132');INSERT INTO MUNICIPIOS VALUES
(337, 13, 'G·dor', 'gador', 04560, '36.953801', '-2.492695');INSERT INTO MUNICIPIOS VALUES
(338, 13, 'Gallardos', 'gallardos', 04280, '37.170371', '-1.940632');INSERT INTO MUNICIPIOS VALUES
(339, 13, 'Garrucha', 'garrucha', 04630, '37.179125', '-1.822186');INSERT INTO MUNICIPIOS VALUES
(340, 13, 'GÈrgal', 'gergal', 04550, '37.117432', '-2.536520');INSERT INTO MUNICIPIOS VALUES
(341, 13, 'HuÈcija', 'huecija', 04409, '36.967388', '-2.608100');INSERT INTO MUNICIPIOS VALUES
(342, 13, 'HuÈrcal de AlmerÌa', 'huercal-de-almeria', 04230, '36.879829', '-2.437040');INSERT INTO MUNICIPIOS VALUES
(343, 13, 'HuÈrcal-Overa', 'huercal-overa', 04600, '37.390754', '-1.944923');INSERT INTO MUNICIPIOS VALUES
(344, 13, 'Illar', 'illar', 04431, '36.985140', '-2.638779');INSERT INTO MUNICIPIOS VALUES
(345, 13, 'InstinciÛn', 'instincion', 04430, '36.993110', '-2.660022');INSERT INTO MUNICIPIOS VALUES
(346, 13, 'Laroya', 'laroya', 04868, '37.296520', '-2.329445');INSERT INTO MUNICIPIOS VALUES
(347, 13, 'L·ujar de Andarax', 'laujar-de-andarax', 04470, '36.992989', '-2.893890');INSERT INTO MUNICIPIOS VALUES
(348, 13, 'LÌjar', 'lijar', 04859, '37.295154', '-2.219753');INSERT INTO MUNICIPIOS VALUES
(349, 13, 'LubrÌn', 'lubrin', 04271, '37.215429', '-2.064743');INSERT INTO MUNICIPIOS VALUES
(350, 13, 'Lucainena de las Torres', 'lucainena-de-las-torres', 04210, '37.041420', '-2.199680');INSERT INTO MUNICIPIOS VALUES
(351, 13, 'L˙car', 'lucar', 04887, '37.398937', '-2.425919');INSERT INTO MUNICIPIOS VALUES
(352, 13, 'Macael', 'macael', 04867, '37.332085', '-2.304726');INSERT INTO MUNICIPIOS VALUES
(353, 13, 'MarÌa', 'maria', 04838, '37.711122', '-2.166023');INSERT INTO MUNICIPIOS VALUES
(354, 13, 'Moj·car', 'mojacar', 04638, '37.139656', '-1.850166');INSERT INTO MUNICIPIOS VALUES
(355, 13, 'Mojonera', 'mojonera', 04745, '36.753877', '-2.686844');INSERT INTO MUNICIPIOS VALUES
(356, 13, 'Nacimiento', 'nacimiento', 04540, '37.104890', '-2.648048');INSERT INTO MUNICIPIOS VALUES
(357, 13, 'NÌjar', 'nijar', 04100, '36.966078', '-2.206192');INSERT INTO MUNICIPIOS VALUES
(358, 13, 'Ohanes', 'ohanes', 04459, '37.037297', '-2.745037');INSERT INTO MUNICIPIOS VALUES
(359, 13, 'Olula de Castro', 'olula-de-castro', 04212, '37.175774', '-2.476730');INSERT INTO MUNICIPIOS VALUES
(360, 13, 'Olula del RÌo', 'olula-del-rio', 04860, '37.352352', '-2.298031');INSERT INTO MUNICIPIOS VALUES
(361, 13, 'Oria', 'oria', 04810, '37.484530', '-2.293739');INSERT INTO MUNICIPIOS VALUES
(362, 13, 'Padules', 'padules', 04458, '36.998303', '-2.773705');INSERT INTO MUNICIPIOS VALUES
(363, 13, 'Partaloa', 'partaloa', 04810, '37.405756', '-2.226105');INSERT INTO MUNICIPIOS VALUES
(364, 13, 'Paterna del RÌo', 'paterna-del-rio', 04479, '37.020783', '-2.953949');INSERT INTO MUNICIPIOS VALUES
(365, 13, 'Pechina', 'pechina', 04250, '36.916274', '-2.441368');INSERT INTO MUNICIPIOS VALUES
(366, 13, 'PulpÌ', 'pulpi', 04640, '37.412028', '-1.745453');INSERT INTO MUNICIPIOS VALUES
(367, 13, 'Purchena', 'purchena', 04870, '37.348394', '-2.361546');INSERT INTO MUNICIPIOS VALUES
(368, 13, 'R·gol', 'ragol', 04440, '36.995835', '-2.680664');INSERT INTO MUNICIPIOS VALUES
(369, 13, 'Rioja', 'rioja', 04260, '36.943924', '-2.462482');INSERT INTO MUNICIPIOS VALUES
(370, 13, 'Roquetas de Mar', 'roquetas-de-mar', 04740, '36.764673', '-2.614403');INSERT INTO MUNICIPIOS VALUES
(371, 13, 'Santa Cruz de Marchena', 'santa-cruz-de-marchena', 04568, '37.016479', '-2.603150');INSERT INTO MUNICIPIOS VALUES
(372, 13, 'Santa Fe de Mond˙jar', 'santa-fe-de-mondujar', 04420, '36.973701', '-2.532740');INSERT INTO MUNICIPIOS VALUES
(373, 13, 'SenÈs', 'senes', 04213, '37.204492', '-2.347298');INSERT INTO MUNICIPIOS VALUES
(374, 13, 'SerÛn', 'seron', 04890, '37.343618', '-2.508144');INSERT INTO MUNICIPIOS VALUES
(375, 13, 'Sierro', 'sierro', 04878, '37.323076', '-2.398796');INSERT INTO MUNICIPIOS VALUES
(376, 13, 'SomontÌn', 'somontin', 04877, '37.389663', '-2.389183');INSERT INTO MUNICIPIOS VALUES
(377, 13, 'Sorbas', 'sorbas', 04270, '37.097634', '-2.125854');INSERT INTO MUNICIPIOS VALUES
(378, 13, 'SuflÌ', 'sufli', 04878, '37.338159', '-2.389011');INSERT INTO MUNICIPIOS VALUES
(379, 13, 'Tabernas', 'tabernas', 04200, '37.049012', '-2.392616');INSERT INTO MUNICIPIOS VALUES
(380, 13, 'Taberno', 'taberno', 04692, '37.479490', '-2.057877');INSERT INTO MUNICIPIOS VALUES
(381, 13, 'Tahal', 'tahal', 04275, '37.228489', '-2.288060');INSERT INTO MUNICIPIOS VALUES
(382, 13, 'Terque', 'terque', 04569, '36.983769', '-2.596893');INSERT INTO MUNICIPIOS VALUES
(383, 13, 'TÌjola', 'tijola', 04880, '37.346006', '-2.438278');INSERT INTO MUNICIPIOS VALUES
(384, 13, 'Tres Villas', 'tres-villas', 04530, '37.133532', '-2.699804');INSERT INTO MUNICIPIOS VALUES
(385, 13, 'Turre', 'turre', 04639, '37.151971', '-1.894112');INSERT INTO MUNICIPIOS VALUES
(386, 13, 'Turrillas', 'turrillas', 04211, '37.029760', '-2.264385');INSERT INTO MUNICIPIOS VALUES
(387, 13, 'Uleila del Campo', 'uleila-del-campo', 04279, '37.185484', '-2.203801');INSERT INTO MUNICIPIOS VALUES
(388, 13, 'Urr·cal', 'urracal', 04879, '37.397267', '-2.364721');INSERT INTO MUNICIPIOS VALUES
(389, 13, 'Velefique', 'velefique', 04212, '37.193279', '-2.403603');INSERT INTO MUNICIPIOS VALUES
(390, 13, 'VÈlez-Blanco', 'velez-blanco', 04830, '37.691020', '-2.095985');INSERT INTO MUNICIPIOS VALUES
(391, 13, 'VÈlez-Rubio', 'velez-rubio', 04820, '37.647675', '-2.072983');INSERT INTO MUNICIPIOS VALUES
(392, 13, 'Vera', 'vera', 04620, '37.246523', '-1.868019');INSERT INTO MUNICIPIOS VALUES
(393, 13, 'Viator', 'viator', 04240, '36.889609', '-2.426519');INSERT INTO MUNICIPIOS VALUES
(394, 13, 'VÌcar', 'vicar', 04738, '36.831478', '-2.642212');INSERT INTO MUNICIPIOS VALUES
(395, 13, 'Zurgena', 'zurgena', 04650, '37.342731', '-2.039680');

INSERT INTO MUNICIPIOS VALUES
(1783, 45, 'Alcal· de los Gazules', 'alcala-de-los-gazules', 11180, '36.461951', '-5.723019');INSERT INTO MUNICIPIOS VALUES
(1784, 45, 'Alcal· del Valle', 'alcala-del-valle', 11693, '36.904401', '-5.171471');INSERT INTO MUNICIPIOS VALUES
(1785, 45, 'Algar', 'algar', 07713, '37.648029', '-0.867800');INSERT INTO MUNICIPIOS VALUES
(1786, 45, 'Algeciras', 'algeciras', 11204, '36.127602', '-5.452650');INSERT INTO MUNICIPIOS VALUES
(1787, 45, 'Algodonales', 'algodonales', 11680, '36.880878', '-5.405060');INSERT INTO MUNICIPIOS VALUES
(1788, 45, 'Arcos de la Frontera', 'arcos-de-la-frontera', 11630, '36.751195', '-5.811596');INSERT INTO MUNICIPIOS VALUES
(1789, 45, 'Barbate', 'barbate', 11160, '36.188080', '-5.923110');INSERT INTO MUNICIPIOS VALUES
(1790, 45, 'Barrios', 'barrios', 11370, '36.186310', '-5.494650');INSERT INTO MUNICIPIOS VALUES
(1791, 45, 'Benalup-Casas Viejas', 'benalup-casas-viejas', 11190, '36.344051', '-5.810010');INSERT INTO MUNICIPIOS VALUES
(1792, 45, 'Benaocaz', 'benaocaz', 11612, '36.701141', '-5.422520');INSERT INTO MUNICIPIOS VALUES
(1793, 45, 'Bornos', 'bornos', 11640, '36.814542', '-5.743060');INSERT INTO MUNICIPIOS VALUES
(1794, 45, 'Bosque', 'bosque', 11670, '36.757487', '-5.505352');INSERT INTO MUNICIPIOS VALUES
(1795, 45, 'C·diz', 'cadiz', 11005, '36.530261', '-6.292462');INSERT INTO MUNICIPIOS VALUES
(1796, 45, 'Castellar de la Frontera', 'castellar-de-la-frontera', 11350, '36.285554', '-5.419393');INSERT INTO MUNICIPIOS VALUES
(1797, 45, 'Chiclana de la Frontera', 'chiclana-de-la-frontera', 11130, '36.420039', '-6.148567');INSERT INTO MUNICIPIOS VALUES
(1798, 45, 'Chipiona', 'chipiona', 11550, '36.740707', '-6.435628');INSERT INTO MUNICIPIOS VALUES
(1799, 45, 'Conil de la Frontera', 'conil-de-la-frontera', 11140, '36.277493', '-6.088486');INSERT INTO MUNICIPIOS VALUES
(1800, 45, 'Espera', 'espera', 11648, '36.873476', '-5.806231');INSERT INTO MUNICIPIOS VALUES
(1801, 45, 'Gastor', 'gastor', 11687, '36.855450', '-5.321417');INSERT INTO MUNICIPIOS VALUES
(1802, 45, 'Grazalema', 'grazalema', 11610, '36.758175', '-5.365062');INSERT INTO MUNICIPIOS VALUES
(1803, 45, 'Jerez de la Frontera', 'jerez-de-la-frontera', 11403, '36.685405', '-6.137431');INSERT INTO MUNICIPIOS VALUES
(1804, 45, 'Jimena de la Frontera', 'jimena-de-la-frontera', 11330, '36.434438', '-5.453124');INSERT INTO MUNICIPIOS VALUES
(1805, 45, 'LÌnea de la ConcepciÛn', 'linea-de-la-concepcion', 11300, '36.160365', '-5.348153');INSERT INTO MUNICIPIOS VALUES
(1806, 45, 'Medina-Sidonia', 'medina-sidonia', 11170, '36.467888', '-5.928497');INSERT INTO MUNICIPIOS VALUES
(1807, 45, 'Olvera', 'olvera', 11690, '36.935417', '-5.267644');INSERT INTO MUNICIPIOS VALUES
(1808, 45, 'Paterna de Rivera', 'paterna-de-rivera', 11178, '36.523570', '-5.865712');INSERT INTO MUNICIPIOS VALUES
(1809, 45, 'Prado del Rey', 'prado-del-rey', 11660, '36.789972', '-5.555863');INSERT INTO MUNICIPIOS VALUES
(1810, 45, 'Puerto de Santa MarÌa', 'puerto-de-santa-maria', 11500, '36.597820', '-6.227231');INSERT INTO MUNICIPIOS VALUES
(1811, 45, 'Puerto Real', 'puerto-real', 11510, '36.529536', '-6.191483');INSERT INTO MUNICIPIOS VALUES
(1812, 45, 'Puerto Serrano', 'puerto-serrano', 11659, '36.922724', '-5.544405');INSERT INTO MUNICIPIOS VALUES
(1813, 45, 'Rota', 'rota', 11520, '36.617215', '-6.357908');INSERT INTO MUNICIPIOS VALUES
(1814, 45, 'San Fernando', 'san-fernando', 11100, '36.465092', '-6.196804');INSERT INTO MUNICIPIOS VALUES
(1815, 45, 'San JosÈ del Valle', 'san-josedel-valle', 11580, '36.606123', '-5.798120');INSERT INTO MUNICIPIOS VALUES
(1816, 45, 'San Roque', 'san-roque', 11360, '36.210000', '-5.384459');INSERT INTO MUNICIPIOS VALUES
(1817, 45, 'Sanl˙car de Barrameda', 'sanlucar-de-barrameda', 11540, '36.778492', '-6.354089');INSERT INTO MUNICIPIOS VALUES
(1818, 45, 'Setenil de las Bodegas', 'setenil-de-las-bodegas', 11692, '36.863965', '-5.179839');INSERT INTO MUNICIPIOS VALUES
(1819, 45, 'Tarifa', 'tarifa', 11380, '36.014394', '-5.603714');INSERT INTO MUNICIPIOS VALUES
(1820, 45, 'Torre Alh·quime', 'torre-alhaquime', 11691, '36.916000', '-5.234256');INSERT INTO MUNICIPIOS VALUES
(1821, 45, 'Trebujena', 'trebujena', 11560, '36.869699', '-6.176763');INSERT INTO MUNICIPIOS VALUES
(1822, 45, 'Ubrique', 'ubrique', 11600, '36.678125', '-5.446343');INSERT INTO MUNICIPIOS VALUES
(1823, 45, 'Vejer de la Frontera', 'vejer-de-la-frontera', 11150, '36.251610', '-5.963173');INSERT INTO MUNICIPIOS VALUES
(1824, 45, 'Villaluenga del Rosario', 'villaluenga-del-rosario', 11611, '36.696778', '-5.388794');INSERT INTO MUNICIPIOS VALUES
(1825, 45, 'VillamartÌn', 'villamartin', 11650, '36.861734', '-5.641780');INSERT INTO MUNICIPIOS VALUES
(1826, 45, 'Zahara', 'zahara', 11688, '36.840511', '-5.389652');
INSERT INTO MUNICIPIOS VALUES
(2067, 14, 'Adamuz', 'adamuz', 14430, '38.027809', '-4.524660');INSERT INTO MUNICIPIOS VALUES
(2068, 14, 'Aguilar de la Frontera', 'aguilar-de-la-frontera', 14920, '37.514511', '-4.657650');INSERT INTO MUNICIPIOS VALUES
(2069, 14, 'Alcaracejos', 'alcaracejos', 14480, '38.389809', '-4.968530');INSERT INTO MUNICIPIOS VALUES
(2070, 14, 'Almedinilla', 'almedinilla', 14812, '37.440208', '-4.094880');INSERT INTO MUNICIPIOS VALUES
(2071, 14, 'AlmodÛvar del RÌo', 'almodovar-del-rio', 14720, '37.809380', '-5.019820');INSERT INTO MUNICIPIOS VALUES
(2072, 14, 'AÒora', 'anora', 14450, '38.412552', '-4.895070');INSERT INTO MUNICIPIOS VALUES
(2073, 14, 'Baena', 'baena', 14850, '37.617001', '-4.323960');INSERT INTO MUNICIPIOS VALUES
(2074, 14, 'Belalc·zar', 'belalcazar', 14280, '38.578899', '-5.162640');INSERT INTO MUNICIPIOS VALUES
(2075, 14, 'Belmez', 'belmez', 14240, '38.270802', '-5.207520');INSERT INTO MUNICIPIOS VALUES
(2076, 14, 'BenamejÌ', 'benameji', 14910, '37.272060', '-4.541280');INSERT INTO MUNICIPIOS VALUES
(2077, 14, 'Bl·zquez', 'blazquez', 14208, '38.406590', '-5.438880');INSERT INTO MUNICIPIOS VALUES
(2078, 14, 'Bujalance', 'bujalance', 14650, '37.896192', '-4.383545');INSERT INTO MUNICIPIOS VALUES
(2079, 14, 'Cabra', 'cabra', 14940, '37.472580', '-4.446730');INSERT INTO MUNICIPIOS VALUES
(2080, 14, 'CaÒete de las Torres', 'canete-de-las-torres', 14660, '37.867390', '-4.318470');INSERT INTO MUNICIPIOS VALUES
(2081, 14, 'Carcabuey', 'carcabuey', 14810, '37.442581', '-4.272690');INSERT INTO MUNICIPIOS VALUES
(2082, 14, 'CardeÒa', 'cardena', 14445, '38.273918', '-4.325240');INSERT INTO MUNICIPIOS VALUES
(2083, 14, 'Carlota', 'carlota', 14100, '37.673461', '-4.932346');INSERT INTO MUNICIPIOS VALUES
(2084, 14, 'Carpio', 'carpio', 14620, '41.212780', '-5.112390');INSERT INTO MUNICIPIOS VALUES
(2085, 14, 'Castro del RÌo', 'castro-del-rio', 14840, '37.692310', '-4.476590');INSERT INTO MUNICIPIOS VALUES
(2086, 14, 'Conquista', 'conquista', 14448, '38.408608', '-4.500790');INSERT INTO MUNICIPIOS VALUES
(2087, 14, 'CÛrdoba', 'cordoba', 14001, '37.877941', '-4.778400');INSERT INTO MUNICIPIOS VALUES
(2088, 14, 'DoÒa MencÌa', 'dona-mencia', 14860, '37.554611', '-4.357770');INSERT INTO MUNICIPIOS VALUES
(2089, 14, 'Dos Torres', 'dos-torres', 14460, '38.445202', '-4.899130');INSERT INTO MUNICIPIOS VALUES
(2090, 14, 'Encinas Reales', 'encinas-reales', 14913, '37.276329', '-4.487170');INSERT INTO MUNICIPIOS VALUES
(2091, 14, 'Espejo', 'espejo', 14830, '37.682801', '-4.552288');INSERT INTO MUNICIPIOS VALUES
(2092, 14, 'Espiel', 'espiel', 14220, '38.188431', '-5.018190');INSERT INTO MUNICIPIOS VALUES
(2093, 14, 'Fern·n-N˙Òez', 'fernan-nunez', 14520, '37.672476', '-4.724293');INSERT INTO MUNICIPIOS VALUES
(2094, 14, 'Fuente la Lancha', 'fuente-la-lancha', 14260, '38.422668', '-5.047210');INSERT INTO MUNICIPIOS VALUES
(2095, 14, 'Fuente Obejuna', 'fuente-obejuna', 14290, '38.269329', '-5.420050');INSERT INTO MUNICIPIOS VALUES
(2096, 14, 'Fuente Palmera', 'fuente-palmera', 14120, '37.703541', '-5.104030');INSERT INTO MUNICIPIOS VALUES
(2097, 14, 'Fuente-TÛjar', 'fuente-tojar', 14815, '37.512245', '-4.146652');INSERT INTO MUNICIPIOS VALUES
(2098, 14, 'Granjuela', 'granjuela', 14207, '38.371338', '-5.351543');INSERT INTO MUNICIPIOS VALUES
(2099, 14, 'Guadalc·zar', 'guadalcazar', 14130, '37.758572', '-4.941980');INSERT INTO MUNICIPIOS VALUES
(2100, 14, 'Guijo', 'guijo', 14413, '38.496170', '-4.782940');INSERT INTO MUNICIPIOS VALUES
(2101, 14, 'Hinojosa del Duque', 'hinojosa-del-duque', 14270, '38.498268', '-5.140350');INSERT INTO MUNICIPIOS VALUES
(2102, 14, 'Hornachuelos', 'hornachuelos', 14740, '37.830921', '-5.242800');INSERT INTO MUNICIPIOS VALUES
(2103, 14, 'Izn·jar', 'iznajar', 14970, '37.257912', '-4.305180');INSERT INTO MUNICIPIOS VALUES
(2104, 14, 'Lucena', 'lucena', 14900, '37.412437', '-4.485168');INSERT INTO MUNICIPIOS VALUES
(2105, 14, 'Luque', 'luque', 14880, '37.556660', '-4.283020');INSERT INTO MUNICIPIOS VALUES
(2106, 14, 'Montalb·n de CÛrdoba', 'montalban-de-cordoba', 14548, '37.584339', '-4.748710');INSERT INTO MUNICIPIOS VALUES
(2107, 14, 'Montemayor', 'montemayor', 14530, '37.649985', '-4.700775');INSERT INTO MUNICIPIOS VALUES
(2108, 14, 'Montilla', 'montilla', 14550, '37.581779', '-4.640460');INSERT INTO MUNICIPIOS VALUES
(2109, 14, 'Montoro', 'montoro', 14600, '38.026039', '-4.381600');INSERT INTO MUNICIPIOS VALUES
(2110, 14, 'Monturque', 'monturque', 14930, '37.471760', '-4.579930');INSERT INTO MUNICIPIOS VALUES
(2111, 14, 'Moriles', 'moriles', 14510, '37.435349', '-4.608230');INSERT INTO MUNICIPIOS VALUES
(2112, 14, 'Nueva Carteya', 'nueva-carteya', 14857, '37.587059', '-4.469050');INSERT INTO MUNICIPIOS VALUES
(2113, 14, 'Obejo', 'obejo', 14310, '38.131802', '-4.800070');INSERT INTO MUNICIPIOS VALUES
(2114, 14, 'Palenciana', 'palenciana', 14914, '37.247139', '-4.582440');INSERT INTO MUNICIPIOS VALUES
(2115, 14, 'Palma del RÌo', 'palma-del-rio', 14700, '37.700420', '-5.279600');INSERT INTO MUNICIPIOS VALUES
(2116, 14, 'Pedro Abad', 'pedro-abad', 14630, '37.965012', '-4.459420');INSERT INTO MUNICIPIOS VALUES
(2117, 14, 'Pedroche', 'pedroche', 14412, '38.429352', '-4.762380');INSERT INTO MUNICIPIOS VALUES
(2118, 14, 'PeÒarroya-Pueblonuevo', 'penarroya-pueblonuevo', 14200, '38.300701', '-5.268250');INSERT INTO MUNICIPIOS VALUES
(2119, 14, 'Posadas', 'posadas', 14730, '37.802090', '-5.108700');INSERT INTO MUNICIPIOS VALUES
(2120, 14, 'Pozoblanco', 'pozoblanco', 14400, '38.381039', '-4.849230');INSERT INTO MUNICIPIOS VALUES
(2121, 14, 'Priego de CÛrdoba', 'priego-de-cordoba', 14800, '37.441368', '-4.196300');INSERT INTO MUNICIPIOS VALUES
(2122, 14, 'Puente Genil', 'puente-genil', 14500, '37.390911', '-4.777950');INSERT INTO MUNICIPIOS VALUES
(2123, 14, 'Rambla', 'rambla', 14540, '37.608112', '-4.739571');INSERT INTO MUNICIPIOS VALUES
(2124, 14, 'Rute', 'rute', 14960, '37.327629', '-4.364340');INSERT INTO MUNICIPIOS VALUES
(2125, 14, 'San Sebasti·n de los Ballesteros', 'san-sebastian-de-los-ballesteros', 14150, '37.651859', '-4.826520');INSERT INTO MUNICIPIOS VALUES
(2126, 14, 'Santa Eufemia', 'santa-eufemia', 14491, '38.598671', '-4.905910');INSERT INTO MUNICIPIOS VALUES
(2127, 14, 'Santaella', 'santaella', 14546, '37.563320', '-4.840760');INSERT INTO MUNICIPIOS VALUES
(2128, 14, 'Torrecampo', 'torrecampo', 14410, '38.476768', '-4.678330');INSERT INTO MUNICIPIOS VALUES
(2129, 14, 'Valenzuela', 'valenzuela', 14670, '37.774582', '-4.219437');INSERT INTO MUNICIPIOS VALUES
(2130, 14, 'Valsequillo', 'valsequillo', 14206, '38.405043', '-5.352402');INSERT INTO MUNICIPIOS VALUES
(2131, 14, 'Victoria', 'victoria', 14140, '37.681511', '-4.852180');INSERT INTO MUNICIPIOS VALUES
(2132, 14, 'Villa del RÌo', 'villa-del-rio', 14640, '37.982910', '-4.297080');INSERT INTO MUNICIPIOS VALUES
(2133, 14, 'Villafranca de CÛrdoba', 'villafranca-de-cordoba', 14420, '37.964321', '-4.543440');INSERT INTO MUNICIPIOS VALUES
(2134, 14, 'Villaharta', 'villaharta', 14210, '38.139542', '-4.901750');INSERT INTO MUNICIPIOS VALUES
(2135, 14, 'Villanueva de CÛrdoba', 'villanueva-de-cordoba', 14440, '38.322109', '-4.621980');INSERT INTO MUNICIPIOS VALUES
(2136, 14, 'Villanueva del Duque', 'villanueva-del-duque', 14250, '38.395790', '-4.999310');INSERT INTO MUNICIPIOS VALUES
(2137, 14, 'Villanueva del Rey', 'villanueva-del-rey', 14230, '38.199821', '-5.151570');INSERT INTO MUNICIPIOS VALUES
(2138, 14, 'Villaralto', 'villaralto', 14490, '38.455540', '-4.983930');INSERT INTO MUNICIPIOS VALUES
(2139, 14, 'Villaviciosa de CÛrdoba', 'villaviciosa-de-cordoba', 14300, '38.076118', '-5.014310');INSERT INTO MUNICIPIOS VALUES
(2140, 14, 'Viso', 'viso', 14470, '38.482889', '-4.953461');INSERT INTO MUNICIPIOS VALUES
(2141, 14, 'Zuheros', 'zuheros', 14870, '37.544800', '-4.314780');
INSERT INTO MUNICIPIOS VALUES
(2699, 30, 'AgrÛn', 'agron', 18132, '37.030640', '-3.830479');
INSERT INTO MUNICIPIOS VALUES
(2700, 30, 'Alamedilla', 'alamedilla-granada', 18520, '37.582999', '-3.244756');INSERT INTO MUNICIPIOS VALUES
(2701, 30, 'Albolote', 'albolote', 18220, '37.233285', '-3.658544');INSERT INTO MUNICIPIOS VALUES
(2702, 30, 'AlbondÛn', 'albondon', 18708, '36.826189', '-3.212654');INSERT INTO MUNICIPIOS VALUES
(2703, 30, 'AlbuÒ·n', 'albunan', 18518, '37.227116', '-3.133163');INSERT INTO MUNICIPIOS VALUES
(2704, 30, 'AlbuÒol', 'albunol', 18700, '36.791075', '-3.204024');INSERT INTO MUNICIPIOS VALUES
(2705, 30, 'AlbuÒuelas', 'albunuelas', 18659, '36.928990', '-3.627644');INSERT INTO MUNICIPIOS VALUES
(2706, 30, 'Aldeire', 'aldeire', 18514, '37.164034', '-3.072167');INSERT INTO MUNICIPIOS VALUES
(2707, 30, 'Alfacar', 'alfacar', 18170, '37.239537', '-3.565332');INSERT INTO MUNICIPIOS VALUES
(2708, 30, 'Algarinejo', 'algarinejo', 18280, '37.327123', '-4.155269');INSERT INTO MUNICIPIOS VALUES
(2709, 30, 'Alhama de Granada', 'alhama-de-granada', 18120, '37.005650', '-3.990989');INSERT INTO MUNICIPIOS VALUES
(2710, 30, 'AlhendÌn', 'alhendin', 18620, '37.107390', '-3.641524');INSERT INTO MUNICIPIOS VALUES
(2711, 30, 'Alic˙n de Ortega', 'alicun-de-ortega', 18538, '37.609750', '-3.137794');INSERT INTO MUNICIPIOS VALUES
(2712, 30, 'AlmegÌjar', 'almegijar', 18438, '36.902354', '-3.302416');INSERT INTO MUNICIPIOS VALUES
(2713, 30, 'AlmuÒÈcar', 'almunecar', 18690, '36.736745', '-3.688269');INSERT INTO MUNICIPIOS VALUES
(2714, 30, 'Alpujarra de la Sierra', 'alpujarra-de-la-sierra', 18450, '36.984260', '-3.153954');INSERT INTO MUNICIPIOS VALUES
(2715, 30, 'Alquife', 'alquife', 18518, '37.178255', '-3.115419');INSERT INTO MUNICIPIOS VALUES
(2716, 30, 'Arenas del Rey', 'arenas-del-rey', 18126, '36.959940', '-3.892249');INSERT INTO MUNICIPIOS VALUES
(2717, 30, 'Armilla', 'armilla', 18100, '37.145973', '-3.623358');INSERT INTO MUNICIPIOS VALUES
(2718, 30, 'Atarfe', 'atarfe', 18230, '37.222876', '-3.690316');INSERT INTO MUNICIPIOS VALUES
(2719, 30, 'Baza', 'baza', 18800, '37.493005', '-2.770409');INSERT INTO MUNICIPIOS VALUES
(2720, 30, 'Beas de Granada', 'beas-de-granada', 18184, '37.221505', '-3.481819');INSERT INTO MUNICIPIOS VALUES
(2721, 30, 'Beas de Guadix', 'beas-de-guadix', 18516, '37.277244', '-3.205949');INSERT INTO MUNICIPIOS VALUES
(2722, 30, 'Benal˙a', 'benalua', 18510, '37.350271', '-3.168011');INSERT INTO MUNICIPIOS VALUES
(2723, 30, 'Benal˙a de las Villas', 'benalua-de-las-villas', 18566, '37.430120', '-3.683224');INSERT INTO MUNICIPIOS VALUES
(2724, 30, 'Benamaurel', 'benamaurel', 18817, '37.610060', '-2.702659');INSERT INTO MUNICIPIOS VALUES
(2725, 30, 'BÈrchules', 'berchules', 18451, '36.974825', '-3.190034');INSERT INTO MUNICIPIOS VALUES
(2726, 30, 'BubiÛn', 'bubion', 18412, '36.949017', '-3.356999');INSERT INTO MUNICIPIOS VALUES
(2727, 30, 'BusquÌstar', 'busquistar', 18416, '36.936807', '-3.295898');INSERT INTO MUNICIPIOS VALUES
(2728, 30, 'CacÌn', 'cacin', 18129, '37.060383', '-3.917141');INSERT INTO MUNICIPIOS VALUES
(2729, 30, 'C·diar', 'cadiar', 18440, '36.947011', '-3.180456');INSERT INTO MUNICIPIOS VALUES
(2730, 30, 'C·jar', 'cajar', 18199, '37.134336', '-3.570149');INSERT INTO MUNICIPIOS VALUES
(2731, 30, 'Calahorra', 'calahorra', 18512, '37.182202', '-3.065014');INSERT INTO MUNICIPIOS VALUES
(2732, 30, 'Calicasas', 'calicasas', 18290, '37.273472', '-3.617892');INSERT INTO MUNICIPIOS VALUES
(2733, 30, 'CampotÈjar', 'campotejar', 18565, '37.481295', '-3.614717');INSERT INTO MUNICIPIOS VALUES
(2734, 30, 'Caniles', 'caniles', 18810, '37.437248', '-2.722206');INSERT INTO MUNICIPIOS VALUES
(2735, 30, 'C·Òar', 'canar', 18418, '36.926773', '-3.428121');INSERT INTO MUNICIPIOS VALUES
(2736, 30, 'Capileira', 'capileira', 18413, '36.961072', '-3.359842');INSERT INTO MUNICIPIOS VALUES
(2737, 30, 'Carataunas', 'carataunas', 18410, '36.923067', '-3.407307');INSERT INTO MUNICIPIOS VALUES
(2738, 30, 'C·staras', 'castaras', 18439, '36.931815', '-3.253584');INSERT INTO MUNICIPIOS VALUES
(2739, 30, 'CastillÈjar', 'castillejar', 18818, '37.715331', '-2.642663');INSERT INTO MUNICIPIOS VALUES
(2740, 30, 'Castril', 'castril', 18816, '37.796628', '-2.780056');INSERT INTO MUNICIPIOS VALUES
(2741, 30, 'Cenes de la Vega', 'cenes-de-la-vega', 18190, '37.159872', '-3.536739');INSERT INTO MUNICIPIOS VALUES
(2742, 30, 'Chauchina', 'chauchina', 18330, '37.201791', '-3.772688');INSERT INTO MUNICIPIOS VALUES
(2743, 30, 'Chimeneas', 'chimeneas', 18329, '37.131582', '-3.823671');INSERT INTO MUNICIPIOS VALUES
(2744, 30, 'Churriana de la Vega', 'churriana-de-la-vega', 18194, '37.148345', '-3.645401');INSERT INTO MUNICIPIOS VALUES
(2745, 30, 'Cijuela', 'cijuela', 18339, '37.200116', '-3.811011');INSERT INTO MUNICIPIOS VALUES
(2746, 30, 'Cogollos de Guadix', 'cogollos-de-guadix', 18518, '37.225544', '-3.159943');INSERT INTO MUNICIPIOS VALUES
(2747, 30, 'Cogollos de la Vega', 'cogollos-de-la-vega', 18211, '37.274531', '-3.572917');INSERT INTO MUNICIPIOS VALUES
(2748, 30, 'Colomera', 'colomera', 18564, '37.372272', '-3.713679');INSERT INTO MUNICIPIOS VALUES
(2749, 30, 'Cortes de Baza', 'cortes-de-baza', 18814, '37.655320', '-2.769842');INSERT INTO MUNICIPIOS VALUES
(2750, 30, 'Cortes y Graena', 'cortes-y-graena', 18517, '37.304030', '-3.218780');INSERT INTO MUNICIPIOS VALUES
(2751, 30, 'Cuevas del Campo', 'cuevas-del-campo', 18813, '37.609064', '-2.930603');INSERT INTO MUNICIPIOS VALUES
(2752, 30, 'C˙llar', 'cullar', 18850, '37.583766', '-2.576509');INSERT INTO MUNICIPIOS VALUES
(2753, 30, 'C˙llar Vega', 'cullar-vega', 18195, '37.153373', '-3.670678');INSERT INTO MUNICIPIOS VALUES
(2754, 30, 'Darro', 'darro', 18181, '37.350134', '-3.292379');INSERT INTO MUNICIPIOS VALUES
(2755, 30, 'Dehesas de Guadix', 'dehesas-de-guadix', 18538, '37.589207', '-3.102264');INSERT INTO MUNICIPIOS VALUES
(2756, 30, 'Deifontes', 'deifontes', 18570, '37.325397', '-3.594546');INSERT INTO MUNICIPIOS VALUES
(2757, 30, 'Diezma', 'diezma', 18180, '37.321199', '-3.332505');INSERT INTO MUNICIPIOS VALUES
(2758, 30, 'DÌlar', 'dilar', 18152, '37.075244', '-3.601842');INSERT INTO MUNICIPIOS VALUES
(2759, 30, 'DÛlar', 'dolar', 18512, '37.180322', '-2.989311');INSERT INTO MUNICIPIOS VALUES
(2760, 30, 'D˙dar', 'dudar', 18192, '37.185792', '-3.484254');INSERT INTO MUNICIPIOS VALUES
(2761, 30, 'D˙rcal', 'durcal', 18650, '36.987677', '-3.566308');INSERT INTO MUNICIPIOS VALUES
(2762, 30, 'Esc˙zar', 'escuzar', 18130, '37.062763', '-3.761616');INSERT INTO MUNICIPIOS VALUES
(2763, 30, 'Ferreira', 'ferreira', 18513, '37.172491', '-3.035831');INSERT INTO MUNICIPIOS VALUES
(2764, 30, 'Fonelas', 'fonelas', 18515, '37.413800', '-3.172903');INSERT INTO MUNICIPIOS VALUES
(2765, 30, 'Freila', 'freila', 18812, '37.529400', '-2.907944');INSERT INTO MUNICIPIOS VALUES
(2766, 30, 'Fuente Vaqueros', 'fuente-vaqueros', 18340, '37.220282', '-3.783331');INSERT INTO MUNICIPIOS VALUES
(2767, 30, 'Gabias', 'gabias', 18110, '37.135005', '-3.698321');INSERT INTO MUNICIPIOS VALUES
(2768, 30, 'Galera', 'lagalera', 18840, '37.743147', '-2.550673');INSERT INTO MUNICIPIOS VALUES
(2769, 30, 'Gobernador', 'gobernador', 18563, '37.477847', '-3.321133');INSERT INTO MUNICIPIOS VALUES
(2770, 30, 'GÛjar', 'gojar', 18150, '37.104531', '-3.606005');INSERT INTO MUNICIPIOS VALUES
(2771, 30, 'Gor', 'gor', 18870, '37.369731', '-2.969055');INSERT INTO MUNICIPIOS VALUES
(2772, 30, 'Gorafe', 'gorafe', 18890, '37.479064', '-3.043685');INSERT INTO MUNICIPIOS VALUES
(2773, 30, 'Granada', 'granada-', 18001, '37.176449', '-3.596735');INSERT INTO MUNICIPIOS VALUES
(2774, 30, 'Guadahortuna', 'guadahortuna', 18560, '37.556877', '-3.400269');INSERT INTO MUNICIPIOS VALUES
(2775, 30, 'Guadix', 'guadix', 18500, '37.300839', '-3.134623');INSERT INTO MUNICIPIOS VALUES
(2776, 30, 'Guajares', 'guajares', 18615, '36.846058', '-3.610682');INSERT INTO MUNICIPIOS VALUES
(2777, 30, 'Gualchos', 'gualchos', 18614, '36.743647', '-3.388982');INSERT INTO MUNICIPIOS VALUES
(2778, 30, 'Granada', 'granada', 18001, '37.176347', '-3.595855');INSERT INTO MUNICIPIOS VALUES
(2780, 30, 'HuÈlago', 'huelago', 18540, '37.420685', '-3.260708');INSERT INTO MUNICIPIOS VALUES
(2781, 30, 'HuÈneja', 'hueneja', 18512, '37.177193', '-2.948155');INSERT INTO MUNICIPIOS VALUES
(2782, 30, 'HuÈscar', 'huescar', 18830, '37.809453', '-2.539279');INSERT INTO MUNICIPIOS VALUES
(2783, 30, 'HuÈtor de Santill·n', 'huetor-de-santillan', 18183, '37.218659', '-3.517041');INSERT INTO MUNICIPIOS VALUES
(2784, 30, 'HuÈtor T·jar', 'huetor-tajar', 18360, '37.194835', '-4.046917');INSERT INTO MUNICIPIOS VALUES
(2785, 30, 'HuÈtor Vega', 'huetor-vega', 18198, '37.152570', '-3.576264');INSERT INTO MUNICIPIOS VALUES
(2786, 30, 'Illora', 'illora', 18260, '37.288787', '-3.879504');INSERT INTO MUNICIPIOS VALUES
(2787, 30, 'Itrabo', 'itrabo', 18612, '36.799586', '-3.639243');INSERT INTO MUNICIPIOS VALUES
(2788, 30, 'Iznalloz', 'iznalloz', 18550, '37.393363', '-3.528628');INSERT INTO MUNICIPIOS VALUES
(2789, 30, 'Jayena', 'jayena', 18127, '36.958517', '-3.893709');INSERT INTO MUNICIPIOS VALUES
(2790, 30, 'Jerez del Marquesado', 'jerez-del-marquesado', 18518, '37.185382', '-3.157969');INSERT INTO MUNICIPIOS VALUES
(2791, 30, 'Jete', 'jete', 18699, '36.834689', '-3.673768');INSERT INTO MUNICIPIOS VALUES
(2792, 30, 'Jun', 'jun', 18213, '37.220607', '-3.594503');INSERT INTO MUNICIPIOS VALUES
(2793, 30, 'Juviles', 'juviles', 18452, '36.948228', '-3.226805');INSERT INTO MUNICIPIOS VALUES
(2794, 30, 'L·char', 'lachar', 18327, '37.194937', '-3.833971');INSERT INTO MUNICIPIOS VALUES
(2795, 30, 'LanjarÛn', 'lanjaron', 18420, '36.918281', '-3.479662');INSERT INTO MUNICIPIOS VALUES
(2796, 30, 'Lanteira', 'lanteira', 18518, '37.168747', '-3.137584');INSERT INTO MUNICIPIOS VALUES
(2797, 30, 'LecrÌn', 'lecrin', 18656, '36.947817', '-3.549614');INSERT INTO MUNICIPIOS VALUES
(2798, 30, 'LentegÌ', 'lentegi', 18699, '36.833771', '-3.674777');INSERT INTO MUNICIPIOS VALUES
(2799, 30, 'Lobras', 'lobras', 18449, '36.928162', '-3.212042');INSERT INTO MUNICIPIOS VALUES
(2800, 30, 'Loja', 'loja', 18300, '37.168849', '-4.150944');INSERT INTO MUNICIPIOS VALUES
(2801, 30, 'Lugros', 'lugros', 18516, '37.230132', '-3.240838');INSERT INTO MUNICIPIOS VALUES
(2802, 30, 'L˙jar', 'lujar', 18614, '36.787721', '-3.401599');INSERT INTO MUNICIPIOS VALUES
(2803, 30, 'Malaha', 'malaha', 18130, '37.101348', '-3.722262');INSERT INTO MUNICIPIOS VALUES
(2804, 30, 'Maracena', 'maracena', 18200, '37.205774', '-3.636689');INSERT INTO MUNICIPIOS VALUES
(2805, 30, 'Marchal', 'marchal', 18516, '37.257540', '-3.231740');INSERT INTO MUNICIPIOS VALUES
(2806, 30, 'MoclÌn', 'moclin', 18247, '37.341827', '-3.785777');INSERT INTO MUNICIPIOS VALUES
(2807, 30, 'MolvÌzar', 'molvizar', 18611, '36.786999', '-3.607292');INSERT INTO MUNICIPIOS VALUES
(2808, 30, 'Monachil', 'monachil', 18193, '37.132147', '-3.538756');INSERT INTO MUNICIPIOS VALUES
(2809, 30, 'MontefrÌo', 'montefrio', 18270, '37.321045', '-4.010868');INSERT INTO MUNICIPIOS VALUES
(2810, 30, 'MontejÌcar', 'montejicar', 18561, '37.572151', '-3.504682');INSERT INTO MUNICIPIOS VALUES
(2811, 30, 'Montillana', 'montillana', 18569, '37.501674', '-3.672395');INSERT INTO MUNICIPIOS VALUES
(2812, 30, 'Moraleda de Zafayona', 'moraleda-de-zafayona', 18370, '37.170149', '-3.967180');INSERT INTO MUNICIPIOS VALUES
(2813, 30, 'Morel·bor', 'morelabor', 18540, '37.431063', '-3.310189');INSERT INTO MUNICIPIOS VALUES
(2814, 30, 'Motril', 'motril', 18600, '36.745126', '-3.516355');INSERT INTO MUNICIPIOS VALUES
(2815, 30, 'Murtas', 'murtas', 18490, '36.887361', '-3.109560');INSERT INTO MUNICIPIOS VALUES
(2816, 30, 'Nevada', 'nevada', 18196, '37.094527', '-3.394797');INSERT INTO MUNICIPIOS VALUES
(2817, 30, 'Niguelas', 'niguela', 18657, '36.977135', '-3.539057');INSERT INTO MUNICIPIOS VALUES
(2818, 30, 'NÌvar', 'nivar', 18214, '37.257668', '-3.578367');INSERT INTO MUNICIPIOS VALUES
(2819, 30, 'OgÌjares', 'ogijares', 18151, '37.119863', '-3.608108');INSERT INTO MUNICIPIOS VALUES
(2820, 30, 'Orce', 'orce', 18858, '37.721561', '-2.479649');INSERT INTO MUNICIPIOS VALUES
(2821, 30, '”rgiva', 'orgiva', 18400, '36.901585', '-3.425619');INSERT INTO MUNICIPIOS VALUES
(2822, 30, 'OtÌvar', 'otivar', 18698, '36.815040', '-3.681450');INSERT INTO MUNICIPIOS VALUES
(2823, 30, 'Otura', 'otura', 18630, '37.094553', '-3.635015');INSERT INTO MUNICIPIOS VALUES
(2824, 30, 'Padul', 'padul', 18640, '37.024655', '-3.626390');INSERT INTO MUNICIPIOS VALUES
(2825, 30, 'Pampaneira', 'pampaneira', 18411, '36.940288', '-3.361645');INSERT INTO MUNICIPIOS VALUES
(2826, 30, 'Pedro MartÌnez', 'pedro-martinez', 18530, '37.502202', '-3.230667');INSERT INTO MUNICIPIOS VALUES
(2827, 30, 'Peligros', 'peligros', 18210, '37.231114', '-3.629994');INSERT INTO MUNICIPIOS VALUES
(2828, 30, 'Peza', 'peza', 18517, '37.275760', '-3.284612');INSERT INTO MUNICIPIOS VALUES
(2829, 30, 'Pinar', 'elpinar', 18568, '37.443381', '-3.439064');INSERT INTO MUNICIPIOS VALUES
(2830, 30, 'Pinos Genil', 'pinos-genil', 18191, '37.163155', '-3.502064');INSERT INTO MUNICIPIOS VALUES
(2831, 30, 'Pinos Puente', 'pinos-puente', 18240, '37.251886', '-3.751316');INSERT INTO MUNICIPIOS VALUES
(2832, 30, 'PÌÒar', 'pinar', 18568, '37.443415', '-3.439021');INSERT INTO MUNICIPIOS VALUES
(2833, 30, 'PolÌcar', 'policar', 18516, '37.257762', '-3.231997');INSERT INTO MUNICIPIOS VALUES
(2834, 30, 'Polopos', 'polopos', 18710, '36.795815', '-3.298473');INSERT INTO MUNICIPIOS VALUES
(2835, 30, 'PÛrtugos', 'portugos', 18415, '36.942689', '-3.310575');INSERT INTO MUNICIPIOS VALUES
(2836, 30, 'Puebla de Don Fadrique', 'puebla-de-don-fadrique', 18820, '37.957666', '-2.435188');INSERT INTO MUNICIPIOS VALUES
(2837, 30, 'Pulianas', 'pulianas', 18197, '37.222913', '-3.608322');INSERT INTO MUNICIPIOS VALUES
(2838, 30, 'Purullena', 'purullena', 18519, '37.317854', '-3.190026');INSERT INTO MUNICIPIOS VALUES
(2839, 30, 'QuÈntar', 'quentar', 18192, '37.192083', '-3.469234');INSERT INTO MUNICIPIOS VALUES
(2840, 30, 'Rubite', 'rubite', 18711, '36.809147', '-3.347869');INSERT INTO MUNICIPIOS VALUES
(2841, 30, 'Salar', 'salar', 18310, '37.149063', '-4.067559');INSERT INTO MUNICIPIOS VALUES
(2842, 30, 'SalobreÒa', 'salobrena', 18680, '36.747275', '-3.587465');INSERT INTO MUNICIPIOS VALUES
(2843, 30, 'Santa Cruz del Comercio', 'santa-cruz-del-comercio', 18129, '37.061479', '-3.977566');INSERT INTO MUNICIPIOS VALUES
(2844, 30, 'Santa Fe', 'santa-fe', 18320, '37.189656', '-3.719044');INSERT INTO MUNICIPIOS VALUES
(2845, 30, 'Soport˙jar', 'soportujar', 18410, '36.928145', '-3.404860');INSERT INTO MUNICIPIOS VALUES
(2846, 30, 'Sorvil·n', 'sorvilan', 18713, '36.795265', '-3.266888');INSERT INTO MUNICIPIOS VALUES
(2847, 30, 'Taha', 'taha', 04275, '37.228415', '-2.284641');INSERT INTO MUNICIPIOS VALUES
(2848, 30, 'Torre-Cardela', 'torre-cardela', 18563, '37.504653', '-3.356066');INSERT INTO MUNICIPIOS VALUES
(2849, 30, 'TorvizcÛn', 'torvizcon', 18430, '36.877595', '-3.298430');INSERT INTO MUNICIPIOS VALUES
(2850, 30, 'TrevÈlez', 'trevelez', 18417, '37.003512', '-3.267403');INSERT INTO MUNICIPIOS VALUES
(2851, 30, 'TurÛn', 'turon', 18491, '36.863622', '-3.171573');INSERT INTO MUNICIPIOS VALUES
(2852, 30, 'UgÌjar', 'ugijar', 18480, '36.960900', '-3.055015');INSERT INTO MUNICIPIOS VALUES
(2853, 30, 'Valle', 'valle', 18658, '36.932604', '-3.592143');INSERT INTO MUNICIPIOS VALUES
(2854, 30, 'Valle del ZalabÌ', 'valle-del-zalabi', 18511, '37.286346', '-3.008494');INSERT INTO MUNICIPIOS VALUES
(2855, 30, 'V·lor', 'valor', 18470, '36.995287', '-3.083467');INSERT INTO MUNICIPIOS VALUES
(2856, 30, 'Vegas del Genil', 'vegas-del-genil', 18102, '37.168080', '-3.698831');INSERT INTO MUNICIPIOS VALUES
(2857, 30, 'VÈlez de Benaudalla', 'velez-de-benaudalla', 18670, '36.832439', '-3.515882');INSERT INTO MUNICIPIOS VALUES
(2858, 30, 'Ventas de Huelma', 'ventas-de-huelma', 18131, '37.068944', '-3.821912');INSERT INTO MUNICIPIOS VALUES
(2859, 30, 'Villamena', 'villamena', 18659, '36.990625', '-3.588324');INSERT INTO MUNICIPIOS VALUES
(2860, 30, 'Villanueva de las Torres', 'villanueva-de-las-torres', 18539, '37.557302', '-3.089604');INSERT INTO MUNICIPIOS VALUES
(2861, 30, 'Villanueva MesÌa', 'villanueva-mesia', 18369, '37.213686', '-4.010053');INSERT INTO MUNICIPIOS VALUES
(2862, 30, 'VÌznar', 'viznar', 18179, '37.230465', '-3.553648');INSERT INTO MUNICIPIOS VALUES
(2863, 30, 'Zafarraya', 'zafarraya', 18128, '36.975610', '-4.143991');INSERT INTO MUNICIPIOS VALUES
(2864, 30, 'Zagra', 'zagra', 18311, '37.253150', '-4.168024');INSERT INTO MUNICIPIOS VALUES
(2865, 30, 'Zubia', 'lazubia', 18140, '37.120872', '-3.584375');INSERT INTO MUNICIPIOS VALUES
(2866, 30, 'Z˙jar', 'zujar', 18811, '37.540426', '-2.842369');
INSERT INTO MUNICIPIOS VALUES
(3246, 42, 'Al·jar', 'alajar', 21340, '37.874980', '-6.668224');INSERT INTO MUNICIPIOS VALUES
(3247, 42, 'Aljaraque', 'aljaraque', 21110, '37.270915', '-7.024199');INSERT INTO MUNICIPIOS VALUES
(3248, 42, 'Almendro', 'almendro', 21593, '37.506866', '-7.267799');INSERT INTO MUNICIPIOS VALUES
(3249, 42, 'Almonaster la Real', 'almonaster-la-real', 21350, '37.873650', '-6.787906');INSERT INTO MUNICIPIOS VALUES
(3250, 42, 'Almonte', 'almonte', 21730, '37.260860', '-6.517379');INSERT INTO MUNICIPIOS VALUES
(3251, 42, 'Alosno', 'alosno', 21520, '37.548790', '-7.120294');INSERT INTO MUNICIPIOS VALUES
(3252, 42, 'Aracena', 'aracena', 21200, '37.892945', '-6.561244');INSERT INTO MUNICIPIOS VALUES
(3253, 42, 'Aroche', 'aroche', 21240, '37.945879', '-6.955840');INSERT INTO MUNICIPIOS VALUES
(3254, 42, 'Arroyomolinos de LeÛn', 'arroyomolinos-de-leon', 21280, '38.024158', '-6.422855');INSERT INTO MUNICIPIOS VALUES
(3255, 42, 'Ayamonte', 'ayamonte', 21400, '37.217257', '-7.409034');INSERT INTO MUNICIPIOS VALUES
(3256, 42, 'Beas', 'beas', 21630, '37.426080', '-6.793359');INSERT INTO MUNICIPIOS VALUES
(3257, 42, 'Berrocal', 'berrocal', 21647, '37.607968', '-6.541961');INSERT INTO MUNICIPIOS VALUES
(3258, 42, 'Bollullos Par del Condado', 'bollullos-par-del-condado', 21710, '37.336487', '-6.536307');INSERT INTO MUNICIPIOS VALUES
(3259, 42, 'Bonares', 'bonares', 21830, '37.322120', '-6.677971');INSERT INTO MUNICIPIOS VALUES
(3260, 42, 'Cabezas Rubias', 'cabezas-rubias', 21580, '37.725379', '-7.087555');INSERT INTO MUNICIPIOS VALUES
(3261, 42, 'Cala', 'cala', 21270, '37.972113', '-6.317310');INSERT INTO MUNICIPIOS VALUES
(3262, 42, 'CalaÒas', 'calanas', 21300, '37.655014', '-6.878128');INSERT INTO MUNICIPIOS VALUES
(3263, 42, 'Campillo', 'El campillo', 02462, '41.258146', '-5.013413');INSERT INTO MUNICIPIOS VALUES
(3264, 42, 'CampofrÌo', 'campofrio', 21668, '37.768272', '-6.572142');INSERT INTO MUNICIPIOS VALUES
(3265, 42, 'CaÒaveral de LeÛn', 'canaveral-de-leon', 21388, '38.017195', '-6.528454');INSERT INTO MUNICIPIOS VALUES
(3266, 42, 'Cartaya', 'cartaya', 21450, '37.283682', '-7.155190');INSERT INTO MUNICIPIOS VALUES
(3267, 42, 'CastaÒo del Robledo', 'castano-del-robledo', 21292, '37.896395', '-6.704063');INSERT INTO MUNICIPIOS VALUES
(3268, 42, 'Cerro de AndÈvalo', 'cerro-de-andevalo', 21320, '37.735562', '-6.938896');INSERT INTO MUNICIPIOS VALUES
(3269, 42, 'Chucena', 'chucena', 21891, '37.361289', '-6.392498');INSERT INTO MUNICIPIOS VALUES
(3270, 42, 'CorteconcepciÛn', 'corteconcepcion', 21209, '37.896124', '-6.506910');INSERT INTO MUNICIPIOS VALUES
(3271, 42, 'Cortegana', 'cortegana', 21230, '37.909060', '-6.820621');INSERT INTO MUNICIPIOS VALUES
(3272, 42, 'Cortelazor', 'cortelazor', 21208, '37.935432', '-6.623425');INSERT INTO MUNICIPIOS VALUES
(3273, 42, 'Cumbres de Enmedio', 'cumbres-de-enmedio', 21387, '38.071643', '-6.693335');INSERT INTO MUNICIPIOS VALUES
(3274, 42, 'Cumbres de San BartolomÈ', 'cumbres-de-san-bartolome', 21386, '38.076372', '-6.743588');INSERT INTO MUNICIPIOS VALUES
(3275, 42, 'Cumbres Mayores', 'cumbres-mayores', 21380, '38.064514', '-6.646729');INSERT INTO MUNICIPIOS VALUES
(3276, 42, 'Encinasola', 'encinasola', 21390, '38.135704', '-6.872549');INSERT INTO MUNICIPIOS VALUES
(3277, 42, 'Escacena del Campo', 'escacena-del-campo', 21870, '37.411278', '-6.391983');INSERT INTO MUNICIPIOS VALUES
(3278, 42, 'Fuenteheridos', 'fuenteheridos', 21292, '37.903235', '-6.659517');INSERT INTO MUNICIPIOS VALUES
(3279, 42, 'Galaroza', 'galaroza', 21291, '37.927138', '-6.709471');INSERT INTO MUNICIPIOS VALUES
(3280, 42, 'GibraleÛn', 'gibraleon', 21500, '37.374454', '-6.970482');INSERT INTO MUNICIPIOS VALUES
(3281, 42, 'Granada de RÌo-Tinto', 'granada-de-rio-tinto', 21668, '37.769256', '-6.508584');INSERT INTO MUNICIPIOS VALUES
(3282, 42, 'Granado', 'El granado', 21594, '37.518849', '-7.414570');INSERT INTO MUNICIPIOS VALUES
(3283, 42, 'Higuera de la Sierra', 'higuera-de-la-sierra', 21220, '37.838564', '-6.447687');INSERT INTO MUNICIPIOS VALUES
(3284, 42, 'Hinojales', 'hinojales', 21388, '38.008573', '-6.588964');INSERT INTO MUNICIPIOS VALUES
(3285, 42, 'Hinojos', 'hinojos', 21740, '37.292935', '-6.376405');INSERT INTO MUNICIPIOS VALUES
(3286, 42, 'Huelva', 'huelva', 21004, '37.257796', '-6.948080');INSERT INTO MUNICIPIOS VALUES
(3287, 42, 'Isla Cristina', 'isla-cristina', 21410, '37.200390', '-7.327194');INSERT INTO MUNICIPIOS VALUES
(3288, 42, 'Jabugo', 'jabugo', 21290, '37.916915', '-6.728354');INSERT INTO MUNICIPIOS VALUES
(3289, 42, 'Lepe', 'lepe', 21440, '37.254585', '-7.203169');INSERT INTO MUNICIPIOS VALUES
(3290, 42, 'Linares de la Sierra', 'linares-de-la-sierra', 21207, '37.880476', '-6.622224');INSERT INTO MUNICIPIOS VALUES
(3291, 42, 'Lucena del Puerto', 'lucena-del-puerto', 21820, '37.304440', '-6.729984');INSERT INTO MUNICIPIOS VALUES
(3292, 42, 'Manzanilla', 'manzanilla', 21890, '37.387652', '-6.428976');INSERT INTO MUNICIPIOS VALUES
(3293, 42, 'Marines', 'Los marines', 21208, '37.903337', '-6.624241');INSERT INTO MUNICIPIOS VALUES
(3294, 42, 'Minas de Riotinto', 'minas-de-riotinto', 21660, '37.694280', '-6.591024');INSERT INTO MUNICIPIOS VALUES
(3295, 42, 'Moguer', 'moguer', 21800, '37.274668', '-6.835041');INSERT INTO MUNICIPIOS VALUES
(3296, 42, 'Nava', 'La nava', 01309, '37.963520', '-6.747108');INSERT INTO MUNICIPIOS VALUES
(3297, 42, 'Nerva', 'nerva', 21670, '37.695435', '-6.550770');INSERT INTO MUNICIPIOS VALUES
(3298, 42, 'Niebla', 'niebla', 21840, '37.360300', '-6.679473');INSERT INTO MUNICIPIOS VALUES
(3299, 42, 'Palma del Condado', 'palma-del-condado', 21700, '37.388368', '-6.553173');INSERT INTO MUNICIPIOS VALUES
(3300, 42, 'Palos de la Frontera', 'palos-de-la-frontera', 21810, '37.228449', '-6.892633');INSERT INTO MUNICIPIOS VALUES
(3301, 42, 'Paterna del Campo', 'paterna-del-campo', 21880, '37.421844', '-6.401596');INSERT INTO MUNICIPIOS VALUES
(3302, 42, 'Paymogo', 'paymogo', 21560, '37.741264', '-7.345390');INSERT INTO MUNICIPIOS VALUES
(3303, 42, 'Puebla de Guzm·n', 'puebla-de-guzman', 21550, '37.610900', '-7.245998');INSERT INTO MUNICIPIOS VALUES
(3304, 42, 'Puerto Moral', 'puerto-moral', 21209, '37.892399', '-6.478629');INSERT INTO MUNICIPIOS VALUES
(3305, 42, 'Punta UmbrÌa', 'punta-umbria', 21100, '37.183228', '-6.966791');INSERT INTO MUNICIPIOS VALUES
(3306, 42, 'Rociana del Condado', 'rociana-del-condado', 21720, '37.308161', '-6.598535');INSERT INTO MUNICIPIOS VALUES
(3307, 42, 'Rosal de la Frontera', 'rosal-de-la-frontera', 21250, '37.968425', '-7.220163');INSERT INTO MUNICIPIOS VALUES
(3308, 42, 'San BartolomÈde la Torre', 'san-bartolomede-la-torre', 21510, '37.446278', '-7.107725');INSERT INTO MUNICIPIOS VALUES
(3309, 42, 'San Juan del Puerto', 'san-juan-del-puerto', 21610, '37.314236', '-6.839762');INSERT INTO MUNICIPIOS VALUES
(3310, 42, 'San Silvestre de Guzm·n', 'san-silvestre-de-guzman', 21591, '37.387652', '-7.349768');INSERT INTO MUNICIPIOS VALUES
(3311, 42, 'Sanl˙car de Guadiana', 'sanlucar-de-guadiana', 21595, '37.473223', '-7.465553');INSERT INTO MUNICIPIOS VALUES
(3312, 42, 'Santa Ana la Real', 'santa-ana-la-real', 21359, '37.864555', '-6.724920');INSERT INTO MUNICIPIOS VALUES
(3313, 42, 'Santa B·rbara de Casa', 'santa-barbara-de-casa', 21570, '37.796322', '-7.188020');INSERT INTO MUNICIPIOS VALUES
(3314, 42, 'Santa Olalla del Cala', 'santa-olalla-del-cala', 21260, '37.906893', '-6.229291');INSERT INTO MUNICIPIOS VALUES
(3315, 42, 'Trigueros', 'trigueros', 21620, '37.383457', '-6.834354');INSERT INTO MUNICIPIOS VALUES
(3316, 42, 'Valdelarco', 'valdelarco', 21291, '37.951101', '-6.683550');INSERT INTO MUNICIPIOS VALUES
(3317, 42, 'Valverde del Camino', 'valverde-del-camino', 21600, '37.572202', '-6.752644');INSERT INTO MUNICIPIOS VALUES
(3318, 42, 'Villablanca', 'villablanca', 21590, '37.304372', '-7.342386');INSERT INTO MUNICIPIOS VALUES
(3319, 42, 'Villalba del Alcor', 'villalba-del-alcor', 21860, '37.398085', '-6.476955');INSERT INTO MUNICIPIOS VALUES
(3320, 42, 'Villanueva de las Cruces', 'villanueva-de-las-cruces', 21592, '37.626605', '-7.024469');INSERT INTO MUNICIPIOS VALUES
(3321, 42, 'Villanueva de los Castillejos', 'villanueva-de-los-castillejos', 21540, '37.500942', '-7.275095');INSERT INTO MUNICIPIOS VALUES
(3322, 42, 'Villarrasa', 'villarrasa', 21850, '37.389254', '-6.607547');INSERT INTO MUNICIPIOS VALUES
(3323, 42, 'Zalamea la Real', 'zalamea-la-real', 21640, '37.678420', '-6.660719');INSERT INTO MUNICIPIOS VALUES
(3324, 42, 'Zufre', 'zufre', 21210, '37.834124', '-6.338339');

INSERT INTO MUNICIPIOS VALUES
(3529, 50, 'Albanchez de M·gina', 'albanchez-de-magina', 23538, '37.791541', '-3.466358');INSERT INTO MUNICIPIOS VALUES
(3530, 50, 'Alcal· la Real', 'alcala-la-real', 23680, '37.462528', '-3.923321');INSERT INTO MUNICIPIOS VALUES
(3531, 50, 'Alcaudete', 'alcaudete', 23660, '37.589130', '-4.078550');INSERT INTO MUNICIPIOS VALUES
(3532, 50, 'Aldeaquemada', 'aldeaquemada', 23215, '38.411991', '-3.370640');INSERT INTO MUNICIPIOS VALUES
(3533, 50, 'And˙jar', 'andujar', 23740, '38.038689', '-4.057520');INSERT INTO MUNICIPIOS VALUES
(3534, 50, 'Arjona', 'arjona', 23760, '37.937592', '-4.060900');INSERT INTO MUNICIPIOS VALUES
(3535, 50, 'Arjonilla', 'arjonilla', 23750, '37.974491', '-4.102770');INSERT INTO MUNICIPIOS VALUES
(3536, 50, 'Arquillos', 'arquillos', 23230, '38.182629', '-3.430190');INSERT INTO MUNICIPIOS VALUES
(3537, 50, 'Arroyo del Ojanco', 'arroyo-del-ojanco', 23340, '38.321510', '-2.893460');INSERT INTO MUNICIPIOS VALUES
(3538, 50, 'Baeza', 'baeza', 23440, '37.993141', '-3.468340');INSERT INTO MUNICIPIOS VALUES
(3539, 50, 'BailÈn', 'bailen', 23710, '38.096531', '-3.771050');INSERT INTO MUNICIPIOS VALUES
(3540, 50, 'BaÒos de la Encina', 'banos-de-la-encina', 23711, '38.172329', '-3.771160');INSERT INTO MUNICIPIOS VALUES
(3541, 50, 'Beas de Segura', 'beas-de-segura', 23280, '38.254410', '-2.895790');INSERT INTO MUNICIPIOS VALUES
(3542, 50, 'Bedmar y GarcÌez', 'bedmar-y-garciez', 23537, '37.824089', '-3.414620');INSERT INTO MUNICIPIOS VALUES
(3543, 50, 'BegÌjar', 'begijar', 23520, '37.984360', '-3.535980');INSERT INTO MUNICIPIOS VALUES
(3544, 50, 'BÈlmez de la Moraleda', 'belmez-de-la-moraleda', 23568, '37.723003', '-3.381901');INSERT INTO MUNICIPIOS VALUES
(3545, 50, 'Benatae', 'benatae', 23390, '38.353741', '-2.651770');INSERT INTO MUNICIPIOS VALUES
(3546, 50, 'Cabra del Santo Cristo', 'cabra-del-santo-cristo', 23550, '37.705486', '-3.285958');INSERT INTO MUNICIPIOS VALUES
(3547, 50, 'Cambil', 'cambil', 23120, '37.678080', '-3.565214');INSERT INTO MUNICIPIOS VALUES
(3548, 50, 'Campillo de Arenas', 'campillo-de-arenas', 23130, '37.558663', '-3.642311');INSERT INTO MUNICIPIOS VALUES
(3549, 50, 'Canena', 'canena', 23420, '38.051268', '-3.488009');INSERT INTO MUNICIPIOS VALUES
(3550, 50, 'Carboneros', 'carboneros', 23211, '38.228741', '-3.630939');INSERT INTO MUNICIPIOS VALUES
(3551, 50, 'C·rcheles', 'carcheles', 23192, '37.636308', '-3.631926');INSERT INTO MUNICIPIOS VALUES
(3552, 50, 'Carolina', 'carolina', 23200, '38.276378', '-3.616991');INSERT INTO MUNICIPIOS VALUES
(3553, 50, 'El Castellar', 'elcastellar', 23260, '38.255268', '-3.131447');INSERT INTO MUNICIPIOS VALUES
(3554, 50, 'Castillo de LocubÌn', 'castillo-de-locubin', 23670, '37.529995', '-3.944650');INSERT INTO MUNICIPIOS VALUES
(3555, 50, 'Cazalilla', 'cazalilla', 23628, '37.985204', '-3.881800');INSERT INTO MUNICIPIOS VALUES
(3556, 50, 'Cazorla', 'cazorla', 23470, '37.909297', '-2.994461');INSERT INTO MUNICIPIOS VALUES
(3557, 50, 'Chiclana de Segura', 'chiclana-de-segura', 23264, '38.314673', '-3.038900');INSERT INTO MUNICIPIOS VALUES
(3558, 50, 'ChilluÈvar', 'chilluevar', 23477, '38.000145', '-3.030714');INSERT INTO MUNICIPIOS VALUES
(3559, 50, 'EscaÒuela', 'escanuela', 23657, '37.877538', '-4.033495');INSERT INTO MUNICIPIOS VALUES
(3560, 50, 'Espel˙y', 'espeluy', 23628, '38.030600', '-3.862445');INSERT INTO MUNICIPIOS VALUES
(3561, 50, 'Frailes', 'frailes', 23690, '37.486139', '-3.839743');INSERT INTO MUNICIPIOS VALUES
(3562, 50, 'Fuensanta de Martos', 'fuensanta-de-martos', 23610, '37.647335', '-3.906755');INSERT INTO MUNICIPIOS VALUES
(3563, 50, 'Fuerte del Rey', 'fuerte-del-rey', 23180, '37.875209', '-3.884332');INSERT INTO MUNICIPIOS VALUES
(3564, 50, 'GÈnave', 'genave', 23392, '38.430396', '-2.735724');INSERT INTO MUNICIPIOS VALUES
(3565, 50, 'Guardia de JaÈn', 'guardia-de-jaen', 23170, '37.744521', '-3.694668');INSERT INTO MUNICIPIOS VALUES
(3566, 50, 'Guarrom·n', 'guarroman', 23210, '38.117778', '-3.835001');INSERT INTO MUNICIPIOS VALUES
(3567, 50, 'Higuera de Calatrava', 'higuera-de-calatrava', 23611, '37.796924', '-4.155825');INSERT INTO MUNICIPIOS VALUES
(3568, 50, 'Hinojares', 'hinojares', 23486, '37.716112', '-3.000662');INSERT INTO MUNICIPIOS VALUES
(3569, 50, 'Hornos', 'hornos', 23292, '38.215458', '-2.720189');INSERT INTO MUNICIPIOS VALUES
(3570, 50, 'Huelma', 'huelma', 23560, '37.644753', '-3.452775');INSERT INTO MUNICIPIOS VALUES
(3571, 50, 'Huesa', 'huesa', 23487, '37.756330', '-3.076344');INSERT INTO MUNICIPIOS VALUES
(3572, 50, 'Ibros', 'ibros', 23450, '38.023940', '-3.504682');INSERT INTO MUNICIPIOS VALUES
(3573, 50, 'Iruela', 'iruela', 23476, '37.923821', '-2.989311');INSERT INTO MUNICIPIOS VALUES
(3574, 50, 'Iznatoraf', 'iznatoraf', 23338, '38.152884', '-3.019094');INSERT INTO MUNICIPIOS VALUES
(3575, 50, 'Jabalquinto', 'jabalquinto', 23712, '38.020035', '-3.724301');INSERT INTO MUNICIPIOS VALUES
(3576, 50, 'JaÈn', 'jaen', 23004, '37.766288', '-3.789725');INSERT INTO MUNICIPIOS VALUES
(3577, 50, 'Jamilena', 'jamilena', 23658, '37.746778', '-3.912785');INSERT INTO MUNICIPIOS VALUES
(3578, 50, 'Jimena', 'jimena', 23530, '37.841631', '-3.478181');INSERT INTO MUNICIPIOS VALUES
(3579, 50, 'JÛdar', 'jodar', 23500, '37.842766', '-3.350229');INSERT INTO MUNICIPIOS VALUES
(3580, 50, 'Lahiguera', 'lahiguera', 23746, '37.969559', '-3.987458');INSERT INTO MUNICIPIOS VALUES
(3581, 50, 'Larva', 'larva', 23591, '37.760232', '-3.199382');INSERT INTO MUNICIPIOS VALUES
(3582, 50, 'Linares', 'linares', 39580, '43.256237', '-4.579818');INSERT INTO MUNICIPIOS VALUES
(3583, 50, 'Lopera', 'lopera', 23780, '37.944908', '-4.214780');INSERT INTO MUNICIPIOS VALUES
(3584, 50, 'LupiÛn', 'lupion', 23528, '37.998919', '-3.550708');INSERT INTO MUNICIPIOS VALUES
(3585, 50, 'Mancha Real', 'mancha-real', 23100, '37.787878', '-3.612421');INSERT INTO MUNICIPIOS VALUES
(3586, 50, 'Marmolejo', 'marmolejo', 23770, '38.045354', '-4.171393');INSERT INTO MUNICIPIOS VALUES
(3587, 50, 'Martos', 'martos', 23600, '37.721527', '-3.968296');INSERT INTO MUNICIPIOS VALUES
(3588, 50, 'MengÌbar', 'mengibar', 23620, '37.967580', '-3.809681');INSERT INTO MUNICIPIOS VALUES
(3589, 50, 'MontizÛn', 'montizon', 23266, '38.344871', '-3.103895');INSERT INTO MUNICIPIOS VALUES
(3590, 50, 'Navas de San Juan', 'navas-de-san-juan', 23240, '38.186792', '-3.315167');INSERT INTO MUNICIPIOS VALUES
(3591, 50, 'Noalejo', 'noalejo', 23140, '37.527086', '-3.666086');INSERT INTO MUNICIPIOS VALUES
(3592, 50, 'Orcera', 'orcera', 23370, '38.317687', '-2.667789');INSERT INTO MUNICIPIOS VALUES
(3593, 50, 'Peal de Becerro', 'peal-de-becerro', 23460, '37.913800', '-3.121104');INSERT INTO MUNICIPIOS VALUES
(3594, 50, 'Pegalajar', 'pegalajar', 23110, '37.737089', '-3.650755');INSERT INTO MUNICIPIOS VALUES
(3595, 50, 'Porcuna', 'porcuna', 23790, '37.868739', '-4.186671');INSERT INTO MUNICIPIOS VALUES
(3596, 50, 'Pozo AlcÛn', 'pozo-alcon', 23485, '37.706402', '-2.936611');INSERT INTO MUNICIPIOS VALUES
(3597, 50, 'Puente de GÈnave', 'puente-de-genave', 23350, '38.352999', '-2.806084');INSERT INTO MUNICIPIOS VALUES
(3598, 50, 'Puerta de Segura', 'puerta-de-segura', 23360, '38.350256', '-2.740102');INSERT INTO MUNICIPIOS VALUES
(3599, 50, 'Quesada', 'quesada', 23480, '37.845105', '-3.068275');INSERT INTO MUNICIPIOS VALUES
(3600, 50, 'Rus', 'rus', 23430, '38.050592', '-3.461273');INSERT INTO MUNICIPIOS VALUES
(3601, 50, 'Sabiote', 'sabiote', 23410, '38.070443', '-3.304954');INSERT INTO MUNICIPIOS VALUES
(3602, 50, 'Santa Elena', 'santa-elena', 23213, '38.341202', '-3.536139');INSERT INTO MUNICIPIOS VALUES
(3603, 50, 'Santiago de Calatrava', 'santiago-de-calatrava', 23612, '37.752801', '-4.171050');INSERT INTO MUNICIPIOS VALUES
(3604, 50, 'Santiago-Pontones', 'santiago-pontones', 23290, '38.099991', '-2.549493');INSERT INTO MUNICIPIOS VALUES
(3605, 50, 'Santisteban del Puerto', 'santisteban-del-puerto', 23250, '38.247786', '-3.206205');INSERT INTO MUNICIPIOS VALUES
(3606, 50, 'Santo TomÈ', 'santo-tome', 23311, '38.028504', '-3.096385');INSERT INTO MUNICIPIOS VALUES
(3607, 50, 'Segura de la Sierra', 'segura-de-la-sierra', 23379, '38.298054', '-2.653756');INSERT INTO MUNICIPIOS VALUES
(3608, 50, 'Siles', 'siles', 23380, '38.387452', '-2.581058');INSERT INTO MUNICIPIOS VALUES
(3609, 50, 'Sorihuela del Guadalimar', 'sorihuela-del-guadalimar', 23270, '38.239663', '-3.056345');INSERT INTO MUNICIPIOS VALUES
(3610, 50, 'Torre del Campo', 'torre-del-campo', 23640, '37.777058', '-3.895984');INSERT INTO MUNICIPIOS VALUES
(3611, 50, 'Torreblascopedro', 'torreblascopedro', 23510, '37.993440', '-3.639543');INSERT INTO MUNICIPIOS VALUES
(3612, 50, 'Torredonjimeno', 'torredonjimeno', 23650, '37.802731', '-4.091549');INSERT INTO MUNICIPIOS VALUES
(3613, 50, 'Torreperogil', 'torreperogil', 23320, '38.029738', '-3.279290');INSERT INTO MUNICIPIOS VALUES
(3614, 50, 'Torres', 'torres', 23540, '37.787047', '-3.511569');INSERT INTO MUNICIPIOS VALUES
(3615, 50, 'Torres de Alb·nchez', 'torres-de-albanchez', 23391, '38.415695', '-2.676576');INSERT INTO MUNICIPIOS VALUES
(3616, 50, '¡?beda', 'ubeda', 23400, '38.011162', '-3.371380');INSERT INTO MUNICIPIOS VALUES
(3617, 50, 'ValdepeÒas de JaÈn', 'valdepenas-de-jaen', 23150, '37.588867', '-3.815818');INSERT INTO MUNICIPIOS VALUES
(3618, 50, 'Vilches', 'vilches', 23220, '38.211276', '-3.501463');INSERT INTO MUNICIPIOS VALUES
(3619, 50, 'Villacarrillo', 'villacarrillo', 23300, '38.111599', '-3.087587');INSERT INTO MUNICIPIOS VALUES
(3620, 50, 'Villanueva de la Reina', 'villanueva-de-la-reina', 23730, '38.017669', '-3.919201');INSERT INTO MUNICIPIOS VALUES
(3621, 50, 'Villanueva del Arzobispo', 'villanueva-del-arzobispo', 23330, '38.171088', '-3.009181');INSERT INTO MUNICIPIOS VALUES
(3622, 50, 'Villardompardo', 'villardompardo', 23659, '37.839564', '-4.000922');INSERT INTO MUNICIPIOS VALUES
(3623, 50, 'Villares', 'villares', 23160, '37.689509', '-3.819616');INSERT INTO MUNICIPIOS VALUES
(3624, 50, 'Villarrodrigo', 'villarrodrigo', 23393, '38.488347', '-2.640989');INSERT INTO MUNICIPIOS VALUES
(3625, 50, 'Villatorres', 'villatorres', 23630, '37.931184', '-3.692372');
INSERT INTO MUNICIPIOS VALUES
(4494, 19, 'Alameda', 'alameda', 29530, '37.208511', '-4.660980');INSERT INTO MUNICIPIOS VALUES
(4495, 19, 'AlcaucÌn', 'alcaucin', 29711, '36.902672', '-4.114760');INSERT INTO MUNICIPIOS VALUES
(4496, 19, 'Alfarnate', 'alfarnate', 29194, '36.994469', '-4.260400');INSERT INTO MUNICIPIOS VALUES
(4497, 19, 'Alfarnatejo', 'alfarnatejo', 29194, '36.979301', '-4.272970');INSERT INTO MUNICIPIOS VALUES
(4498, 19, 'Algarrobo', 'algarrobo', 29750, '36.771740', '-4.038920');INSERT INTO MUNICIPIOS VALUES
(4499, 19, 'AlgatocÌn', 'algatocin', 29491, '36.574791', '-5.275740');INSERT INTO MUNICIPIOS VALUES
(4500, 19, 'AlhaurÌn de la Torre', 'alhaurin-de-la-torre', 29130, '36.661861', '-4.566720');INSERT INTO MUNICIPIOS VALUES
(4501, 19, 'AlhaurÌn el Grande', 'alhaurin-el-grande', 29120, '36.642078', '-4.691130');INSERT INTO MUNICIPIOS VALUES
(4502, 19, 'Alm·char', 'almachar', 29718, '36.808731', '-4.217630');INSERT INTO MUNICIPIOS VALUES
(4503, 19, 'Almargen', 'almargen', 29330, '37.000179', '-5.022810');INSERT INTO MUNICIPIOS VALUES
(4504, 19, 'AlmogÌa', 'almogia', 29150, '36.828091', '-4.540450');INSERT INTO MUNICIPIOS VALUES
(4505, 19, '¡Ålora', 'alora', 29500, '36.828732', '-4.704260');INSERT INTO MUNICIPIOS VALUES
(4506, 19, 'Alozaina', 'alozaina', 29567, '36.728821', '-4.864290');INSERT INTO MUNICIPIOS VALUES
(4507, 19, 'Alpandeire', 'alpandeire', 29460, '36.634590', '-5.202260');INSERT INTO MUNICIPIOS VALUES
(4508, 19, 'Antequera', 'antequera', 29200, '37.020302', '-4.563610');INSERT INTO MUNICIPIOS VALUES
(4509, 19, '¡Årchez', 'archez', 29753, '36.838100', '-3.989810');INSERT INTO MUNICIPIOS VALUES
(4510, 19, 'Archidona', 'archidona', 29300, '37.094688', '-4.388180');INSERT INTO MUNICIPIOS VALUES
(4511, 19, 'Ardales', 'ardales', 29550, '36.880981', '-4.845320');INSERT INTO MUNICIPIOS VALUES
(4512, 19, 'Arenas', 'arenas', 29753, '36.816212', '-4.045950');INSERT INTO MUNICIPIOS VALUES
(4513, 19, 'Arriate', 'arriate', 29350, '36.799217', '-5.140314');INSERT INTO MUNICIPIOS VALUES
(4514, 19, 'Atajate', 'atajate', 29494, '36.641380', '-5.244110');INSERT INTO MUNICIPIOS VALUES
(4515, 19, 'Benadalid', 'benadalid', 29493, '36.607521', '-5.269760');INSERT INTO MUNICIPIOS VALUES
(4516, 19, 'BenahavÌs', 'benahavis', 29679, '36.523891', '-5.046270');INSERT INTO MUNICIPIOS VALUES
(4517, 19, 'BenalaurÌa', 'benalauria', 29491, '36.595039', '-5.261080');INSERT INTO MUNICIPIOS VALUES
(4518, 19, 'Benalm·dena', 'benalmadena', 29639, '36.595169', '-4.573450');INSERT INTO MUNICIPIOS VALUES
(4519, 19, 'Benamargosa', 'benamargosa', 29718, '36.833740', '-4.194100');INSERT INTO MUNICIPIOS VALUES
(4520, 19, 'Benamocarra', 'benamocarra', 29719, '36.791470', '-4.162360');INSERT INTO MUNICIPIOS VALUES
(4521, 19, 'Benaoj·n', 'benaojan', 29370, '36.718960', '-5.254350');INSERT INTO MUNICIPIOS VALUES
(4522, 19, 'Benarrab·', 'benarraba', 29490, '36.550152', '-5.275880');INSERT INTO MUNICIPIOS VALUES
(4523, 19, 'Borge', 'borge', 29718, '36.814590', '-4.232830');INSERT INTO MUNICIPIOS VALUES
(4524, 19, 'Burgo', 'burgo', 29420, '36.789629', '-4.947624');INSERT INTO MUNICIPIOS VALUES
(4525, 19, 'Campillos', 'campillos', 29320, '37.053108', '-4.863460');INSERT INTO MUNICIPIOS VALUES
(4526, 19, 'Canillas de Aceituno', 'canillas-de-aceituno', 29716, '36.874889', '-4.084800');INSERT INTO MUNICIPIOS VALUES
(4527, 19, 'Canillas de Albaida', 'canillas-de-albaida', 29755, '36.845299', '-3.985420');INSERT INTO MUNICIPIOS VALUES
(4528, 19, 'CaÒete la Real', 'canete-la-real', 29340, '36.951481', '-5.024730');INSERT INTO MUNICIPIOS VALUES
(4529, 19, 'Carratraca', 'carratraca', 29551, '36.851440', '-4.818390');INSERT INTO MUNICIPIOS VALUES
(4530, 19, 'Cartajima', 'cartajima', 29452, '36.646141', '-5.153140');INSERT INTO MUNICIPIOS VALUES
(4531, 19, 'C·rtama', 'cartama', 29570, '36.712200', '-4.631730');INSERT INTO MUNICIPIOS VALUES
(4532, 19, 'Casabermeja', 'casabermeja', 29160, '36.894020', '-4.429110');INSERT INTO MUNICIPIOS VALUES
(4533, 19, 'Casarabonela', 'casarabonela', 29566, '36.787571', '-4.840660');INSERT INTO MUNICIPIOS VALUES
(4534, 19, 'Casares', 'casares', 29690, '36.447231', '-5.273000');INSERT INTO MUNICIPIOS VALUES
(4535, 19, 'CoÌn', 'coin', 29100, '36.659740', '-4.757680');INSERT INTO MUNICIPIOS VALUES
(4536, 19, 'Colmenar', 'colmenar', 29170, '36.906528', '-4.335730');INSERT INTO MUNICIPIOS VALUES
(4537, 19, 'Comares', 'comares', 29195, '36.848492', '-4.247360');INSERT INTO MUNICIPIOS VALUES
(4538, 19, 'CÛmpeta', 'competa', 29754, '36.833058', '-3.974648');INSERT INTO MUNICIPIOS VALUES
(4539, 19, 'Cortes de la Frontera', 'cortes-de-la-frontera', 29380, '36.619530', '-5.341380');INSERT INTO MUNICIPIOS VALUES
(4540, 19, 'Cuevas Bajas', 'cuevas-bajas', 29220, '37.235790', '-4.489460');INSERT INTO MUNICIPIOS VALUES
(4541, 19, 'Cuevas de San Marcos', 'cuevas-de-san-marcos', 29210, '37.266960', '-4.417430');INSERT INTO MUNICIPIOS VALUES
(4542, 19, 'Cuevas del Becerro', 'cuevas-del-becerro', 29470, '36.876339', '-5.044740');INSERT INTO MUNICIPIOS VALUES
(4543, 19, 'C˙tar', 'cutar', 29718, '36.830952', '-4.230290');INSERT INTO MUNICIPIOS VALUES
(4544, 19, 'Estepona', 'estepona', 29680, '36.427582', '-5.145210');INSERT INTO MUNICIPIOS VALUES
(4545, 19, 'Faraj·n', 'farajan', 29461, '36.617298', '-5.187510');INSERT INTO MUNICIPIOS VALUES
(4546, 19, 'Frigiliana', 'frigiliana', 29788, '36.791088', '-3.895110');INSERT INTO MUNICIPIOS VALUES
(4547, 19, 'Fuengirola', 'fuengirola', 29640, '36.541489', '-4.623980');INSERT INTO MUNICIPIOS VALUES
(4548, 19, 'Fuente de Piedra', 'fuente-de-piedra', 29520, '37.134270', '-4.730440');INSERT INTO MUNICIPIOS VALUES
(4549, 19, 'GaucÌn', 'gaucin', 29480, '36.519932', '-5.324860');INSERT INTO MUNICIPIOS VALUES
(4550, 19, 'Genalguacil', 'genalguacil', 29492, '36.546871', '-5.235880');INSERT INTO MUNICIPIOS VALUES
(4551, 19, 'Guaro', 'guaro', 29108, '36.659409', '-4.836310');INSERT INTO MUNICIPIOS VALUES
(4552, 19, 'Humilladero', 'humilladero', 29531, '37.114792', '-4.700130');INSERT INTO MUNICIPIOS VALUES
(4553, 19, 'Igualeja', 'igualeja', 29440, '36.630730', '-5.121310');INSERT INTO MUNICIPIOS VALUES
(4554, 19, 'Ist·n', 'istan', 29611, '36.580379', '-4.947850');INSERT INTO MUNICIPIOS VALUES
(4555, 19, 'Iznate', 'iznate', 29792, '36.776299', '-4.184210');INSERT INTO MUNICIPIOS VALUES
(4556, 19, 'Jimera de LÌbar', 'jimera-de-libar', 29392, '36.649792', '-5.275230');INSERT INTO MUNICIPIOS VALUES
(4557, 19, 'Jubrique', 'jubrique', 29492, '36.564041', '-5.216060');INSERT INTO MUNICIPIOS VALUES
(4558, 19, 'J˙zcar', 'juzcar', 29462, '36.625229', '-5.169580');INSERT INTO MUNICIPIOS VALUES
(4559, 19, 'Macharaviaya', 'macharaviaya', 29791, '36.762131', '-4.216020');INSERT INTO MUNICIPIOS VALUES
(4560, 19, 'M·laga', 'malaga', 29001, '36.718319', '-4.420160');INSERT INTO MUNICIPIOS VALUES
(4561, 19, 'Manilva', 'manilva', 29691, '36.378250', '-5.251320');INSERT INTO MUNICIPIOS VALUES
(4562, 19, 'Marbella', 'marbella', 29601, '36.507992', '-4.883300');INSERT INTO MUNICIPIOS VALUES
(4563, 19, 'Mijas', 'mijas', 29650, '36.597729', '-4.636410');INSERT INTO MUNICIPIOS VALUES
(4564, 19, 'Moclinejo', 'moclinejo', 29738, '36.771069', '-4.256290');INSERT INTO MUNICIPIOS VALUES
(4565, 19, 'Mollina', 'mollina', 29532, '37.124649', '-4.661370');INSERT INTO MUNICIPIOS VALUES
(4566, 19, 'Monda', 'monda', 29110, '36.631672', '-4.828000');INSERT INTO MUNICIPIOS VALUES
(4567, 19, 'Montejaque', 'montejaque', 29360, '36.738930', '-5.248890');INSERT INTO MUNICIPIOS VALUES
(4568, 19, 'Nerja', 'nerja', 29780, '36.751911', '-3.876210');INSERT INTO MUNICIPIOS VALUES
(4569, 19, 'OjÈn', 'ojen', 29610, '36.565529', '-4.852810');INSERT INTO MUNICIPIOS VALUES
(4570, 19, 'Parauta', 'parauta', 29451, '36.655689', '-5.129280');INSERT INTO MUNICIPIOS VALUES
(4571, 19, 'Periana', 'periana', 29710, '36.930309', '-4.191100');INSERT INTO MUNICIPIOS VALUES
(4572, 19, 'Pizarra', 'pizarra', 29560, '36.767148', '-4.707470');INSERT INTO MUNICIPIOS VALUES
(4573, 19, 'Pujerra', 'pujerra', 29450, '36.612728', '-5.147170');INSERT INTO MUNICIPIOS VALUES
(4574, 19, 'RincÛn de la Victoria', 'rincon-de-la-victoria', 29730, '36.714642', '-4.280760');INSERT INTO MUNICIPIOS VALUES
(4575, 19, 'Riogordo', 'riogordo', 29180, '36.914761', '-4.292130');INSERT INTO MUNICIPIOS VALUES
(4576, 19, 'Ronda', 'ronda', 29400, '36.741791', '-5.166280');INSERT INTO MUNICIPIOS VALUES
(4577, 19, 'Salares', 'salares', 29714, '36.852970', '-4.026100');INSERT INTO MUNICIPIOS VALUES
(4578, 19, 'Sayalonga', 'sayalonga', 29752, '36.797691', '-4.011300');INSERT INTO MUNICIPIOS VALUES
(4579, 19, 'Sedella', 'sedella', 29715, '36.862640', '-4.035000');INSERT INTO MUNICIPIOS VALUES
(4580, 19, 'Sierra de Yeguas', 'sierra-de-yeguas', 29328, '37.124512', '-4.868580');INSERT INTO MUNICIPIOS VALUES
(4581, 19, 'Teba', 'teba', 29327, '36.983608', '-4.920250');INSERT INTO MUNICIPIOS VALUES
(4582, 19, 'Tolox', 'tolox', 29109, '36.688000', '-4.899880');INSERT INTO MUNICIPIOS VALUES
(4583, 19, 'Torremolinos', 'torremolinos', 29620, '36.624409', '-4.499850');INSERT INTO MUNICIPIOS VALUES
(4584, 19, 'Torrox', 'torrox', 29770, '36.758991', '-3.953700');INSERT INTO MUNICIPIOS VALUES
(4585, 19, 'Total·n', 'totalan', 29197, '36.765831', '-4.297660');INSERT INTO MUNICIPIOS VALUES
(4586, 19, 'Valle de AbdalajÌs', 'valle-de-abdalajis', 29240, '36.934719', '-4.682180');INSERT INTO MUNICIPIOS VALUES
(4587, 19, 'VÈlez-M·laga', 'velez-malaga', 29700, '36.778301', '-4.100430');INSERT INTO MUNICIPIOS VALUES
(4588, 19, 'Villanueva de Algaidas', 'villanueva-de-algaidas', 29310, '37.183998', '-4.449730');INSERT INTO MUNICIPIOS VALUES
(4589, 19, 'Villanueva de Tapia', 'villanueva-de-tapia', 29315, '37.182098', '-4.336090');INSERT INTO MUNICIPIOS VALUES
(4590, 19, 'Villanueva del Rosario', 'villanueva-del-rosario', 29312, '36.998470', '-4.367640');INSERT INTO MUNICIPIOS VALUES
(4591, 19, 'Villanueva del Trabuco', 'villanueva-del-trabuco', 29313, '37.029190', '-4.336430');INSERT INTO MUNICIPIOS VALUES
(4592, 19, 'ViÒuela', 'vinuela', 29712, '36.862935', '-4.141159');INSERT INTO MUNICIPIOS VALUES
(4593, 19, 'Yunquera', 'yunquera', 29410, '36.735592', '-4.917550');INSERT INTO MUNICIPIOS VALUES
(4595, 27, 'Abanilla', 'abanilla', 30640, '38.205317', '-1.041031');INSERT INTO MUNICIPIOS VALUES
(4596, 27, 'Abar·n', 'abaran', 30550, '38.207473', '-1.394486');INSERT INTO MUNICIPIOS VALUES
(4597, 27, '¡Åguilas', 'aguilas', 30880, '37.407800', '-1.583974');INSERT INTO MUNICIPIOS VALUES
(4598, 27, 'Albudeite', 'albudeite', 30190, '38.027745', '-1.383259');INSERT INTO MUNICIPIOS VALUES
(4599, 27, 'Alcantarilla', 'alcantarilla', 30820, '37.968545', '-1.215974');INSERT INTO MUNICIPIOS VALUES
(4600, 27, 'Alc·zares', 'alcazares', 30710, '37.744732', '-0.849000');INSERT INTO MUNICIPIOS VALUES
(4601, 27, 'Aledo', 'aledo', 30859, '37.798560', '-1.574699');INSERT INTO MUNICIPIOS VALUES
(4602, 27, 'Alguazas', 'alguazas', 30560, '38.052080', '-1.240724');INSERT INTO MUNICIPIOS VALUES
(4603, 27, 'Alhama de Murcia', 'alhama-de-murcia', 30840, '37.850800', '-1.424149');INSERT INTO MUNICIPIOS VALUES
(4604, 27, 'Archena', 'archena', 30600, '38.117400', '-1.298729');INSERT INTO MUNICIPIOS VALUES
(4605, 27, 'Beniel', 'beniel', 30130, '38.045755', '-1.001974');INSERT INTO MUNICIPIOS VALUES
(4606, 27, 'Blanca', 'blanca', 30540, '38.179353', '-1.377110');INSERT INTO MUNICIPIOS VALUES
(4607, 27, 'Bullas', 'bullas', 30180, '38.048463', '-1.670437');INSERT INTO MUNICIPIOS VALUES
(4608, 27, 'Calasparra', 'calasparra', 30420, '38.229517', '-1.700821');INSERT INTO MUNICIPIOS VALUES
(4609, 27, 'Campos del RÌo', 'campos-del-rio', 30191, '38.040064', '-1.352091');INSERT INTO MUNICIPIOS VALUES
(4610, 27, 'Caravaca de la Cruz', 'caravaca-de-la-cruz', 30400, '38.108678', '-1.865573');INSERT INTO MUNICIPIOS VALUES
(4611, 27, 'Cartagena', 'cartagena', 30593, '37.605154', '-0.990572');INSERT INTO MUNICIPIOS VALUES
(4612, 27, 'CehegÌn', 'cehegin', 30430, '38.093059', '-1.797981');INSERT INTO MUNICIPIOS VALUES
(4613, 27, 'CeutÌ', 'ceuti', 30562, '38.079599', '-1.271925');INSERT INTO MUNICIPIOS VALUES
(4614, 27, 'Cieza', 'cieza', 30530, '38.239444', '-1.418653');INSERT INTO MUNICIPIOS VALUES
(4615, 27, 'Fortuna', 'fortuna', 30620, '38.181310', '-1.127815');INSERT INTO MUNICIPIOS VALUES
(4616, 27, 'Fuente ¡Ålamo de Murcia', 'fuente-alamo-de-murcia', 30320, '37.723563', '-1.167297');INSERT INTO MUNICIPIOS VALUES
(4617, 27, 'Jumilla', 'jumilla', 30520, '38.476371', '-1.321449');INSERT INTO MUNICIPIOS VALUES
(4618, 27, 'Librilla', 'librilla', 30892, '37.888351', '-1.352906');INSERT INTO MUNICIPIOS VALUES
(4619, 27, 'Lorca', 'lorca', 30800, '37.671915', '-1.698589');INSERT INTO MUNICIPIOS VALUES
(4620, 27, 'LorquÌ', 'lorqui', 30564, '38.081490', '-1.255445');INSERT INTO MUNICIPIOS VALUES
(4621, 27, 'MazarrÛn', 'mazarron', 30870, '37.599153', '-1.312351');INSERT INTO MUNICIPIOS VALUES
(4622, 27, 'Molina de Segura', 'molina-de-segura', 30500, '38.050778', '-1.210685');INSERT INTO MUNICIPIOS VALUES
(4623, 27, 'Moratalla', 'moratalla', 30440, '38.189009', '-1.890807');INSERT INTO MUNICIPIOS VALUES
(4624, 27, 'Mula', 'mula', 30170, '38.040909', '-1.486373');INSERT INTO MUNICIPIOS VALUES
(4625, 27, 'Murcia', 'murcia', 30177, '37.983357', '-1.131012');INSERT INTO MUNICIPIOS VALUES
(4626, 27, 'OjÛs', 'ojos', 30611, '38.145509', '-1.343207');INSERT INTO MUNICIPIOS VALUES
(4627, 27, 'Pliego', 'pliego', 30176, '37.990295', '-1.506200');INSERT INTO MUNICIPIOS VALUES
(4628, 27, 'Puerto Lumbreras', 'puerto-lumbreras', 30890, '37.562252', '-1.811285');INSERT INTO MUNICIPIOS VALUES
(4629, 27, 'Ricote', 'ricote', 30610, '38.152563', '-1.366940');INSERT INTO MUNICIPIOS VALUES
(4630, 27, 'San Javier', 'san-javier', 30730, '37.805495', '-0.834532');INSERT INTO MUNICIPIOS VALUES
(4631, 27, 'San Pedro del Pinatar', 'san-pedro-del-pinatar', 30740, '37.835361', '-0.791745');INSERT INTO MUNICIPIOS VALUES
(4632, 27, 'Santomera', 'santomera', 30148, '38.060138', '-1.047263');INSERT INTO MUNICIPIOS VALUES
(4633, 27, 'Torre-Pacheco', 'torre-pacheco', 30700, '37.744131', '-0.953708');INSERT INTO MUNICIPIOS VALUES
(4634, 27, 'Torres de Cotillas', 'torres-de-cotillas', 30565, '38.028267', '-1.239996');INSERT INTO MUNICIPIOS VALUES
(4635, 27, 'Totana', 'totana', 30850, '37.771274', '-1.500192');INSERT INTO MUNICIPIOS VALUES
(4636, 27, 'Ulea', 'ulea', 30612, '38.139738', '-1.329775');INSERT INTO MUNICIPIOS VALUES
(4637, 27, 'UniÛn', 'union', 30360, '37.617070', '-0.879979');INSERT INTO MUNICIPIOS VALUES
(4638, 27, 'Villanueva del RÌo Segura', 'villanueva-del-rio-segura', 30613, '38.136261', '-1.323853');INSERT INTO MUNICIPIOS VALUES
(4639, 27, 'Yecla', 'yecla', 30510, '38.615714', '-1.117601');INSERT INTO MUNICIPIOS VALUES
(4641, 31, 'Ab·igar', 'abaigar', 31280, '42.647630', '-2.143583');INSERT INTO MUNICIPIOS VALUES
(4642, 31, 'Ab·rzuza', 'abarzuza', 31178, '42.727685', '-2.020214');INSERT INTO MUNICIPIOS VALUES
(4643, 31, 'Abaurrea Alta', 'abaurrea-alta', 31692, '42.903300', '-1.209099');INSERT INTO MUNICIPIOS VALUES
(4645, 31, 'Aberin', 'aberin', 31264, '42.619702', '-2.008220');INSERT INTO MUNICIPIOS VALUES
(4646, 31, 'Ablitas', 'ablitas', 31523, '41.975270', '-1.640419');INSERT INTO MUNICIPIOS VALUES
(4647, 31, 'AdiÛs', 'adios', 31153, '42.685775', '-1.736234');INSERT INTO MUNICIPIOS VALUES
(4648, 31, 'Aguilar de CodÈs', 'aguilar-de-codes', 31228, '42.612532', '-2.392399');INSERT INTO MUNICIPIOS VALUES
(4649, 31, 'Aibar', 'aibar', 31460, '42.591478', '-1.363305');INSERT INTO MUNICIPIOS VALUES
(4650, 31, 'AllÌn', 'allin', 31290, '42.709113', '-2.075750');INSERT INTO MUNICIPIOS VALUES
(4651, 31, 'Allo', 'allo', 31262, '42.568665', '-2.021709');INSERT INTO MUNICIPIOS VALUES
(4652, 31, 'Alsasua', 'alsasua', 31800, '42.895908', '-2.169660');INSERT INTO MUNICIPIOS VALUES
(4653, 31, 'AmÈscoa Baja', 'amescoa-baja', 31010, '42.772876', '-2.135084');INSERT INTO MUNICIPIOS VALUES
(4654, 31, 'AncÌn', 'ancin', 31281, '42.658430', '-2.188004');INSERT INTO MUNICIPIOS VALUES
(4655, 31, 'Andosilla', 'andosilla', 31261, '42.372856', '-1.947971');INSERT INTO MUNICIPIOS VALUES
(4656, 31, 'Anso·in', 'ansoain', 31013, '42.837880', '-1.647699');INSERT INTO MUNICIPIOS VALUES
(4657, 31, 'AnuÈ', 'anue', 31798, '42.978954', '-1.588855');INSERT INTO MUNICIPIOS VALUES
(4658, 31, 'AÒorbe', 'anorbe', 31154, '42.658752', '-1.710614');INSERT INTO MUNICIPIOS VALUES
(4659, 31, 'Aoiz', 'aoiz', 31430, '42.782490', '-1.375370');INSERT INTO MUNICIPIOS VALUES
(4660, 31, 'Araitz', 'araitz', 31797, '43.037394', '-1.984523');INSERT INTO MUNICIPIOS VALUES
(4661, 31, 'Arakil', 'arakil', 31840, '42.915287', '-1.894367');INSERT INTO MUNICIPIOS VALUES
(4662, 31, 'Aranarache', 'aranarache', 31271, '42.779716', '-2.227478');INSERT INTO MUNICIPIOS VALUES
(4663, 31, 'Aranguren', 'aranguren', 31192, '42.789231', '-1.615181');INSERT INTO MUNICIPIOS VALUES
(4664, 31, 'Arano', 'arano', 31754, '43.200240', '-1.895939');INSERT INTO MUNICIPIOS VALUES
(4665, 31, 'Arantza', 'arantza', 31790, '43.195782', '-1.724932');INSERT INTO MUNICIPIOS VALUES
(4666, 31, 'Aras', 'aras', 31239, '42.561718', '-2.355190');INSERT INTO MUNICIPIOS VALUES
(4667, 31, 'Arbizu', 'arbizu', 31839, '42.916135', '-2.038599');INSERT INTO MUNICIPIOS VALUES
(4668, 31, 'Arce', 'arce', 31438, '42.851871', '-1.375160');INSERT INTO MUNICIPIOS VALUES
(4669, 31, 'Arcos', 'arcos', 31210, '42.568272', '-2.192230');INSERT INTO MUNICIPIOS VALUES
(4670, 31, 'Arellano', 'arellano', 31263, '42.606382', '-2.044866');INSERT INTO MUNICIPIOS VALUES
(4671, 31, 'Areso', 'areso', 31876, '43.081319', '-1.950423');INSERT INTO MUNICIPIOS VALUES
(4672, 31, 'Arguedas', 'arguedas', 31513, '42.176148', '-1.599856');INSERT INTO MUNICIPIOS VALUES
(4673, 31, 'Aria', 'aria', 31671, '42.952779', '-1.265144');INSERT INTO MUNICIPIOS VALUES
(4674, 31, 'Aribe', 'aribe', 31671, '42.944081', '-1.263793');INSERT INTO MUNICIPIOS VALUES
(4675, 31, 'ArmaÒanzas', 'armananzas', 31228, '42.560956', '-2.284085');INSERT INTO MUNICIPIOS VALUES
(4676, 31, 'ArrÛniz', 'arroniz', 31243, '42.589020', '-2.093464');INSERT INTO MUNICIPIOS VALUES
(4677, 31, 'Arruazu', 'arruazu', 31840, '42.922351', '-2.001311');INSERT INTO MUNICIPIOS VALUES
(4678, 31, 'Artajona', 'artajona', 31140, '42.587330', '-1.763589');INSERT INTO MUNICIPIOS VALUES
(4679, 31, 'Artazu', 'artazu', 31109, '42.691640', '-1.838419');INSERT INTO MUNICIPIOS VALUES
(4680, 31, 'Atez', 'atez', 31867, '42.968490', '-1.722399');INSERT INTO MUNICIPIOS VALUES
(4681, 31, 'Burguete', 'burguete', 31640, '42.988449', '-1.336420');INSERT INTO MUNICIPIOS VALUES
(4682, 31, 'Ayegui', 'ayegui', 31240, '42.653740', '-2.041809');INSERT INTO MUNICIPIOS VALUES
(4683, 31, 'Azagra', 'azagra', 31560, '42.306485', '-1.896874');INSERT INTO MUNICIPIOS VALUES
(4684, 31, 'Azuelo', 'azuelo', 31228, '42.608112', '-2.348468');INSERT INTO MUNICIPIOS VALUES
(4685, 31, 'Bakaiku', 'bakaiku', 31810, '42.892441', '-2.101479');INSERT INTO MUNICIPIOS VALUES
(4686, 31, 'BaraÒain', 'baranain', 31010, '42.803100', '-1.679359');INSERT INTO MUNICIPIOS VALUES
(4687, 31, 'Bar·soain', 'barasoain', 31395, '42.605170', '-1.645544');INSERT INTO MUNICIPIOS VALUES
(4688, 31, 'Barbarin', 'barbarin', 31243, '42.602135', '-2.101554');INSERT INTO MUNICIPIOS VALUES
(4689, 31, 'Bargota', 'bargota', 31229, '42.558260', '-2.309727');INSERT INTO MUNICIPIOS VALUES
(4690, 31, 'Barillas', 'barillas', 31523, '41.971199', '-1.663062');INSERT INTO MUNICIPIOS VALUES
(4691, 31, 'Basaburua', 'basaburua', 31866, '43.025369', '-1.826409');INSERT INTO MUNICIPIOS VALUES
(4692, 31, 'Baztan', 'baztan', 31700, '43.144080', '-1.518849');INSERT INTO MUNICIPIOS VALUES
(4693, 31, 'Beintza-Labaien', 'beintza-labaien', 31753, '43.087382', '-1.743221');INSERT INTO MUNICIPIOS VALUES
(4694, 31, 'Beire', 'beire', 31393, '42.453775', '-1.621479');INSERT INTO MUNICIPIOS VALUES
(4695, 31, 'Belasco·in', 'belascoain', 31174, '42.756045', '-1.830279');INSERT INTO MUNICIPIOS VALUES
(4696, 31, 'Vera de Bidasoa', 'vera-de-bidasoa', 31780, '43.280891', '-1.681380');INSERT INTO MUNICIPIOS VALUES
(4697, 31, 'Berbinzana', 'berbinzana', 31252, '42.527120', '-1.834729');INSERT INTO MUNICIPIOS VALUES
(4698, 31, 'Beri·in', 'beriain', 31191, '42.734205', '-1.645289');INSERT INTO MUNICIPIOS VALUES
(4699, 31, 'Berrioplano', 'berrioplano', 31195, '42.847062', '-1.686801');INSERT INTO MUNICIPIOS VALUES
(4700, 31, 'Berriozar', 'berriozar', 31013, '42.844093', '-1.669659');INSERT INTO MUNICIPIOS VALUES
(4701, 31, 'Bertizarana', 'bertizarana', 31792, '43.133555', '-1.629014');INSERT INTO MUNICIPIOS VALUES
(4702, 31, 'Betelu', 'betelu', 31890, '43.025325', '-1.980144');INSERT INTO MUNICIPIOS VALUES
(4703, 31, 'Bidaurreta', 'bidaurreta', 31174, '42.774710', '-1.834594');INSERT INTO MUNICIPIOS VALUES
(4704, 31, 'Biurrun-Olcoz', 'biurrun-olcoz', 31398, '42.692175', '-1.678709');INSERT INTO MUNICIPIOS VALUES
(4705, 31, 'BuÒuel', 'bunuel', 31540, '41.980549', '-1.443758');INSERT INTO MUNICIPIOS VALUES
(4706, 31, 'Burgui/Burgi', 'burgui-burgi', 31412, '42.720313', '-1.003575');INSERT INTO MUNICIPIOS VALUES
(4707, 31, 'Burlada/Burlata', 'burlada-burlata', 31600, '42.826569', '-1.614003');INSERT INTO MUNICIPIOS VALUES
(4708, 31, 'Busto', 'busto', 31229, '42.549381', '-2.241983');INSERT INTO MUNICIPIOS VALUES
(4709, 31, 'Cabanillas', 'cabanillas', 31511, '42.031412', '-1.523495');INSERT INTO MUNICIPIOS VALUES
(4710, 31, 'Cabredo', 'cabredo', 31227, '42.629507', '-2.413001');INSERT INTO MUNICIPIOS VALUES
(4711, 31, 'Cadreita', 'cadreita', 31515, '42.217903', '-1.695027');INSERT INTO MUNICIPIOS VALUES
(4712, 31, 'Caparroso', 'caparroso', 31380, '42.341671', '-1.649408');INSERT INTO MUNICIPIOS VALUES
(4713, 31, 'C·rcar', 'carcar', 31579, '42.390248', '-1.971273');INSERT INTO MUNICIPIOS VALUES
(4714, 31, 'Carcastillo', 'carcastillo', 31310, '42.379692', '-1.442943');INSERT INTO MUNICIPIOS VALUES
(4715, 31, 'Cascante', 'cascante', 31520, '41.998731', '-1.678977');INSERT INTO MUNICIPIOS VALUES
(4716, 31, 'C·seda', 'caseda', 31490, '42.522945', '-1.367154');INSERT INTO MUNICIPIOS VALUES
(4717, 31, 'Castejon', 'elcastejon', 31590, '42.168079', '-1.690478');INSERT INTO MUNICIPIOS VALUES
(4718, 31, 'Castillonuevo', 'castillonuevo', 31454, '42.678839', '-1.044645');INSERT INTO MUNICIPIOS VALUES
(4719, 31, 'Cendea de Olza/Oltza Zendea', 'cendea-de-olza-oltza-zendea', 31171, '42.850516', '-1.766696');INSERT INTO MUNICIPIOS VALUES
(4720, 31, 'CintruÈnigo', 'cintruenigo', 31592, '42.080165', '-1.805019');INSERT INTO MUNICIPIOS VALUES
(4721, 31, 'Cirauqui', 'cirauqui', 31131, '42.675747', '-1.890678');INSERT INTO MUNICIPIOS VALUES
(4722, 31, 'Ciriza', 'ciriza', 31174, '42.790866', '-1.826906');INSERT INTO MUNICIPIOS VALUES
(4723, 31, 'Cizur', 'cizur', 31190, '42.787748', '-1.676745');INSERT INTO MUNICIPIOS VALUES
(4724, 31, 'Corella', 'corella', 31591, '42.114062', '-1.784570');INSERT INTO MUNICIPIOS VALUES
(4725, 31, 'Cortes', 'cortes', 31530, '41.922620', '-1.421785');INSERT INTO MUNICIPIOS VALUES
(4726, 31, 'Desojo', 'desojo', 31229, '42.587308', '-2.273312');INSERT INTO MUNICIPIOS VALUES
(4727, 31, 'Dicastillo', 'dicastillo', 31263, '42.596028', '-2.028866');INSERT INTO MUNICIPIOS VALUES
(4728, 31, 'Donamaria', 'donamaria', 31750, '43.116930', '-1.666274');INSERT INTO MUNICIPIOS VALUES
(4729, 31, 'Doneztebe/Santesteban', 'doneztebe-santesteban', 31740, '43.130931', '-1.668720');INSERT INTO MUNICIPIOS VALUES
(4730, 31, 'Echarri', 'echarri', 31174, '42.780693', '-1.826220');INSERT INTO MUNICIPIOS VALUES
(4732, 31, 'Elgorriaga', 'elgorriaga', 31744, '43.139340', '-1.689448');INSERT INTO MUNICIPIOS VALUES
(4733, 31, 'EnÈriz', 'eneriz', 31153, '42.670225', '-1.728888');INSERT INTO MUNICIPIOS VALUES
(4734, 31, 'Eratsun', 'eratsun', 31748, '43.083715', '-1.796694');INSERT INTO MUNICIPIOS VALUES
(4735, 31, 'Ergoiena', 'ergoiena', 31829, '42.876467', '-2.023373');INSERT INTO MUNICIPIOS VALUES
(4736, 31, 'Erro', 'erro', 31697, '42.943041', '-1.447105');INSERT INTO MUNICIPIOS VALUES
(4737, 31, 'Eslava', 'eslava', 31494, '42.566388', '-1.500235');INSERT INTO MUNICIPIOS VALUES
(4738, 31, 'Esparza de Salazar/Espartza Zaraitzu', 'esparza-de-salazar-espartza-zaraitzu', 31453, '42.853536', '-1.099405');INSERT INTO MUNICIPIOS VALUES
(4739, 31, 'Espronceda', 'espronceda', 31228, '42.596439', '-2.305326');INSERT INTO MUNICIPIOS VALUES
(4740, 31, 'Estella/Lizarra', 'estella-lizarra', 31200, '42.670509', '-2.030625');INSERT INTO MUNICIPIOS VALUES
(4741, 31, 'Esteribar', 'esteribar', 31699, '42.950203', '-1.533923');INSERT INTO MUNICIPIOS VALUES
(4742, 31, 'Etayo', 'etayo', 31281, '42.617855', '-2.155809');INSERT INTO MUNICIPIOS VALUES
(4743, 31, 'Etxalar', 'etxalar', 31760, '43.233979', '-1.637306');INSERT INTO MUNICIPIOS VALUES
(4744, 31, 'Etxarri-Aranatz', 'etxarri-aranatz', 31820, '42.908003', '-2.063885');INSERT INTO MUNICIPIOS VALUES
(4745, 31, 'Etxauri', 'etxauri', 31174, '42.794298', '-1.791501');INSERT INTO MUNICIPIOS VALUES
(4746, 31, 'Eulate', 'eulate', 31271, '42.776724', '-2.207823');INSERT INTO MUNICIPIOS VALUES
(4747, 31, 'Ezcabarte', 'ezcabarte', 31194, '42.850736', '-1.620741');INSERT INTO MUNICIPIOS VALUES
(4748, 31, 'Ezc·roz/Ezkaroze', 'ezcaroz-ezkaroze', 31690, '42.887568', '-1.097002');INSERT INTO MUNICIPIOS VALUES
(4749, 31, 'Ezkurra', 'ezkurra', 31749, '43.084655', '-1.824031');INSERT INTO MUNICIPIOS VALUES
(4750, 31, 'Ezprogui', 'ezprogui', 31003, '42.583343', '-1.415927');INSERT INTO MUNICIPIOS VALUES
(4751, 31, 'Falces', 'falces', 31370, '42.388029', '-1.793690');INSERT INTO MUNICIPIOS VALUES
(4752, 31, 'Fitero', 'fitero', 31593, '42.056590', '-1.858106');INSERT INTO MUNICIPIOS VALUES
(4753, 31, 'Fontellas', 'fontellas', 31512, '42.027778', '-1.575637');INSERT INTO MUNICIPIOS VALUES
(4754, 31, 'Funes', 'funes', 31360, '42.314322', '-1.803131');INSERT INTO MUNICIPIOS VALUES
(4755, 31, 'FustiÒana', 'fustinana', 31510, '42.020063', '-1.485901');INSERT INTO MUNICIPIOS VALUES
(4756, 31, 'Galar', 'galar', 31191, '42.761507', '-1.698675');INSERT INTO MUNICIPIOS VALUES
(4757, 31, 'Gallipienzo', 'gallipienzo', 31493, '42.523609', '-1.409683');INSERT INTO MUNICIPIOS VALUES
(4758, 31, 'GalluÈs/Galoze', 'gallues-galoze', 31451, '42.783654', '-1.095328');INSERT INTO MUNICIPIOS VALUES
(4759, 31, 'Garaioa', 'garaioa', 31692, '42.930159', '-1.242828');INSERT INTO MUNICIPIOS VALUES
(4760, 31, 'Garde', 'garde', 31414, '42.788630', '-0.924053');INSERT INTO MUNICIPIOS VALUES
(4761, 31, 'GarÌnoain', 'garinoain', 31395, '42.600957', '-1.643872');INSERT INTO MUNICIPIOS VALUES
(4762, 31, 'Garralda', 'garralda', 31693, '42.948444', '-1.286216');INSERT INTO MUNICIPIOS VALUES
(4763, 31, 'Genevilla', 'genevilla', 31227, '42.645008', '-2.391372');INSERT INTO MUNICIPIOS VALUES
(4764, 31, 'Goizueta', 'goizueta', 31754, '43.171414', '-1.864071');INSERT INTO MUNICIPIOS VALUES
(4765, 31, 'GoÒi', 'goni', 31172, '42.852215', '-1.902523');INSERT INTO MUNICIPIOS VALUES
(4767, 31, 'Gues·laz', 'guesalaz', 31175, '42.750164', '-1.916728');INSERT INTO MUNICIPIOS VALUES
(4768, 31, 'Guirguillano', 'guirguillano', 31291, '42.717791', '-1.878061');INSERT INTO MUNICIPIOS VALUES
(4769, 31, 'Hiriberri/Villanueva de Aezkoa', 'hiriberri-villanueva-de-aezkoa', 31671, '42.945271', '-1.230254');INSERT INTO MUNICIPIOS VALUES
(4770, 31, 'Huarte/Uharte', 'huarte-uharte', 31620, '42.831888', '-1.590443');INSERT INTO MUNICIPIOS VALUES
(4771, 31, 'Ibargoiti', 'ibargoiti', 31472, '42.692593', '-1.486545');INSERT INTO MUNICIPIOS VALUES
(4772, 31, 'Igantzi', 'igantzi', 31790, '43.226068', '-1.699233');INSERT INTO MUNICIPIOS VALUES
(4773, 31, 'Ig˙zquiza', 'iguzquiza', 31241, '42.645261', '-2.084742');INSERT INTO MUNICIPIOS VALUES
(4774, 31, 'Imotz', 'imotz', 31869, '42.954475', '-1.823130');INSERT INTO MUNICIPIOS VALUES
(4775, 31, 'IraÒeta', 'iraneta', 31849, '42.923058', '-1.944795');INSERT INTO MUNICIPIOS VALUES
(4776, 31, 'Irurtzun', 'irurtzun', 31860, '42.919978', '-1.823902');
INSERT INTO `poblacion` (`idpoblacion`, `idprovincia`, `poblacion`, `poblacionseo`, `postal`, `latitud`, `longitud`) VALUES
(4777, 31, 'Isaba/Izaba', 'isaba-izaba', 31417, '42.861496', '-0.924740');INSERT INTO MUNICIPIOS VALUES
(4778, 31, 'Ituren', 'ituren', 31745, '43.129256', '-1.706915');INSERT INTO MUNICIPIOS VALUES
(4779, 31, 'Iturmendi', 'iturmendi', 31810, '42.889533', '-2.119031');INSERT INTO MUNICIPIOS VALUES
(4780, 31, 'Iza', 'iza', 31170, '42.837002', '-1.728973');INSERT INTO MUNICIPIOS VALUES
(4781, 31, 'Izagaondoa', 'izagaondoa', 31421, '42.736217', '-1.421313');INSERT INTO MUNICIPIOS VALUES
(4782, 31, 'Izalzu/Itzaltzu', 'izalzu-itzaltzu', 31689, '42.913645', '-1.052284');INSERT INTO MUNICIPIOS VALUES
(4783, 31, 'Jaurrieta', 'jaurrieta', 31691, '42.887175', '-1.136656');INSERT INTO MUNICIPIOS VALUES
(4784, 31, 'Javier', 'javier', 31411, '42.591021', '-1.208797');INSERT INTO MUNICIPIOS VALUES
(4785, 31, 'JuslapeÒa', 'juslapena', 31193, '42.899044', '-1.694770');INSERT INTO MUNICIPIOS VALUES
(4786, 31, 'Lakuntza', 'lakuntza', 31830, '42.921486', '-2.023330');INSERT INTO MUNICIPIOS VALUES
(4787, 31, 'Lana', 'lana', 31283, '42.706123', '-2.246919');INSERT INTO MUNICIPIOS VALUES
(4788, 31, 'Lantz', 'lantz', 31798, '42.997428', '-1.622543');INSERT INTO MUNICIPIOS VALUES
(4789, 31, 'LapoblaciÛn', 'lapoblacion', 31227, '42.605379', '-2.460036');INSERT INTO MUNICIPIOS VALUES
(4790, 31, 'Larraga', 'larraga', 31251, '42.558960', '-1.848578');INSERT INTO MUNICIPIOS VALUES
(4791, 31, 'Larraona', 'larraona', 31270, '42.779370', '-2.257519');INSERT INTO MUNICIPIOS VALUES
(4792, 31, 'Larraun', 'larraun', 31670, '42.995200', '-1.224074');INSERT INTO MUNICIPIOS VALUES
(4793, 31, 'LazagurrÌa', 'lazagurria', 31588, '42.492954', '-2.242198');INSERT INTO MUNICIPIOS VALUES
(4794, 31, 'Leache', 'leache', 31460, '42.607558', '-1.406507');INSERT INTO MUNICIPIOS VALUES
(4795, 31, 'Legarda', 'legarda', 31133, '42.711768', '-1.772704');INSERT INTO MUNICIPIOS VALUES
(4796, 31, 'Legaria', 'legaria', 31281, '42.649270', '-2.173705');INSERT INTO MUNICIPIOS VALUES
(4797, 31, 'Leitza', 'leitza', 31880, '43.078230', '-1.914668');INSERT INTO MUNICIPIOS VALUES
(4798, 31, 'Lekunberri', 'lekunberri', 31870, '43.001497', '-1.889648');INSERT INTO MUNICIPIOS VALUES
(4799, 31, 'Leoz', 'leoz', 31395, '42.645545', '-1.519547');INSERT INTO MUNICIPIOS VALUES
(4800, 31, 'Lerga', 'lerga', 31494, '42.567273', '-1.500964');INSERT INTO MUNICIPIOS VALUES
(4801, 31, 'LerÌn', 'lerin', 31260, '42.482954', '-1.972561');INSERT INTO MUNICIPIOS VALUES
(4802, 31, 'Lesaka', 'lesaka', 31770, '43.246985', '-1.703010');INSERT INTO MUNICIPIOS VALUES
(4803, 31, 'Lez·un', 'lezaun', 31177, '42.778393', '-1.994963');INSERT INTO MUNICIPIOS VALUES
(4804, 31, 'LiÈdena', 'liedena', 31487, '42.619086', '-1.275659');INSERT INTO MUNICIPIOS VALUES
(4805, 31, 'Lizo·in', 'lizoain', 31482, '42.798046', '-1.467147');INSERT INTO MUNICIPIOS VALUES
(4806, 31, 'Lodosa', 'lodosa', 31580, '42.425009', '-2.078176');INSERT INTO MUNICIPIOS VALUES
(4807, 31, 'LÛnguida/Longida', 'longuida-longida', 31430, '42.767494', '-1.401014');INSERT INTO MUNICIPIOS VALUES
(4808, 31, 'Lumbier', 'lumbier', 31440, '42.653657', '-1.307631');INSERT INTO MUNICIPIOS VALUES
(4809, 31, 'Luquin', 'luquin', 31243, '42.612233', '-2.099676');INSERT INTO MUNICIPIOS VALUES
(4810, 31, 'Luzaide/Valcarlos', 'luzaide-valcarlos', 31660, '43.092146', '-1.302052');INSERT INTO MUNICIPIOS VALUES
(4811, 31, 'MaÒeru', 'maneru', 31130, '42.669973', '-1.862912');INSERT INTO MUNICIPIOS VALUES
(4812, 31, 'MaraÛn', 'maranon', 31227, '42.629854', '-2.439222');INSERT INTO MUNICIPIOS VALUES
(4813, 31, 'Marcilla', 'marcilla', 31340, '42.327205', '-1.739101');INSERT INTO MUNICIPIOS VALUES
(4814, 31, 'MÈlida', 'melida', 31382, '42.358639', '-1.548171');INSERT INTO MUNICIPIOS VALUES
(4815, 31, 'Mendavia', 'mendavia', 31587, '42.444678', '-2.200699');INSERT INTO MUNICIPIOS VALUES
(4816, 31, 'Mendaza', 'mendaza', 31282, '42.641757', '-2.234988');INSERT INTO MUNICIPIOS VALUES
(4817, 31, 'MendigorrÌa', 'mendigorria', 31150, '42.628496', '-1.837463');INSERT INTO MUNICIPIOS VALUES
(4818, 31, 'Metauten', 'metauten', 31241, '42.676946', '-2.129631');INSERT INTO MUNICIPIOS VALUES
(4819, 31, 'Milagro', 'milagro', 09460, '42.241100', '-1.763134');INSERT INTO MUNICIPIOS VALUES
(4820, 31, 'Mirafuentes', 'mirafuentes', 31219, '42.622339', '-2.279835');INSERT INTO MUNICIPIOS VALUES
(4821, 31, 'Miranda de Arga', 'miranda-de-arga', 31253, '42.483492', '-1.828451');INSERT INTO MUNICIPIOS VALUES
(4822, 31, 'Monreal', 'monreal', 31471, '42.704862', '-1.506157');INSERT INTO MUNICIPIOS VALUES
(4823, 31, 'Monteagudo', 'monteagudo', 31522, '41.962458', '-1.692109');INSERT INTO MUNICIPIOS VALUES
(4824, 31, 'Morentin', 'morentin', 31264, '42.612675', '-2.013803');INSERT INTO MUNICIPIOS VALUES
(4825, 31, 'Mues', 'mues', 31219, '42.606405', '-2.225976');INSERT INTO MUNICIPIOS VALUES
(4826, 31, 'Murchante', 'murchante', 31521, '42.030424', '-1.653142');INSERT INTO MUNICIPIOS VALUES
(4827, 31, 'Murieta', 'murieta', 31280, '42.655953', '-2.153835');INSERT INTO MUNICIPIOS VALUES
(4828, 31, 'Murillo el Cuende', 'murillo-el-cuende', 31391, '42.397221', '-1.629453');INSERT INTO MUNICIPIOS VALUES
(4829, 31, 'Murillo el Fruto', 'murillo-el-fruto', 31313, '42.392942', '-1.461353');INSERT INTO MUNICIPIOS VALUES
(4830, 31, 'Muruz·bal', 'muruzabal', 31152, '42.689943', '-1.771545');INSERT INTO MUNICIPIOS VALUES
(4831, 31, 'NavascuÈs', 'navascues', 31450, '42.718737', '-1.116314');INSERT INTO MUNICIPIOS VALUES
(4832, 31, 'Nazar', 'nazar', 31282, '42.636705', '-2.279406');INSERT INTO MUNICIPIOS VALUES
(4833, 31, 'No·in, Valle de Elorz/Noain, Elortzibar', 'noain-valle-de-elorz-noain-elortzibar', 31110, '42.760783', '-1.633615');INSERT INTO MUNICIPIOS VALUES
(4834, 31, 'Obanos', 'obanos', 31151, '42.679194', '-1.785933');INSERT INTO MUNICIPIOS VALUES
(4835, 31, 'OchagavÌa/Otsagabia', 'ochagavia-otsagabia', 31680, '42.905582', '-1.090822');INSERT INTO MUNICIPIOS VALUES
(4836, 31, 'Oco', 'oco', 31281, '42.638347', '-2.164435');INSERT INTO MUNICIPIOS VALUES
(4837, 31, 'Odieta', 'odieta', 31799, '42.940088', '-1.638122');INSERT INTO MUNICIPIOS VALUES
(4838, 31, 'Oitz', 'oitz', 31751, '43.109662', '-1.686015');INSERT INTO MUNICIPIOS VALUES
(4839, 31, 'Olaibar', 'olaibar', 31799, '42.886153', '-1.602802');INSERT INTO MUNICIPIOS VALUES
(4840, 31, 'Olazti/OlazagutÌa', 'olazti-olazagutia', 31809, '42.875429', '-2.198231');INSERT INTO MUNICIPIOS VALUES
(4841, 31, 'Olejua', 'olejua', 31281, '42.623349', '-2.141047');INSERT INTO MUNICIPIOS VALUES
(4842, 31, 'Olite', 'olite', 31390, '42.480896', '-1.651812');INSERT INTO MUNICIPIOS VALUES
(4843, 31, 'Ollo', 'ollo', 31172, '42.867315', '-1.859050');INSERT INTO MUNICIPIOS VALUES
(4844, 31, 'OlÛriz', 'oloriz', 31396, '42.635758', '-1.612844');INSERT INTO MUNICIPIOS VALUES
(4845, 31, 'Orbaitzeta', 'orbaitzeta', 31670, '42.975328', '-1.232100');INSERT INTO MUNICIPIOS VALUES
(4846, 31, 'Orbara', 'orbara', 31671, '42.966708', '-1.241798');INSERT INTO MUNICIPIOS VALUES
(4847, 31, 'OrÌsoain', 'orisoain', 31395, '42.601209', '-1.602974');INSERT INTO MUNICIPIOS VALUES
(4848, 31, 'Orkoien', 'orkoien', 31160, '42.822902', '-1.702259');INSERT INTO MUNICIPIOS VALUES
(4849, 31, 'Oronz/Orontze', 'oronz-orontze', 31451, '42.868699', '-1.096830');INSERT INTO MUNICIPIOS VALUES
(4850, 31, 'Oroz-Betelu', 'oroz-betelu', 31439, '42.904262', '-1.303167');INSERT INTO MUNICIPIOS VALUES
(4851, 31, 'Orreaga/Roncesvalles', 'orreaga-roncesvalles', 31650, '43.008303', '-1.321020');INSERT INTO MUNICIPIOS VALUES
(4852, 31, 'Oteiza', 'oteiza', 31250, '42.620949', '-1.953936');INSERT INTO MUNICIPIOS VALUES
(4853, 31, 'Pamplona/IruÒa', 'pamplona-iruna', 31191, '42.818196', '-1.644044');INSERT INTO MUNICIPIOS VALUES
(4854, 31, 'Peralta', 'peralta', 31350, '42.339006', '-1.797552');INSERT INTO MUNICIPIOS VALUES
(4855, 31, 'Petilla de AragÛn', 'petilla-de-aragon', 50686, '42.461349', '-1.093955');INSERT INTO MUNICIPIOS VALUES
(4856, 31, 'Piedramillera', 'piedramillera', 31219, '42.633201', '-2.201900');INSERT INTO MUNICIPIOS VALUES
(4857, 31, 'Pitillas', 'pitillas', 31392, '42.422506', '-1.622114');INSERT INTO MUNICIPIOS VALUES
(4858, 31, 'Puente la Reina/Gares', 'puente-la-reina-gares', 31100, '42.671771', '-1.816607');INSERT INTO MUNICIPIOS VALUES
(4859, 31, 'Pueyo', 'pueyo', 31394, '42.565788', '-1.647949');INSERT INTO MUNICIPIOS VALUES
(4860, 31, 'Ribaforada', 'ribaforada', 31550, '41.997008', '-1.510534');INSERT INTO MUNICIPIOS VALUES
(4861, 31, 'Romanzado', 'romanzado', 31454, '42.681804', '-1.235619');INSERT INTO MUNICIPIOS VALUES
(4862, 31, 'Roncal/Erronkari', 'roncal-erronkari', 31415, '42.808877', '-0.957012');INSERT INTO MUNICIPIOS VALUES
(4863, 31, 'Sada', 'lasada', 31491, '42.586582', '-1.398268');INSERT INTO MUNICIPIOS VALUES
(4864, 31, 'SaldÌas', 'saldias', 31747, '43.094246', '-1.784077');INSERT INTO MUNICIPIOS VALUES
(4865, 31, 'Salinas de Oro', 'salinas-de-oro', 31175, '42.777417', '-1.891279');INSERT INTO MUNICIPIOS VALUES
(4866, 31, 'San Adri·n', 'san-adrian', 31570, '42.344430', '-1.940975');INSERT INTO MUNICIPIOS VALUES
(4867, 31, 'San MartÌn de Unx', 'san-martin-de-unx', 31495, '42.526013', '-1.560917');INSERT INTO MUNICIPIOS VALUES
(4868, 31, 'Sang', 'sang', 31400, '42.575364', '-1.284542');INSERT INTO MUNICIPIOS VALUES
(4869, 31, 'Sansol', 'sansol', 31220, '42.553902', '-2.267733');INSERT INTO MUNICIPIOS VALUES
(4870, 31, 'Santacara', 'santacara', 31314, '42.375856', '-1.553965');INSERT INTO MUNICIPIOS VALUES
(4871, 31, 'SarriÈs/Sartze', 'sarries-sartze', 31451, '42.835758', '-1.101894');INSERT INTO MUNICIPIOS VALUES
(4872, 31, 'Sartaguda', 'sartaguda', 31589, '42.383053', '-2.067704');INSERT INTO MUNICIPIOS VALUES
(4873, 31, 'Sesma', 'sesma', 31293, '42.478238', '-2.084227');INSERT INTO MUNICIPIOS VALUES
(4874, 31, 'Sorlada', 'sorlada', 31219, '42.615328', '-2.215376');INSERT INTO MUNICIPIOS VALUES
(4875, 31, 'Sunbilla', 'sunbilla', 31791, '43.164997', '-1.670694');INSERT INTO MUNICIPIOS VALUES
(4876, 31, 'Tafalla', 'tafalla', 31300, '42.531706', '-1.673698');INSERT INTO MUNICIPIOS VALUES
(4877, 31, 'Tiebas-Muruarte de Reta', 'tiebas-muruarte-de-reta', 31398, '42.693098', '-1.639881');INSERT INTO MUNICIPIOS VALUES
(4878, 31, 'Tirapu', 'tirapu', 31154, '42.656561', '-1.703053');INSERT INTO MUNICIPIOS VALUES
(4879, 31, 'Torralba del RÌo', 'torralba-del-rio', 31228, '42.608569', '-2.332706');INSERT INTO MUNICIPIOS VALUES
(4881, 31, 'Tudela', 'tudela', 31500, '42.065352', '-1.604691');INSERT INTO MUNICIPIOS VALUES
(4882, 31, 'Tulebras', 'tulebras', 31522, '41.983037', '-1.658893');INSERT INTO MUNICIPIOS VALUES
(4883, 31, 'Ucar', 'ucar', 31154, '42.676189', '-1.706657');INSERT INTO MUNICIPIOS VALUES
(4884, 31, 'Uharte-Arakil', 'uharte-arakil', 31840, '42.920983', '-1.972432');INSERT INTO MUNICIPIOS VALUES
(4885, 31, 'UjuÈ', 'ujue', 31496, '42.507603', '-1.499119');INSERT INTO MUNICIPIOS VALUES
(4886, 31, 'Ultzama', 'ultzama', 31799, '43.000253', '-1.677175');INSERT INTO MUNICIPIOS VALUES
(4887, 31, 'Unciti', 'unciti', 31422, '42.747674', '-1.501651');INSERT INTO MUNICIPIOS VALUES
(4888, 31, 'UnzuÈ', 'unzue', 31396, '42.652584', '-1.625676');INSERT INTO MUNICIPIOS VALUES
(4889, 31, 'Urdazubi/Urdax', 'urdazubi-urdax', 31711, '43.276237', '-1.504827');INSERT INTO MUNICIPIOS VALUES
(4890, 31, 'Urdiain', 'urdiain', 31810, '42.887411', '-2.136455');INSERT INTO MUNICIPIOS VALUES
(4891, 31, 'Urraul Alto', 'urraul-alto', 31448, '42.775905', '-1.247334');INSERT INTO MUNICIPIOS VALUES
(4892, 31, 'Urraul Bajo', 'urraul-bajo', 31448, '42.713629', '-1.322823');INSERT INTO MUNICIPIOS VALUES
(4893, 31, 'Urrotz', 'urrotz', 31752, '43.100482', '-1.707129');INSERT INTO MUNICIPIOS VALUES
(4894, 31, 'Urroz-Villa', 'urroz-villa', 31420, '42.779275', '-1.457233');INSERT INTO MUNICIPIOS VALUES
(4895, 31, 'Urzainqui/Urzainki', 'urzainqui-urzainki', 31416, '42.832171', '-0.942721');INSERT INTO MUNICIPIOS VALUES
(4896, 31, 'Uterga', 'uterga', 31133, '42.710034', '-1.759357');INSERT INTO MUNICIPIOS VALUES
(4897, 31, 'Uzt·rroz/Uztarroze', 'uztarroz-uztarroze', 31418, '42.892033', '-0.940576');INSERT INTO MUNICIPIOS VALUES
(4898, 31, 'Valle de Yerri/Deierri', 'valle-de-yerri-deierri', 31176, '42.716939', '-1.999769');INSERT INTO MUNICIPIOS VALUES
(4899, 31, 'Valtierra', 'valtierra', 31514, '42.195969', '-1.633744');INSERT INTO MUNICIPIOS VALUES
(4900, 31, 'Viana', 'viana', 31230, '42.515069', '-2.374420');INSERT INTO MUNICIPIOS VALUES
(4901, 31, 'Vid·ngoz/Bidankoze', 'vidangoz-bidankoze', 31413, '42.800407', '-1.014690');INSERT INTO MUNICIPIOS VALUES
(4902, 31, 'Villafranca', 'villafranca', 31330, '42.279531', '-1.749830');INSERT INTO MUNICIPIOS VALUES
(4903, 31, 'Villamayor de MonjardÌn', 'villamayor-de-monjardin', 31242, '42.629452', '-2.102230');INSERT INTO MUNICIPIOS VALUES
(4904, 31, 'Villatuerta', 'villatuerta', 31132, '42.659622', '-1.993890');INSERT INTO MUNICIPIOS VALUES
(4905, 31, 'Villava/Atarrabia', 'villava-atarrabia', 31610, '42.831101', '-1.608510');INSERT INTO MUNICIPIOS VALUES
(4906, 31, 'Yesa', 'yesa', 31410, '42.619686', '-1.203647');INSERT INTO MUNICIPIOS VALUES
(4907, 31, 'Zabalza', 'zabalza', 31174, '42.779338', '-1.798196');INSERT INTO MUNICIPIOS VALUES
(4908, 31, 'Ziordia', 'ziordia', 31809, '42.870995', '-2.228551');INSERT INTO MUNICIPIOS VALUES
(4909, 31, 'Zizur Mayor/Zizur Nagusia', 'zizur-mayor-zizur-nagusia', 31180, '42.787118', '-1.690264');INSERT INTO MUNICIPIOS VALUES
(4910, 31, 'Zubieta', 'zubieta', 31746, '43.124542', '-1.742020');INSERT INTO MUNICIPIOS VALUES
(4911, 31, 'Zugarramurdi', 'zugarramurdi', 31710, '43.269394', '-1.539545');INSERT INTO MUNICIPIOS VALUES
(4912, 31, 'Z˙Òiga', 'zuniga', 31284, '42.694643', '-2.302451');INSERT INTO MUNICIPIOS VALUES
(4914, 35, 'Allariz', 'allariz', 32660, '42.189635', '-7.803374');INSERT INTO MUNICIPIOS VALUES
(4915, 35, 'Amoeiro', 'amoeiro', 32170, '42.414469', '-7.945167');INSERT INTO MUNICIPIOS VALUES
(4916, 35, 'Arnoia', 'arnoia', 32417, '42.244850', '-8.136210');INSERT INTO MUNICIPIOS VALUES
(4917, 35, 'AviÛn', 'avion', 32520, '42.374423', '-8.251764');INSERT INTO MUNICIPIOS VALUES
(4918, 35, 'Baltar', 'baltar', 32632, '41.951010', '-7.715444');INSERT INTO MUNICIPIOS VALUES
(4919, 35, 'Bande', 'bande', 32840, '42.030782', '-7.975110');INSERT INTO MUNICIPIOS VALUES
(4920, 35, 'BaÒos de Molgas', 'banos-de-molgas', 32701, '42.242485', '-7.672474');INSERT INTO MUNICIPIOS VALUES
(4921, 35, 'Barbad·s', 'barbadas', 32890, '42.301057', '-7.887219');INSERT INTO MUNICIPIOS VALUES
(4922, 35, 'Barco de Valdeorras', 'barco-de-valdeorras', 32315, '42.417720', '-6.964175');INSERT INTO MUNICIPIOS VALUES
(4923, 35, 'Beade', 'beade', 32431, '42.328700', '-8.127445');INSERT INTO MUNICIPIOS VALUES
(4924, 35, 'Beariz', 'beariz', 32520, '42.466265', '-8.271844');INSERT INTO MUNICIPIOS VALUES
(4925, 35, 'Blancos', 'blancos', 32634, '41.997662', '-7.751927');INSERT INTO MUNICIPIOS VALUES
(4926, 35, 'Bobor·s', 'boboras', 32514, '42.433482', '-8.142800');INSERT INTO MUNICIPIOS VALUES
(4927, 35, 'Bola', 'bola', 32812, '42.152062', '-7.914748');INSERT INTO MUNICIPIOS VALUES
(4928, 35, 'Bolo', 'bolo', 32577, '42.440545', '-8.005900');INSERT INTO MUNICIPIOS VALUES
(4929, 35, 'Calvos de RandÌn', 'calvos-de-randin', 32648, '41.944665', '-7.897196');INSERT INTO MUNICIPIOS VALUES
(4930, 35, 'Carballeda de Avia', 'carballeda-de-avia', 32413, '42.321351', '-8.163700');INSERT INTO MUNICIPIOS VALUES
(4931, 35, 'Carballeda de Valdeorras', 'carballeda-de-valdeorras', 32330, '42.378503', '-6.879802');INSERT INTO MUNICIPIOS VALUES
(4932, 35, 'CarballiÒo', 'carballino', 32500, '42.461698', '-8.093190');INSERT INTO MUNICIPIOS VALUES
(4933, 35, 'Cartelle', 'cartelle', 32820, '42.248677', '-8.069758');INSERT INTO MUNICIPIOS VALUES
(4934, 35, 'Castrelo de MiÒo', 'castrelo-de-mino', 32430, '42.283355', '-8.116676');INSERT INTO MUNICIPIOS VALUES
(4935, 35, 'Castrelo do Val', 'castrelo-do-val', 32625, '41.993452', '-7.425942');INSERT INTO MUNICIPIOS VALUES
(4936, 35, 'Castro Caldelas', 'castro-caldelas', 32760, '42.376982', '-7.411823');INSERT INTO MUNICIPIOS VALUES
(4937, 35, 'Celanova', 'celanova', 32800, '42.152094', '-7.958522');INSERT INTO MUNICIPIOS VALUES
(4938, 35, 'Cenlle', 'cenlle', 32454, '42.343273', '-8.087482');INSERT INTO MUNICIPIOS VALUES
(4939, 35, 'Chandrexa de Queixa', 'chandrexa-de-queixa', 32786, '42.260747', '-7.378736');INSERT INTO MUNICIPIOS VALUES
(4940, 35, 'Coles', 'coles', 32152, '42.401911', '-7.837286');INSERT INTO MUNICIPIOS VALUES
(4941, 35, 'Cortegada', 'cortegada', 32200, '42.207922', '-8.168635');INSERT INTO MUNICIPIOS VALUES
(4942, 35, 'Cualedro', 'cualedro', 32689, '41.990884', '-7.597046');INSERT INTO MUNICIPIOS VALUES
(4943, 35, 'Entrimo', 'entrimo', 32860, '41.933699', '-8.116665');INSERT INTO MUNICIPIOS VALUES
(4944, 35, 'Esgos', 'esgos', 32720, '42.324539', '-7.694550');INSERT INTO MUNICIPIOS VALUES
(4945, 35, 'Gomesende', 'gomesende', 32212, '42.165662', '-8.103490');INSERT INTO MUNICIPIOS VALUES
(4946, 35, 'GudiÒa', 'gudina', 32540, '42.061306', '-7.137980');INSERT INTO MUNICIPIOS VALUES
(4947, 35, 'Irixo', 'irixo', 32530, '42.512285', '-8.116665');INSERT INTO MUNICIPIOS VALUES
(4948, 35, 'Larouco', 'larouco', 32358, '42.347571', '-7.159524');INSERT INTO MUNICIPIOS VALUES
(4949, 35, 'Laza', 'laza', 32620, '42.061975', '-7.461433');INSERT INTO MUNICIPIOS VALUES
(4950, 35, 'Leiro', 'leiro', 32420, '42.369452', '-8.123875');INSERT INTO MUNICIPIOS VALUES
(4951, 35, 'Lobeira', 'lobeira', 32850, '41.999432', '-8.043108');INSERT INTO MUNICIPIOS VALUES
(4952, 35, 'Lobios', 'lobios', 32643, '42.009573', '-7.914920');INSERT INTO MUNICIPIOS VALUES
(4953, 35, 'Maceda', 'maceda', 32700, '42.272038', '-7.650132');INSERT INTO MUNICIPIOS VALUES
(4954, 35, 'Manzaneda', 'manzaneda', 32781, '42.310768', '-7.234840');INSERT INTO MUNICIPIOS VALUES
(4955, 35, 'Maside', 'maside', 32570, '42.411322', '-8.025556');INSERT INTO MUNICIPIOS VALUES
(4956, 35, 'MelÛn', 'melon', 32410, '42.257841', '-8.217816');INSERT INTO MUNICIPIOS VALUES
(4957, 35, 'Merca', 'merca', 32830, '42.223496', '-7.905092');INSERT INTO MUNICIPIOS VALUES
(4958, 35, 'Mezquita', 'mezquita', 32549, '42.010338', '-7.046099');INSERT INTO MUNICIPIOS VALUES
(4959, 35, 'Montederramo', 'montederramo', 32750, '42.277309', '-7.503319');INSERT INTO MUNICIPIOS VALUES
(4960, 35, 'Monterrei', 'monterrei', 32710, '41.947171', '-7.448044');INSERT INTO MUNICIPIOS VALUES
(4961, 35, 'MuÌÒos', 'muinos', 32880, '41.954352', '-7.985859');INSERT INTO MUNICIPIOS VALUES
(4962, 35, 'Nogueira de RamuÌn', 'nogueira-de-ramuin', 32160, '42.413382', '-7.726436');INSERT INTO MUNICIPIOS VALUES
(4963, 35, 'OÌmbra', 'oimbra', 32613, '41.885697', '-7.471905');INSERT INTO MUNICIPIOS VALUES
(4964, 35, 'Ourense', 'ourense', 32643, '42.340006', '-7.864645');INSERT INTO MUNICIPIOS VALUES
(4965, 35, 'Paderne de Allariz', 'paderne-de-allariz', 32112, '42.277849', '-7.745833');INSERT INTO MUNICIPIOS VALUES
(4966, 35, 'Padrenda', 'padrenda', 32236, '42.133399', '-8.150171');INSERT INTO MUNICIPIOS VALUES
(4967, 35, 'Parada de Sil', 'parada-de-sil', 32740, '42.383401', '-7.568808');INSERT INTO MUNICIPIOS VALUES
(4968, 35, 'Pereiro de Aguiar', 'pereiro-de-aguiar', 32710, '42.340021', '-7.864666');INSERT INTO MUNICIPIOS VALUES
(4969, 35, 'Peroxa', 'peroxa', 32150, '42.440149', '-7.795830');INSERT INTO MUNICIPIOS VALUES
(4970, 35, 'PetÌn', 'petin', 32356, '42.382736', '-7.125750');INSERT INTO MUNICIPIOS VALUES
(4971, 35, 'PiÒor', 'pinor', 32930, '42.498175', '-8.005257');INSERT INTO MUNICIPIOS VALUES
(4972, 35, 'Pobra de Trives', 'pobra-de-trives', 32789, '42.339546', '-7.252607');INSERT INTO MUNICIPIOS VALUES
(4973, 35, 'Pontedeva', 'pontedeva', 32235, '42.168906', '-8.140054');INSERT INTO MUNICIPIOS VALUES
(4974, 35, 'Porqueira', 'porqueira', 32643, '42.018087', '-7.840548');INSERT INTO MUNICIPIOS VALUES
(4975, 35, 'PunxÌn', 'punxin', 32456, '42.370466', '-8.011351');INSERT INTO MUNICIPIOS VALUES
(4976, 35, 'Quintela de Leirado', 'quintela-de-leirado', 32814, '42.139255', '-8.101730');INSERT INTO MUNICIPIOS VALUES
(4977, 35, 'Rairiz de Veiga', 'rairiz-de-veiga', 32652, '42.082665', '-7.832007');INSERT INTO MUNICIPIOS VALUES
(4978, 35, 'Ramir·s', 'ramiras', 32430, '42.187654', '-8.021650');INSERT INTO MUNICIPIOS VALUES
(4979, 35, 'Ribadavia', 'ribadavia', 32400, '42.287707', '-8.142929');INSERT INTO MUNICIPIOS VALUES
(4980, 35, 'RiÛs', 'rios', 32530, '42.511827', '-8.117309');INSERT INTO MUNICIPIOS VALUES
(4981, 35, 'R˙a', 'rua', 32350, '42.392340', '-7.120900');INSERT INTO MUNICIPIOS VALUES
(4982, 35, 'Rubi·', 'rubia', 32310, '42.449856', '-6.947393');INSERT INTO MUNICIPIOS VALUES
(4983, 35, 'San Amaro', 'san-amaro', 32455, '42.373431', '-8.071647');INSERT INTO MUNICIPIOS VALUES
(4984, 35, 'San Cibrao das ViÒas', 'san-cibrao-das-vinas', 32911, '42.297802', '-7.872519');INSERT INTO MUNICIPIOS VALUES
(4985, 35, 'San Cristovo de Cea', 'san-cristovo-de-cea', 32130, '42.472793', '-7.985322');INSERT INTO MUNICIPIOS VALUES
(4986, 35, 'San Xo·n de RÌo', 'san-xoan-de-rio', 32770, '42.371148', '-7.298312');INSERT INTO MUNICIPIOS VALUES
(4987, 35, 'Sandi·s', 'sandias', 32692, '42.113203', '-7.756863');INSERT INTO MUNICIPIOS VALUES
(4988, 35, 'Sarreaus', 'sarreaus', 32631, '42.086455', '-7.603354');INSERT INTO MUNICIPIOS VALUES
(4989, 35, 'Taboadela', 'taboadela', 32690, '42.240417', '-7.824411');INSERT INTO MUNICIPIOS VALUES
(4990, 35, 'Teixeira', 'teixeira', 32765, '42.391722', '-7.474008');INSERT INTO MUNICIPIOS VALUES
(4991, 35, 'ToÈn', 'toen', 32930, '42.316654', '-7.954273');INSERT INTO MUNICIPIOS VALUES
(4992, 35, 'Trasmiras', 'trasmiras', 32695, '42.024543', '-7.615714');INSERT INTO MUNICIPIOS VALUES
(4993, 35, 'Veiga', 'veiga', 32915, '42.316523', '-8.141052');INSERT INTO MUNICIPIOS VALUES
(4994, 35, 'Verea', 'verea', 32813, '42.100372', '-7.949939');INSERT INTO MUNICIPIOS VALUES
(4995, 35, 'VerÌn', 'verin', 32600, '41.940771', '-7.438903');INSERT INTO MUNICIPIOS VALUES
(4996, 35, 'Viana do Bolo', 'viana-do-bolo', 32550, '42.178877', '-7.113776');INSERT INTO MUNICIPIOS VALUES
(4997, 35, 'VilamarÌn', 'vilamarin', 32101, '42.472793', '-7.985344');INSERT INTO MUNICIPIOS VALUES
(4998, 35, 'VilamartÌn de Valdeorras', 'vilamartin-de-valdeorras', 32340, '42.415425', '-7.059617');INSERT INTO MUNICIPIOS VALUES
(4999, 35, 'Vilar de Barrio', 'vilar-de-barrio', 32702, '42.160843', '-7.611723');INSERT INTO MUNICIPIOS VALUES
(5000, 35, 'Vilar de Santos', 'vilar-de-santos', 32650, '42.087602', '-7.794199');INSERT INTO MUNICIPIOS VALUES
(5001, 35, 'VilardevÛs', 'vilardevos', 32616, '41.907595', '-7.313118');INSERT INTO MUNICIPIOS VALUES
(5002, 35, 'VilariÒo de Conso', 'vilarino-de-conso', 32557, '42.166441', '-7.181969');INSERT INTO MUNICIPIOS VALUES
(5003, 35, 'Xinzo de Limia', 'xinzo-de-limia', 32630, '42.063265', '-7.724247');INSERT INTO MUNICIPIOS VALUES
(5004, 35, 'Xunqueira de AmbÌa', 'xunqueira-de-ambia', 32670, '42.204855', '-7.734332');INSERT INTO MUNICIPIOS VALUES
(5005, 35, 'Xunqueira de Espadanedo', 'xunqueira-de-espadanedo', 32730, '42.319891', '-7.629404');INSERT INTO MUNICIPIOS VALUES
(5007, 17, 'Allande', 'allande', 33886, '43.271637', '-6.611031');INSERT INTO MUNICIPIOS VALUES
(5008, 17, 'Aller', 'aller', 33685, '43.161525', '-5.622834');INSERT INTO MUNICIPIOS VALUES
(5009, 17, 'Amieva', 'amieva', 33558, '43.268975', '-5.128919');INSERT INTO MUNICIPIOS VALUES
(5010, 17, 'AvilÈs', 'aviles', 33401, '43.558476', '-5.921135');INSERT INTO MUNICIPIOS VALUES
(5011, 17, 'Belmonte de Miranda', 'belmonte-de-miranda', 33830, '43.280470', '-6.218989');INSERT INTO MUNICIPIOS VALUES
(5012, 17, 'Bimenes', 'bimenes', 33527, '43.329525', '-5.566349');INSERT INTO MUNICIPIOS VALUES
(5013, 17, 'Boal', 'boal', 33720, '43.427686', '-6.818737');INSERT INTO MUNICIPIOS VALUES
(5014, 17, 'Cabrales', 'cabrales', 33555, '43.302263', '-4.815768');INSERT INTO MUNICIPIOS VALUES
(5015, 17, 'Cabranes', 'cabranes', 33310, '43.416730', '-5.410279');INSERT INTO MUNICIPIOS VALUES
(5016, 17, 'Candamo', 'candamo', 33416, '43.434614', '-6.061703');INSERT INTO MUNICIPIOS VALUES
(5017, 17, 'Cangas de OnÌs', 'cangas-de-onis', 33550, '43.350795', '-5.130279');INSERT INTO MUNICIPIOS VALUES
(5018, 17, 'Cangas del Narcea', 'cangas-del-narcea', 33890, '43.180165', '-6.550229');INSERT INTO MUNICIPIOS VALUES
(5019, 17, 'Caravia', 'caravia', 33199, '43.463600', '-5.186664');INSERT INTO MUNICIPIOS VALUES
(5020, 17, 'CarreÒo', 'carreno', 33430, '43.589781', '-5.767619');INSERT INTO MUNICIPIOS VALUES
(5021, 17, 'Caso', 'caso', 33990, '43.182588', '-5.344304');INSERT INTO MUNICIPIOS VALUES
(5022, 17, 'CastrillÛn', 'castrillon', 33727, '43.559580', '-5.974489');INSERT INTO MUNICIPIOS VALUES
(5023, 17, 'Castropol', 'castropol', 33760, '43.524239', '-7.027882');INSERT INTO MUNICIPIOS VALUES
(5024, 17, 'CoaÒa', 'coana', 33795, '43.516545', '-6.747400');INSERT INTO MUNICIPIOS VALUES
(5025, 17, 'Colunga', 'colunga', 33320, '43.485459', '-5.275173');INSERT INTO MUNICIPIOS VALUES
(5026, 17, 'Corvera de Asturias', 'corvera-de-asturias', 33429, '43.535145', '-5.889209');INSERT INTO MUNICIPIOS VALUES
(5027, 17, 'Cudillero', 'cudillero', 33159, '43.559111', '-6.149106');INSERT INTO MUNICIPIOS VALUES
(5028, 17, 'DegaÒa', 'degana', 33812, '42.941657', '-6.577912');INSERT INTO MUNICIPIOS VALUES
(5029, 17, 'Franco', 'franco', 33746, '43.556977', '-6.873922');INSERT INTO MUNICIPIOS VALUES
(5030, 17, 'GijÛn', 'gijon', 33201, '43.542035', '-5.663799');INSERT INTO MUNICIPIOS VALUES
(5031, 17, 'GozÛn', 'gozon', 33449, '43.614709', '-5.796950');INSERT INTO MUNICIPIOS VALUES
(5032, 17, 'Grado', 'grado', 33829, '43.389072', '-6.070997');INSERT INTO MUNICIPIOS VALUES
(5033, 17, 'Grandas de Salime', 'grandas-de-salime', 33730, '43.218143', '-6.875838');INSERT INTO MUNICIPIOS VALUES
(5034, 17, 'Ibias', 'ibias', 33810, '43.038068', '-6.873103');INSERT INTO MUNICIPIOS VALUES
(5035, 17, 'Illano', 'illano', 33734, '43.334166', '-6.864747');INSERT INTO MUNICIPIOS VALUES
(5036, 17, 'Illas', 'illas', 33411, '43.495808', '-5.968149');INSERT INTO MUNICIPIOS VALUES
(5037, 17, 'Langreo', 'langreo', 33949, '43.288400', '-5.669209');INSERT INTO MUNICIPIOS VALUES
(5038, 17, 'Laviana', 'laviana', 33986, '43.248385', '-5.562989');INSERT INTO MUNICIPIOS VALUES
(5039, 17, 'Lena', 'lena', 33620, '43.157525', '-5.829029');INSERT INTO MUNICIPIOS VALUES
(5040, 17, 'Llanera', 'llanera', 33426, '43.439625', '-5.851319');INSERT INTO MUNICIPIOS VALUES
(5041, 17, 'Llanes', 'llanes', 33500, '43.420720', '-4.754994');INSERT INTO MUNICIPIOS VALUES
(5042, 17, 'Mieres', 'mieres', 33616, '43.250390', '-5.771939');INSERT INTO MUNICIPIOS VALUES
(5043, 17, 'MorcÌn', 'morcin', 33161, '43.280914', '-5.879929');INSERT INTO MUNICIPIOS VALUES
(5044, 17, 'Muros de NalÛn', 'muros-de-nalon', 33138, '43.542032', '-6.103448');INSERT INTO MUNICIPIOS VALUES
(5045, 17, 'Nava', 'nava', 33529, '43.359035', '-5.508204');INSERT INTO MUNICIPIOS VALUES
(5046, 17, 'Navia', 'navia', 33719, '43.540614', '-6.724533');INSERT INTO MUNICIPIOS VALUES
(5047, 17, 'NoreÒa', 'norena', 33180, '43.400110', '-5.702029');INSERT INTO MUNICIPIOS VALUES
(5048, 17, 'OnÌs', 'onis', 33550, '43.335015', '-4.967194');INSERT INTO MUNICIPIOS VALUES
(5049, 17, 'Oviedo', 'oviedo', 33001, '43.362689', '-5.847531');INSERT INTO MUNICIPIOS VALUES
(5050, 17, 'Parres', 'parres', 33585, '43.390215', '-5.185274');INSERT INTO MUNICIPIOS VALUES
(5051, 17, 'PeÒamellera Alta', 'penamellera-alta', 33576, '43.332652', '-4.704084');INSERT INTO MUNICIPIOS VALUES
(5052, 17, 'PeÒamellera Baja', 'penamellera-baja', 33576, '43.326325', '-4.584959');INSERT INTO MUNICIPIOS VALUES
(5053, 17, 'Pesoz', 'pesoz', 33735, '43.256960', '-6.875379');INSERT INTO MUNICIPIOS VALUES
(5054, 17, 'PiloÒa', 'pilona', 33539, '43.345295', '-5.361159');INSERT INTO MUNICIPIOS VALUES
(5055, 17, 'Ponga', 'ponga', 33557, '43.190971', '-5.166581');INSERT INTO MUNICIPIOS VALUES
(5056, 17, 'Pravia', 'pravia', 33120, '43.488191', '-6.111737');INSERT INTO MUNICIPIOS VALUES
(5057, 17, 'Proaza', 'proaza', 33114, '43.251687', '-6.016207');INSERT INTO MUNICIPIOS VALUES
(5058, 17, 'QuirÛs', 'quiros', 33117, '43.159070', '-5.973239');INSERT INTO MUNICIPIOS VALUES
(5059, 17, 'Regueras', 'regueras', 33191, '43.581882', '-5.788585');INSERT INTO MUNICIPIOS VALUES
(5060, 17, 'Ribadedeva', 'ribadedeva', 33416, '43.374792', '-4.540259');INSERT INTO MUNICIPIOS VALUES
(5061, 17, 'Ribadesella', 'ribadesella', 33560, '43.460955', '-5.060444');INSERT INTO MUNICIPIOS VALUES
(5062, 17, 'Ribera de Arriba', 'ribera-de-arriba', 33171, '43.309389', '-5.875558');INSERT INTO MUNICIPIOS VALUES
(5063, 17, 'Riosa', 'riosa', 33160, '43.230545', '-5.882283');INSERT INTO MUNICIPIOS VALUES
(5064, 17, 'Salas', 'salas', 33869, '43.408875', '-6.260619');INSERT INTO MUNICIPIOS VALUES
(5065, 17, 'San MartÌn de Oscos', 'san-martin-de-oscos', 33777, '43.265280', '-6.962004');INSERT INTO MUNICIPIOS VALUES
(5066, 17, 'San MartÌn del Rey Aurelio', 'san-martin-del-rey-aurelio', 33791, '43.275000', '-5.604184');INSERT INTO MUNICIPIOS VALUES
(5067, 17, 'San Tirso de Abres', 'san-tirso-de-abres', 33774, '43.409960', '-7.142039');INSERT INTO MUNICIPIOS VALUES
(5068, 17, 'Santa Eulalia de Oscos', 'santa-eulalia-de-oscos', 33776, '43.259712', '-7.022213');INSERT INTO MUNICIPIOS VALUES
(5069, 17, 'Santo Adriano', 'santo-adriano', 33119, '43.273321', '-6.002424');INSERT INTO MUNICIPIOS VALUES
(5070, 17, 'Sariego', 'sariego', 33518, '43.410140', '-5.559788');INSERT INTO MUNICIPIOS VALUES
(5071, 17, 'Siero', 'siero', 33936, '43.392861', '-5.660772');INSERT INTO MUNICIPIOS VALUES
(5072, 17, 'Sobrescobio', 'sobrescobio', 33993, '43.221441', '-5.455448');INSERT INTO MUNICIPIOS VALUES
(5073, 17, 'Somiedo', 'somiedo', 33840, '43.095165', '-6.258234');INSERT INTO MUNICIPIOS VALUES
(5074, 17, 'Soto del Barco', 'soto-del-barco', 33458, '43.532418', '-6.071630');INSERT INTO MUNICIPIOS VALUES
(5075, 17, 'Tapia de Casariego', 'tapia-de-casariego', 33740, '43.569227', '-6.942608');INSERT INTO MUNICIPIOS VALUES
(5076, 17, 'Taramundi', 'taramundi', 33775, '43.360885', '-7.108377');INSERT INTO MUNICIPIOS VALUES
(5077, 17, 'Teverga', 'teverga', 33111, '43.161695', '-6.096359');INSERT INTO MUNICIPIOS VALUES
(5078, 17, 'Tineo', 'tineo', 33875, '43.333878', '-6.416547');INSERT INTO MUNICIPIOS VALUES
(5079, 17, 'ValdÈs', 'valdes', 33938, '43.541890', '-6.536614');INSERT INTO MUNICIPIOS VALUES
(5080, 17, 'Vegadeo', 'vegadeo', 33770, '43.464223', '-7.050725');INSERT INTO MUNICIPIOS VALUES
(5081, 17, 'Villanueva de Oscos', 'villanueva-de-oscos', 33777, '43.311680', '-6.986189');INSERT INTO MUNICIPIOS VALUES
(5082, 17, 'Villaviciosa', 'villaviciosa', 33315, '43.481290', '-5.434104');INSERT INTO MUNICIPIOS VALUES
(5083, 17, 'VillayÛn', 'villayon', 33718, '43.447497', '-6.704658');INSERT INTO MUNICIPIOS VALUES
(5084, 17, 'Yernes y Tameza', 'yernes-y-tameza', 33826, '43.251914', '-6.127374');INSERT INTO MUNICIPIOS VALUES
(5086, 39, 'Abarca de Campos', 'abarca-de-campos', 34338, '42.062203', '-4.843162');INSERT INTO MUNICIPIOS VALUES
(5087, 39, 'Abia de las Torres', 'abia-de-las-torres', 34491, '42.418065', '-4.423129');INSERT INTO MUNICIPIOS VALUES
(5088, 39, 'Aguilar de Campoo', 'aguilar-de-campoo', 34800, '42.795500', '-4.260724');INSERT INTO MUNICIPIOS VALUES
(5089, 39, 'Alar del Rey', 'alar-del-rey', 34480, '42.660335', '-4.308029');INSERT INTO MUNICIPIOS VALUES
(5090, 39, 'Alba de Cerrato', 'alba-de-cerrato', 34219, '41.812867', '-4.365209');INSERT INTO MUNICIPIOS VALUES
(5091, 39, 'Amayuelas de Arriba', 'amayuelas-de-arriba', 34429, '42.213135', '-4.488258');INSERT INTO MUNICIPIOS VALUES
(5092, 39, 'Ampudia', 'ampudia', 34191, '41.914883', '-4.779799');INSERT INTO MUNICIPIOS VALUES
(5093, 39, 'Amusco', 'amusco', 34420, '42.172876', '-4.471768');INSERT INTO MUNICIPIOS VALUES
(5094, 39, 'Antig¸edad', 'antiguedad', 34248, '41.945958', '-4.117126');INSERT INTO MUNICIPIOS VALUES
(5095, 39, 'Arconada', 'arconada', 34449, '42.326740', '-4.495149');INSERT INTO MUNICIPIOS VALUES
(5096, 39, 'Astudillo', 'astudillo', 34450, '42.192369', '-4.298759');INSERT INTO MUNICIPIOS VALUES
(5097, 39, 'Autilla del Pino', 'autilla-del-pino', 34191, '41.991942', '-4.632691');INSERT INTO MUNICIPIOS VALUES
(5098, 39, 'Autillo de Campos', 'autillo-de-campos', 34338, '42.086383', '-4.832059');INSERT INTO MUNICIPIOS VALUES
(5099, 39, 'Ayuela', 'ayuela', 34473, '42.625408', '-4.660591');INSERT INTO MUNICIPIOS VALUES
(5100, 39, 'Baltan·s', 'baltanas', 34240, '41.935085', '-4.246624');INSERT INTO MUNICIPIOS VALUES
(5101, 39, 'BaquerÌn de Campos', 'baquerin-de-campos', 34305, '42.015762', '-4.780324');INSERT INTO MUNICIPIOS VALUES
(5102, 39, 'B·rcena de Campos', 'barcena-de-campos', 34477, '42.483869', '-4.498679');INSERT INTO MUNICIPIOS VALUES
(5103, 39, 'Barruelo de Santull·n', 'barruelo-de-santullan', 34820, '42.901869', '-4.287487');INSERT INTO MUNICIPIOS VALUES
(5104, 39, 'B·scones de Ojeda', 'bascones-de-ojeda', 34406, '42.668153', '-4.528275');INSERT INTO MUNICIPIOS VALUES
(5105, 39, 'Becerril de Campos', 'becerril-de-campos', 34310, '42.110538', '-4.642763');INSERT INTO MUNICIPIOS VALUES
(5106, 39, 'Belmonte de Campos', 'belmonte-de-campos', 34304, '41.943991', '-4.987548');INSERT INTO MUNICIPIOS VALUES
(5107, 39, 'Berzosilla', 'berzosilla', 39250, '42.779940', '-4.038324');INSERT INTO MUNICIPIOS VALUES
(5108, 39, 'Boada de Campos', 'boada-de-campos', 34305, '41.990119', '-4.876857');INSERT INTO MUNICIPIOS VALUES
(5109, 39, 'Boadilla de Rioseco', 'boadilla-de-rioseco', 34349, '42.179752', '-4.968653');INSERT INTO MUNICIPIOS VALUES
(5110, 39, 'Boadilla del Camino', 'boadilla-del-camino', 34468, '42.258635', '-4.346852');INSERT INTO MUNICIPIOS VALUES
(5111, 39, 'BraÒosera', 'branosera', 34829, '42.910297', '-4.286213');INSERT INTO MUNICIPIOS VALUES
(5112, 39, 'Buenavista de Valdavia', 'buenavista-de-valdavia', 34470, '42.638758', '-4.613657');INSERT INTO MUNICIPIOS VALUES
(5113, 39, 'Bustillo de la Vega', 'bustillo-de-la-vega', 34116, '42.457661', '-4.740429');INSERT INTO MUNICIPIOS VALUES
(5114, 39, 'Bustillo del P·ramo de CarriÛn', 'bustillo-del-paramo-de-carrion', 34129, '42.357149', '-4.737790');INSERT INTO MUNICIPIOS VALUES
(5115, 39, 'Calahorra de Boedo', 'calahorra-de-boedo', 34407, '42.575775', '-4.386506');INSERT INTO MUNICIPIOS VALUES
(5116, 39, 'Calzada de los Molinos', 'calzada-de-los-molinos', 34129, '42.325809', '-4.650736');INSERT INTO MUNICIPIOS VALUES
(5117, 39, 'Capillas', 'capillas', 34305, '42.013942', '-4.889817');INSERT INTO MUNICIPIOS VALUES
(5118, 39, 'CardeÒosa de Volpejera', 'cardenosa-de-volpejera', 34309, '42.232903', '-4.701977');INSERT INTO MUNICIPIOS VALUES
(5119, 39, 'CarriÛn de los Condes', 'carrion-de-los-condes', 34120, '42.338340', '-4.600525');INSERT INTO MUNICIPIOS VALUES
(5120, 39, 'Castil de Vela', 'castil-de-vela', 34304, '41.984297', '-4.959040');INSERT INTO MUNICIPIOS VALUES
(5121, 39, 'CastrejÛn de la PeÒa', 'castrejon-de-la-pena', 34850, '42.808342', '-4.599710');INSERT INTO MUNICIPIOS VALUES
(5122, 39, 'Castrillo de Don Juan', 'castrillo-de-don-juan', 34246, '41.791793', '-4.071207');INSERT INTO MUNICIPIOS VALUES
(5123, 39, 'Castrillo de Onielo', 'castrillo-de-onielo', 34219, '41.858439', '-4.301748');INSERT INTO MUNICIPIOS VALUES
(5124, 39, 'Castrillo de Villavega', 'castrillo-de-villavega', 34478, '42.454716', '-4.480062');INSERT INTO MUNICIPIOS VALUES
(5125, 39, 'Castromocho', 'castromocho', 34305, '42.030870', '-4.822311');INSERT INTO MUNICIPIOS VALUES
(5126, 39, 'Cervatos de la Cueza', 'cervatos-de-la-cueza', 34309, '42.291152', '-4.767895');INSERT INTO MUNICIPIOS VALUES
(5127, 39, 'Cervera de Pisuerga', 'cervera-de-pisuerga', 34840, '42.866214', '-4.498043');INSERT INTO MUNICIPIOS VALUES
(5128, 39, 'Cevico de la Torre', 'cevico-de-la-torre', 34218, '41.853388', '-4.410667');INSERT INTO MUNICIPIOS VALUES
(5129, 39, 'Cevico Navero', 'cevico-navero', 34247, '41.860165', '-4.183903');INSERT INTO MUNICIPIOS VALUES
(5130, 39, 'Cisneros', 'cisneros', 34320, '42.220382', '-4.856901');INSERT INTO MUNICIPIOS VALUES
(5131, 39, 'Cobos de Cerrato', 'cobos-de-cerrato', 34248, '42.028575', '-4.001513');INSERT INTO MUNICIPIOS VALUES
(5132, 39, 'Collazos de Boedo', 'collazos-de-boedo', 34407, '42.619813', '-4.479504');INSERT INTO MUNICIPIOS VALUES
(5133, 39, 'Congosto de Valdavia', 'congosto-de-valdavia', 34882, '42.712462', '-4.633484');INSERT INTO MUNICIPIOS VALUES
(5134, 39, 'Cordovilla la Real', 'cordovilla-la-real', 34259, '42.079942', '-4.258661');INSERT INTO MUNICIPIOS VALUES
(5135, 39, 'Cubillas de Cerrato', 'cubillas-de-cerrato', 34219, '41.798959', '-4.465599');INSERT INTO MUNICIPIOS VALUES
(5136, 39, 'Dehesa de Montejo', 'dehesa-de-montejo', 34484, '42.819919', '-4.510564');INSERT INTO MUNICIPIOS VALUES
(5137, 39, 'Dehesa de Romanos', 'dehesa-de-romanos', 34406, '42.640399', '-4.434700');INSERT INTO MUNICIPIOS VALUES
(5138, 39, 'DueÒas', 'duenas', 34210, '41.876591', '-4.544563');INSERT INTO MUNICIPIOS VALUES
(5139, 39, 'Espinosa de Cerrato', 'espinosa-de-cerrato', 34248, '41.967149', '-3.950787');INSERT INTO MUNICIPIOS VALUES
(5140, 39, 'Espinosa de Villagonzalo', 'espinosa-de-villagonzalo', 34491, '42.480691', '-4.370949');INSERT INTO MUNICIPIOS VALUES
(5141, 39, 'Frechilla', 'frechilla', 34306, '42.137886', '-4.839306');INSERT INTO MUNICIPIOS VALUES
(5142, 39, 'Fresno del RÌo', 'fresno-del-rio', 34889, '42.682246', '-4.817848');INSERT INTO MUNICIPIOS VALUES
(5143, 39, 'FrÛmista', 'fromista', 34440, '42.268036', '-4.406204');INSERT INTO MUNICIPIOS VALUES
(5144, 39, 'Fuentes de Nava', 'fuentes-de-nava', 34337, '42.084401', '-4.780297');INSERT INTO MUNICIPIOS VALUES
(5145, 39, 'Fuentes de Valdepero', 'fuentes-de-valdepero', 34419, '42.075928', '-4.500189');INSERT INTO MUNICIPIOS VALUES
(5146, 39, 'Grijota', 'grijota', 34192, '42.053117', '-4.582500');INSERT INTO MUNICIPIOS VALUES
(5147, 39, 'Guardo', 'guardo', 34880, '42.791118', '-4.845142');INSERT INTO MUNICIPIOS VALUES
(5148, 39, 'Guaza de Campos', 'guaza-de-campos', 34306, '42.134895', '-4.909859');INSERT INTO MUNICIPIOS VALUES
(5149, 39, 'HÈrmedes de Cerrato', 'hermedes-de-cerrato', 34247, '41.819432', '-4.174075');INSERT INTO MUNICIPIOS VALUES
(5150, 39, 'Herrera de Pisuerga', 'herrera-de-pisuerga', 34400, '42.594986', '-4.330759');INSERT INTO MUNICIPIOS VALUES
(5151, 39, 'Herrera de ValdecaÒas', 'herrera-de-valdecanas', 34259, '42.049675', '-4.200039');INSERT INTO MUNICIPIOS VALUES
(5152, 39, 'Hontoria de Cerrato', 'hontoria-de-cerrato', 34209, '41.911156', '-4.441051');INSERT INTO MUNICIPIOS VALUES
(5153, 39, 'Hornillos de Cerrato', 'hornillos-de-cerrato', 34249, '41.989864', '-4.271364');INSERT INTO MUNICIPIOS VALUES
(5154, 39, 'Husillos', 'husillos', 34419, '42.074877', '-4.500232');INSERT INTO MUNICIPIOS VALUES
(5155, 39, 'Itero de la Vega', 'itero-de-la-vega', 34468, '42.288294', '-4.259090');INSERT INTO MUNICIPIOS VALUES
(5156, 39, 'Lagartos', 'lagartos', 34347, '42.339070', '-4.885011');INSERT INTO MUNICIPIOS VALUES
(5157, 39, 'Lantadilla', 'lantadilla', 34468, '42.340783', '-4.276600');INSERT INTO MUNICIPIOS VALUES
(5158, 39, 'Ledigos', 'ledigos', 34347, '42.354548', '-4.865527');INSERT INTO MUNICIPIOS VALUES
(5159, 39, 'Loma de Ucieza', 'loma-de-ucieza', 34127, '42.441418', '-4.579110');INSERT INTO MUNICIPIOS VALUES
(5160, 39, 'Lomas', 'lomas', 34449, '42.274324', '-4.549220');INSERT INTO MUNICIPIOS VALUES
(5161, 39, 'Magaz de Pisuerga', 'magaz-de-pisuerga', 34220, '41.982559', '-4.428864');INSERT INTO MUNICIPIOS VALUES
(5162, 39, 'Manquillos', 'manquillos', 34429, '42.204966', '-4.567566');INSERT INTO MUNICIPIOS VALUES
(5163, 39, 'Mantinos', 'mantinos', 34889, '42.722993', '-4.823470');INSERT INTO MUNICIPIOS VALUES
(5164, 39, 'Marcilla de Campos', 'marcilla-de-campos', 34469, '42.317368', '-4.396377');INSERT INTO MUNICIPIOS VALUES
(5165, 39, 'Mazariegos', 'mazariegos', 34170, '42.027109', '-4.715195');INSERT INTO MUNICIPIOS VALUES
(5166, 39, 'Mazuecos de Valdeginate', 'mazuecos-de-valdeginate', 34306, '42.168811', '-4.839649');INSERT INTO MUNICIPIOS VALUES
(5167, 39, 'Melgar de Yuso', 'melgar-de-yuso', 34467, '42.253871', '-4.254456');INSERT INTO MUNICIPIOS VALUES
(5168, 39, 'Meneses de Campos', 'meneses-de-campos', 34305, '41.941792', '-4.921317');INSERT INTO MUNICIPIOS VALUES
(5169, 39, 'Micieces de Ojeda', 'micieces-de-ojeda', 34485, '42.691189', '-4.461651');INSERT INTO MUNICIPIOS VALUES
(5170, 39, 'MonzÛn de Campos', 'monzon-de-campos', 34410, '42.114285', '-4.493666');INSERT INTO MUNICIPIOS VALUES
(5171, 39, 'Moratinos', 'moratinos', 34349, '42.360780', '-4.926553');INSERT INTO MUNICIPIOS VALUES
(5172, 39, 'Mud·', 'muda', 34839, '42.875665', '-4.394403');INSERT INTO MUNICIPIOS VALUES
(5173, 39, 'Nogal de las Huertas', 'nogal-de-las-huertas', 34128, '42.392704', '-4.641080');INSERT INTO MUNICIPIOS VALUES
(5174, 39, 'Olea de Boedo', 'olea-de-boedo', 34407, '42.609564', '-4.449205');INSERT INTO MUNICIPIOS VALUES
(5175, 39, 'Olmos de Ojeda', 'olmos-de-ojeda', 34486, '42.723024', '-4.424744');INSERT INTO MUNICIPIOS VALUES
(5176, 39, 'Osornillo', 'osornillo', 34468, '42.370260', '-4.291234');INSERT INTO MUNICIPIOS VALUES
(5177, 39, 'Osorno la Mayor', 'osorno-la-mayor', 34460, '42.409881', '-4.361916');INSERT INTO MUNICIPIOS VALUES
(5178, 39, 'Palencia', 'palencia', 34001, '42.011901', '-4.531474');INSERT INTO MUNICIPIOS VALUES
(5179, 39, 'Palenzuela', 'palenzuela', 34257, '42.094982', '-4.128585');INSERT INTO MUNICIPIOS VALUES
(5180, 39, 'P·ramo de Boedo', 'paramo-de-boedo', 34407, '42.578382', '-4.401011');INSERT INTO MUNICIPIOS VALUES
(5181, 39, 'Paredes de Nava', 'paredes-de-nava', 34300, '42.154241', '-4.694488');INSERT INTO MUNICIPIOS VALUES
(5182, 39, 'Payo de Ojeda', 'payo-de-ojeda', 34485, '42.720029', '-4.479718');INSERT INTO MUNICIPIOS VALUES
(5183, 39, 'Pedraza de Campos', 'pedraza-de-campos', 34170, '41.986036', '-4.732468');INSERT INTO MUNICIPIOS VALUES
(5184, 39, 'Pedrosa de la Vega', 'pedrosa-de-la-vega', 34116, '42.481909', '-4.744871');INSERT INTO MUNICIPIOS VALUES
(5185, 39, 'Perales', 'perales', 34131, '42.196271', '-4.580376');INSERT INTO MUNICIPIOS VALUES
(5186, 39, 'PernÌa', 'pernia', 34847, '42.987478', '-4.499545');INSERT INTO MUNICIPIOS VALUES
(5187, 39, 'Pino del RÌo', 'pino-del-rio', 34110, '42.645497', '-4.806798');INSERT INTO MUNICIPIOS VALUES
(5188, 39, 'PiÒa de Campos', 'pina-de-campos', 34430, '42.213517', '-4.436395');INSERT INTO MUNICIPIOS VALUES
(5189, 39, 'PoblaciÛn de Arroyo', 'poblacion-de-arroyo', 34347, '42.336468', '-4.872930');INSERT INTO MUNICIPIOS VALUES
(5190, 39, 'PoblaciÛn de Campos', 'poblacion-de-campos', 34449, '42.273324', '-4.448733');INSERT INTO MUNICIPIOS VALUES
(5191, 39, 'PoblaciÛn de Cerrato', 'poblacion-de-cerrato', 34219, '41.794864', '-4.422233');INSERT INTO MUNICIPIOS VALUES
(5192, 39, 'Polentinos', 'polentinos', 34846, '42.939554', '-4.528491');INSERT INTO MUNICIPIOS VALUES
(5193, 39, 'Pomar de Valdivia', 'pomar-de-valdivia', 34813, '42.775196', '-4.168110');INSERT INTO MUNICIPIOS VALUES
(5194, 39, 'Poza de la Vega', 'poza-de-la-vega', 34111, '42.578872', '-4.796884');INSERT INTO MUNICIPIOS VALUES
(5195, 39, 'Pozo de Urama', 'pozo-de-urama', 34347, '42.255014', '-4.892306');INSERT INTO MUNICIPIOS VALUES
(5196, 39, 'Pr·danos de Ojeda', 'pradanos-de-ojeda', 34486, '42.684439', '-4.349771');INSERT INTO MUNICIPIOS VALUES
(5197, 39, 'Puebla de Valdavia', 'puebla-de-valdavia', 34470, '42.672655', '-4.608014');INSERT INTO MUNICIPIOS VALUES
(5198, 39, 'Quintana del Puente', 'quintana-del-puente', 34250, '42.084815', '-4.203901');INSERT INTO MUNICIPIOS VALUES
(5199, 39, 'Quintanilla de OnsoÒa', 'quintanilla-de-onsona', 34114, '42.470206', '-4.663192');INSERT INTO MUNICIPIOS VALUES
(5200, 39, 'Reinoso de Cerrato', 'reinoso-de-cerrato', 34208, '41.975540', '-4.382772');INSERT INTO MUNICIPIOS VALUES
(5201, 39, 'Renedo de la Vega', 'renedo-de-la-vega', 34126, '42.452262', '-4.702234');INSERT INTO MUNICIPIOS VALUES
(5202, 39, 'Requena de Campos', 'requena-de-campos', 34469, '42.310783', '-4.346509');INSERT INTO MUNICIPIOS VALUES
(5203, 39, 'Respenda de la PeÒa', 'respenda-de-la-pena', 34870, '42.765462', '-4.686141');INSERT INTO MUNICIPIOS VALUES
(5204, 39, 'Revenga de Campos', 'revenga-de-campos', 34447, '42.286215', '-4.485490');INSERT INTO MUNICIPIOS VALUES
(5205, 39, 'Revilla de Collazos', 'revilla-de-collazos', 34407, '42.628386', '-4.500661');INSERT INTO MUNICIPIOS VALUES
(5206, 39, 'Ribas de Campos', 'ribas-de-campos', 34411, '42.153820', '-4.516625');INSERT INTO MUNICIPIOS VALUES
(5207, 39, 'Riberos de la Cueza', 'riberos-de-la-cueza', 34309, '42.278785', '-4.725859');INSERT INTO MUNICIPIOS VALUES
(5208, 39, 'SaldaÒa', 'saldana', 34100, '42.521348', '-4.737446');INSERT INTO MUNICIPIOS VALUES
(5209, 39, 'Salinas de Pisuerga', 'salinas-de-pisuerga', 34830, '42.850382', '-4.377730');INSERT INTO MUNICIPIOS VALUES
(5210, 39, 'San Cebri·n de Campos', 'san-cebrian-de-campos', 34429, '42.201771', '-4.531496');INSERT INTO MUNICIPIOS VALUES
(5211, 39, 'San Cebri·n de Mud·', 'san-cebrian-de-muda', 34839, '42.893432', '-4.385734');INSERT INTO MUNICIPIOS VALUES
(5212, 39, 'San CristÛbal de Boedo', 'san-cristobal-de-boedo', 34491, '42.539991', '-4.354084');INSERT INTO MUNICIPIOS VALUES
(5213, 39, 'San MamÈs de Campos', 'san-mames-de-campos', 34127, '42.357545', '-4.564841');INSERT INTO MUNICIPIOS VALUES
(5214, 39, 'San Rom·n de la Cuba', 'san-roman-de-la-cuba', 34347, '42.265162', '-4.857802');INSERT INTO MUNICIPIOS VALUES
(5215, 39, 'Santa Cecilia del Alcor', 'santa-cecilia-del-alcor', 34191, '41.933779', '-4.658402');INSERT INTO MUNICIPIOS VALUES
(5216, 39, 'Santa Cruz de Boedo', 'santa-cruz-de-boedo', 34491, '42.522091', '-4.373331');INSERT INTO MUNICIPIOS VALUES
(5217, 39, 'Santerv·s de la Vega', 'santervas-de-la-vega', 34112, '42.507461', '-4.800060');INSERT INTO MUNICIPIOS VALUES
(5218, 39, 'Santib·Òez de Ecla', 'santibanez-de-ecla', 34486, '42.707779', '-4.375927');INSERT INTO MUNICIPIOS VALUES
(5219, 39, 'Santib·Òez de la PeÒa', 'santibanez-de-la-pena', 34870, '42.807476', '-4.727919');INSERT INTO MUNICIPIOS VALUES
(5220, 39, 'Santoyo', 'santoyo', 34490, '42.215360', '-4.343569');INSERT INTO MUNICIPIOS VALUES
(5221, 39, 'Serna', 'serna', 34128, '42.412748', '-4.660263');INSERT INTO MUNICIPIOS VALUES
(5222, 39, 'Soto de Cerrato', 'soto-de-cerrato', 34209, '41.951017', '-4.428992');INSERT INTO MUNICIPIOS VALUES
(5223, 39, 'SotobaÒado y Priorato', 'sotobanado-y-priorato', 34407, '42.591669', '-4.442210');INSERT INTO MUNICIPIOS VALUES
(5224, 39, 'Tabanera de Cerrato', 'tabanera-de-cerrato', 34257, '42.026997', '-4.122276');INSERT INTO MUNICIPIOS VALUES
(5225, 39, 'Tabanera de Valdavia', 'tabanera-de-valdavia', 34473, '42.645403', '-4.690690');INSERT INTO MUNICIPIOS VALUES
(5226, 39, 'T·mara de Campos', 'tamara-de-campos', 34439, '42.204060', '-4.395132');INSERT INTO MUNICIPIOS VALUES
(5227, 39, 'Tariego de Cerrato', 'tariego-de-cerrato', 34209, '41.905152', '-4.475019');INSERT INTO MUNICIPIOS VALUES
(5228, 39, 'Torquemada', 'torquemada', 34230, '42.035891', '-4.317412');INSERT INTO MUNICIPIOS VALUES
(5229, 39, 'TorremormojÛn', 'torremormojon', 34305, '41.963575', '-4.782121');INSERT INTO MUNICIPIOS VALUES
(5230, 39, 'Triollo', 'triollo', 34887, '42.924817', '-4.680691');INSERT INTO MUNICIPIOS VALUES
(5231, 39, 'Valbuena de Pisuerga', 'valbuena-de-pisuerga', 34465, '42.145969', '-4.238116');INSERT INTO MUNICIPIOS VALUES
(5232, 39, 'Valdeolmillos', 'valdeolmillos', 34239, '42.042457', '-4.398565');INSERT INTO MUNICIPIOS VALUES
(5233, 39, 'Valderr·bano', 'valderrabano', 34473, '42.607432', '-4.656250');INSERT INTO MUNICIPIOS VALUES
(5234, 39, 'Valde-Ucieza', 'valde-ucieza', 34127, '42.400311', '-4.566021');INSERT INTO MUNICIPIOS VALUES
(5235, 39, 'Valle de Cerrato', 'valle-de-cerrato', 34209, '41.882375', '-4.364877');INSERT INTO MUNICIPIOS VALUES
(5236, 39, 'Valle del Retortillo', 'valle-del-retortillo', 34475, '42.235063', '-4.789310');INSERT INTO MUNICIPIOS VALUES
(5237, 39, 'Velilla del RÌo CarriÛn', 'velilla-del-rio-carrion', 34886, '42.827308', '-4.845035');INSERT INTO MUNICIPIOS VALUES
(5238, 39, 'Venta de BaÒos', 'venta-de-banos', 34200, '41.921998', '-4.491498');INSERT INTO MUNICIPIOS VALUES
(5239, 39, 'Vertavillo', 'vertavillo', 34219, '41.831744', '-4.327605');INSERT INTO MUNICIPIOS VALUES
(5240, 39, 'Vid de Ojeda', 'vid-de-ojeda', 34485, '42.660427', '-4.387000');INSERT INTO MUNICIPIOS VALUES
(5241, 39, 'Villabasta de Valdavia', 'villabasta-de-valdavia', 34475, '42.560651', '-4.600632');INSERT INTO MUNICIPIOS VALUES
(5242, 39, 'Villacidaler', 'villacidaler', 34349, '42.221939', '-4.973781');INSERT INTO MUNICIPIOS VALUES
(5243, 39, 'Villaconancio', 'villaconancio', 34247, '41.869337', '-4.220295');INSERT INTO MUNICIPIOS VALUES
(5244, 39, 'Villada', 'villada', 34340, '42.251385', '-4.965606');INSERT INTO MUNICIPIOS VALUES
(5245, 39, 'Villaeles de Valdavia', 'villaeles-de-valdavia', 34475, '42.564397', '-4.583938');INSERT INTO MUNICIPIOS VALUES
(5246, 39, 'Villah·n', 'villahan', 34257, '42.051826', '-4.131331');INSERT INTO MUNICIPIOS VALUES
(5247, 39, 'Villaherreros', 'villaherreros', 34469, '42.389376', '-4.460406');INSERT INTO MUNICIPIOS VALUES
(5248, 39, 'Villalaco', 'villalaco', 34261, '0.000000', '0.000000');INSERT INTO MUNICIPIOS VALUES
(5249, 39, 'Villalba de Guardo', 'villalba-de-guardo', 34889, '42.721905', '-4.824286');INSERT INTO MUNICIPIOS VALUES
(5250, 39, 'Villalc·zar de Sirga', 'villalcazar-de-sirga', 34449, '42.317733', '-4.538813');INSERT INTO MUNICIPIOS VALUES
(5251, 39, 'VillalcÛn', 'villalcon', 34347, '42.293136', '-4.855506');INSERT INTO MUNICIPIOS VALUES
(5252, 39, 'VillalobÛn', 'villalobon', 34419, '42.031938', '-4.502785');INSERT INTO MUNICIPIOS VALUES
(5253, 39, 'Villaluenga de la Vega', 'villaluenga-de-la-vega', 34111, '42.526219', '-4.766521');INSERT INTO MUNICIPIOS VALUES
(5254, 39, 'VillamartÌn de Campos', 'villamartin-de-campos', 34170, '42.015153', '-4.665649');INSERT INTO MUNICIPIOS VALUES
(5255, 39, 'Villamediana', 'villamediana', 34239, '42.050551', '-4.362280');INSERT INTO MUNICIPIOS VALUES
(5256, 39, 'Villameriel', 'villameriel', 34408, '42.528116', '-4.475620');INSERT INTO MUNICIPIOS VALUES
(5257, 39, 'Villamoronta', 'villamoronta', 34126, '42.404731', '-4.697835');INSERT INTO MUNICIPIOS VALUES
(5258, 39, 'Villamuera de la Cueza', 'villamuera-de-la-cueza', 34309, '42.259826', '-4.689853');INSERT INTO MUNICIPIOS VALUES
(5259, 39, 'Villamuriel de Cerrato', 'villamuriel-de-cerrato', 34190, '41.950283', '-4.514480');INSERT INTO MUNICIPIOS VALUES
(5260, 39, 'Villanueva del Rebollar', 'villanueva-del-rebollar', 34309, '42.242101', '-4.740880');INSERT INTO MUNICIPIOS VALUES
(5261, 39, 'VillanuÒo de Valdavia', 'villanuno-de-valdavia', 34477, '42.508284', '-4.516969');INSERT INTO MUNICIPIOS VALUES
(5262, 39, 'Villaprovedo', 'villaprovedo', 34491, '42.514152', '-4.393587');INSERT INTO MUNICIPIOS VALUES
(5263, 39, 'Villarmentero de Campos', 'villarmentero-de-campos', 34447, '42.293977', '-4.499803');INSERT INTO MUNICIPIOS VALUES
(5264, 39, 'VillarrabÈ', 'villarrabe', 34113, '42.421635', '-4.785705');INSERT INTO MUNICIPIOS VALUES
(5265, 39, 'Villarramiel', 'villarramiel', 34350, '42.042839', '-4.911082');INSERT INTO MUNICIPIOS VALUES
(5266, 39, 'Villasarracino', 'villasarracino', 34132, '42.412312', '-4.497775');INSERT INTO MUNICIPIOS VALUES
(5267, 39, 'Villasila de Valdavia', 'villasila-de-valdavia', 34475, '42.533793', '-4.558618');INSERT INTO MUNICIPIOS VALUES
(5268, 39, 'Villaturde', 'villaturde', 34129, '42.374699', '-4.674039');INSERT INTO MUNICIPIOS VALUES
(5269, 39, 'Villaumbrales', 'villaumbrales', 34192, '42.089799', '-4.610288');INSERT INTO MUNICIPIOS VALUES
(5270, 39, 'Villaviudas', 'villaviudas', 34249, '41.963527', '-4.338462');INSERT INTO MUNICIPIOS VALUES
(5271, 39, 'VillerÌas de Campos', 'villerias-de-campos', 34305, '41.949134', '-4.853790');INSERT INTO MUNICIPIOS VALUES
(5272, 39, 'Villodre', 'villodre', 34466, '42.212229', '-4.245712');INSERT INTO MUNICIPIOS VALUES
(5273, 39, 'Villodrigo', 'villodrigo', 34257, '42.144537', '-4.094810');INSERT INTO MUNICIPIOS VALUES
(5274, 39, 'Villoldo', 'villoldo', 34131, '42.245008', '-4.596062');INSERT INTO MUNICIPIOS VALUES
(5275, 39, 'Villota del P·ramo', 'villota-del-paramo', 34112, '42.552132', '-4.847867');INSERT INTO MUNICIPIOS VALUES
(5276, 39, 'Villovieco', 'villovieco', 34449, '42.296405', '-4.481542');INSERT INTO MUNICIPIOS VALUES
(5278, 43, 'Agaete', 'agaete', 35480, '28.099855', '-15.700883');INSERT INTO MUNICIPIOS VALUES
(5279, 43, 'Ag¸imes', 'aguimes', 35260, '27.903396', '-15.445262');INSERT INTO MUNICIPIOS VALUES
(5280, 43, 'Aldea de San Nicol·s', 'aldea-de-san-nicolas', 35470, '27.990176', '-15.781002');INSERT INTO MUNICIPIOS VALUES
(5281, 43, 'Antigua', 'antigua-laspalmas', 35630, '28.423420', '-14.014609');INSERT INTO MUNICIPIOS VALUES
(5282, 43, 'Arrecife', 'arrecife', 35500, '28.958210', '-13.549004');INSERT INTO MUNICIPIOS VALUES
(5283, 43, 'Artenara', 'artenara', 35350, '28.022784', '-15.646995');INSERT INTO MUNICIPIOS VALUES
(5284, 43, 'Arucas', 'arucas', 35400, '28.117412', '-15.523328');INSERT INTO MUNICIPIOS VALUES
(5285, 43, 'Betancuria', 'betancuria', 35637, '28.425165', '-14.056646');INSERT INTO MUNICIPIOS VALUES
(5286, 43, 'Firgas', 'firgas', 35430, '28.107342', '-15.567970');INSERT INTO MUNICIPIOS VALUES
(5287, 43, 'G·ldar', 'galdar', 35460, '28.146173', '-15.649509');INSERT INTO MUNICIPIOS VALUES
(5288, 43, 'HarÌa', 'haria', 35520, '29.147364', '-13.497391');INSERT INTO MUNICIPIOS VALUES
(5289, 43, 'Ingenio', 'ingenio', 35250, '27.920786', '-15.443516');INSERT INTO MUNICIPIOS VALUES
(5290, 43, 'Mog·n', 'mogan', 35140, '27.884149', '-15.723152');INSERT INTO MUNICIPIOS VALUES
(5291, 43, 'Moya', 'la moya', 16311, '28.117411', '-15.566683');INSERT INTO MUNICIPIOS VALUES
(5292, 43, 'Oliva', 'la oliva', 35640, '28.610898', '-13.926373');INSERT INTO MUNICIPIOS VALUES
(5293, 43, 'P·jara', 'pajara', 35628, '28.345482', '-14.103699');INSERT INTO MUNICIPIOS VALUES
(5294, 43, 'Palmas de Gran Canaria', 'las palmas-de-gran-canaria', 35005, '28.124148', '-15.431757');INSERT INTO MUNICIPIOS VALUES
(5295, 43, 'Puerto del Rosario', 'puerto-del-rosario', 35600, '28.496944', '-13.862514');INSERT INTO MUNICIPIOS VALUES
(5296, 43, 'San BartolomÈ', 'san-bartolome', 35421, '28.056530', '-15.605092');INSERT INTO MUNICIPIOS VALUES
(5297, 43, 'San BartolomÈde Tirajana', 'san-bartolomede-tirajana', 35290, '27.926019', '-15.569859');INSERT INTO MUNICIPIOS VALUES
(5298, 43, 'Santa BrÌgida', 'santa-brigida', 35300, '28.031039', '-15.491409');INSERT INTO MUNICIPIOS VALUES
(5299, 43, 'Santa LucÌa de Tirajana', 'santa-lucia-de-tirajana', 35280, '27.912937', '-15.541105');INSERT INTO MUNICIPIOS VALUES
(5300, 43, 'Santa MarÌa de GuÌa de Gran Canaria', 'santa-maria-de-guia-de-gran-canaria', 35450, '28.139816', '-15.640068');INSERT INTO MUNICIPIOS VALUES
(5301, 43, 'Teguise', 'teguise', 35530, '29.062772', '-13.568115');INSERT INTO MUNICIPIOS VALUES
(5302, 43, 'Tejeda', 'tejeda', 35360, '27.962869', '-15.658607');INSERT INTO MUNICIPIOS VALUES
(5303, 43, 'Telde', 'telde', 35200, '27.996107', '-15.416822');INSERT INTO MUNICIPIOS VALUES
(5304, 43, 'Teror', 'teror', 35330, '28.059408', '-15.548916');INSERT INTO MUNICIPIOS VALUES
(5305, 43, 'TÌas', 'tias', 35572, '28.953555', '-13.653173');INSERT INTO MUNICIPIOS VALUES
(5306, 43, 'Tinajo', 'tinajo', 35560, '29.066748', '-13.677549');INSERT INTO MUNICIPIOS VALUES
(5307, 43, 'Tuineje', 'tuineje', 35629, '28.325387', '-14.046364');INSERT INTO MUNICIPIOS VALUES
(5308, 43, 'Valleseco', 'valleseco', 35340, '28.048197', '-15.573378');INSERT INTO MUNICIPIOS VALUES
(5309, 43, 'Valsequillo de Gran Canaria', 'valsequillo-de-gran-canaria', 35217, '27.991142', '-15.500336');INSERT INTO MUNICIPIOS VALUES
(5310, 43, 'Vega de San Mateo', 'vega-de-san-mateo', 35320, '28.010013', '-15.532608');INSERT INTO MUNICIPIOS VALUES
(5311, 43, 'Yaiza', 'yaiza', 35570, '28.953029', '-13.765440');INSERT INTO MUNICIPIOS VALUES
(5313, 47, 'Agolada', 'agolada', 36520, '42.763535', '-8.016149');INSERT INTO MUNICIPIOS VALUES
(5314, 47, 'Arbo', 'arbo', 36430, '42.112835', '-8.311814');INSERT INTO MUNICIPIOS VALUES
(5315, 47, 'Baiona', 'baiona', 36300, '42.121115', '-8.850164');INSERT INTO MUNICIPIOS VALUES
(5316, 47, 'Barro', 'barro', 36191, '42.525766', '-8.638891');INSERT INTO MUNICIPIOS VALUES
(5317, 47, 'Bueu', 'bueu', 36939, '42.320097', '-8.789835');INSERT INTO MUNICIPIOS VALUES
(5318, 47, 'Caldas de Reis', 'caldas-de-reis', 36650, '42.606548', '-8.642635');INSERT INTO MUNICIPIOS VALUES
(5319, 47, 'Cambados', 'cambados', 36630, '42.513677', '-8.809748');INSERT INTO MUNICIPIOS VALUES
(5320, 47, 'Campo Lameiro', 'campo-lameiro', 36110, '42.542078', '-8.542986');INSERT INTO MUNICIPIOS VALUES
(5321, 47, 'Cangas', 'cangas', 33547, '42.745247', '-8.088148');INSERT INTO MUNICIPIOS VALUES
(5322, 47, 'CaÒiza', 'caniza', 36888, '42.213199', '-8.275108');INSERT INTO MUNICIPIOS VALUES
(5323, 47, 'Catoira', 'catoira', 36612, '42.666817', '-8.722501');INSERT INTO MUNICIPIOS VALUES
(5324, 47, 'Cerdedo', 'cerdedo', 36139, '42.532275', '-8.394070');INSERT INTO MUNICIPIOS VALUES
(5325, 47, 'Cotobade', 'cotobade', 36121, '42.508616', '-8.514061');INSERT INTO MUNICIPIOS VALUES
(5326, 47, 'Covelo', 'covelo', 36839, '42.422569', '-8.411965');INSERT INTO MUNICIPIOS VALUES
(5327, 47, 'Crecente', 'crecente', 36420, '42.153510', '-8.222923');INSERT INTO MUNICIPIOS VALUES
(5328, 47, 'Cuntis', 'cuntis', 36670, '42.632633', '-8.563371');INSERT INTO MUNICIPIOS VALUES
(5329, 47, 'DozÛn', 'dozon', 36518, '42.570592', '-8.049374');INSERT INTO MUNICIPIOS VALUES
(5330, 47, 'Estrada', 'estrada', 36680, '42.689060', '-8.488741');INSERT INTO MUNICIPIOS VALUES
(5331, 47, 'Forcarei', 'forcarei', 36550, '42.592616', '-8.351412');INSERT INTO MUNICIPIOS VALUES
(5332, 47, 'Fornelos de Montes', 'fornelos-de-montes', 36847, '42.340846', '-8.453078');INSERT INTO MUNICIPIOS VALUES
(5333, 47, 'Gondomar', 'gondomar', 36380, '42.111531', '-8.760910');INSERT INTO MUNICIPIOS VALUES
(5334, 47, 'Grove', 'grove', 36980, '42.493777', '-8.864894');INSERT INTO MUNICIPIOS VALUES
(5335, 47, 'Guarda', 'guarda', 36780, '41.901031', '-8.850002');INSERT INTO MUNICIPIOS VALUES
(5336, 47, 'Illa de Arousa', 'illa-de-arousa', 36626, '42.551816', '-8.866739');INSERT INTO MUNICIPIOS VALUES
(5337, 47, 'LalÌn', 'lalin', 36500, '42.661421', '-8.111086');INSERT INTO MUNICIPIOS VALUES
(5338, 47, 'Lama', 'lama', 36830, '42.394051', '-8.443680');INSERT INTO MUNICIPIOS VALUES
(5339, 47, 'MarÌn', 'marin', 36900, '42.393037', '-8.698425');INSERT INTO MUNICIPIOS VALUES
(5340, 47, 'MeaÒo', 'meano', 36967, '42.450251', '-8.783612');INSERT INTO MUNICIPIOS VALUES
(5341, 47, 'Meis', 'meis', 36637, '42.516651', '-8.699970');INSERT INTO MUNICIPIOS VALUES
(5342, 47, 'MoaÒa', 'moana', 36954, '42.285564', '-8.749280');INSERT INTO MUNICIPIOS VALUES
(5343, 47, 'Mondariz', 'mondariz', 36870, '42.234046', '-8.455439');INSERT INTO MUNICIPIOS VALUES
(5344, 47, 'Mondariz-Balneario', 'mondariz-balneario', 36890, '42.227087', '-8.466253');INSERT INTO MUNICIPIOS VALUES
(5345, 47, 'MoraÒa', 'moraÒa', 36208, '42.562026', '-8.559766');INSERT INTO MUNICIPIOS VALUES
(5346, 47, 'Mos', 'mos', 36415, '42.195683', '-8.654137');INSERT INTO MUNICIPIOS VALUES
(5347, 47, 'Neves', 'neves', 15613, '42.088159', '-8.414969');INSERT INTO MUNICIPIOS VALUES
(5348, 47, 'Nigr·n', 'nigran', 36350, '42.144951', '-8.807516');INSERT INTO MUNICIPIOS VALUES
(5349, 47, 'Oia', 'oia', 36794, '42.002908', '-8.875194');INSERT INTO MUNICIPIOS VALUES
(5350, 47, 'Pazos de BorbÈn', 'pazos-de-borben', 36841, '42.294199', '-8.531442');INSERT INTO MUNICIPIOS VALUES
(5351, 47, 'Poio', 'poio', 36163, '42.430140', '-8.660059');INSERT INTO MUNICIPIOS VALUES
(5352, 47, 'Ponte Caldelas', 'ponte-caldelas', 36820, '42.388917', '-8.503118');INSERT INTO MUNICIPIOS VALUES
(5353, 47, 'Ponteareas', 'ponteareas', 36860, '42.176317', '-8.505220');INSERT INTO MUNICIPIOS VALUES
(5354, 47, 'Pontecesures', 'pontecesures', 36640, '42.716782', '-8.649373');INSERT INTO MUNICIPIOS VALUES
(5355, 47, 'Pontevedra', 'pontevedra', 36002, '42.433815', '-8.647227');INSERT INTO MUNICIPIOS VALUES
(5356, 47, 'PorriÒo', 'porrino', 36475, '42.092522', '-8.613195');INSERT INTO MUNICIPIOS VALUES
(5357, 47, 'Portas', 'portas', 36658, '42.583375', '-8.666604');INSERT INTO MUNICIPIOS VALUES
(5358, 47, 'Redondela', 'redondela', 36800, '42.283691', '-8.606844');INSERT INTO MUNICIPIOS VALUES
(5359, 47, 'Ribadumia', 'ribadumia', 36636, '42.515164', '-8.757434');INSERT INTO MUNICIPIOS VALUES
(5360, 47, 'Rodeiro', 'rodeiro', 36530, '42.649175', '-7.949295');INSERT INTO MUNICIPIOS VALUES
(5361, 47, 'Rosal', 'rosal', 36770, '41.934721', '-8.835325');INSERT INTO MUNICIPIOS VALUES
(5362, 47, 'Salceda de Caselas', 'salceda-de-caselas', 36470, '42.101502', '-8.556848');INSERT INTO MUNICIPIOS VALUES
(5363, 47, 'Salvaterra de MiÒo', 'salvaterra-de-mino', 36450, '42.154369', '-8.432693');INSERT INTO MUNICIPIOS VALUES
(5364, 47, 'Sanxenxo', 'sanxenxo', 36960, '42.399724', '-8.806615');INSERT INTO MUNICIPIOS VALUES
(5365, 47, 'Silleda', 'silleda', 36540, '42.698207', '-8.248029');INSERT INTO MUNICIPIOS VALUES
(5366, 47, 'Soutomaior', 'soutomaior', 36691, '42.333423', '-8.566718');INSERT INTO MUNICIPIOS VALUES
(5367, 47, 'TomiÒo', 'tomino', 36740, '41.987503', '-8.745117');INSERT INTO MUNICIPIOS VALUES
(5368, 47, 'Tui', 'tui', 36700, '42.046329', '-8.643665');INSERT INTO MUNICIPIOS VALUES
(5369, 47, 'Valga', 'valga', 36645, '42.694517', '-8.639202');INSERT INTO MUNICIPIOS VALUES
(5370, 47, 'Vigo', 'vigo', 36201, '42.231536', '-8.712587');INSERT INTO MUNICIPIOS VALUES
(5371, 47, 'Vila de Cruces', 'vila-de-cruces', 36590, '42.794960', '-8.170481');INSERT INTO MUNICIPIOS VALUES
(5372, 47, 'Vilaboa', 'vilaboa', 36141, '42.347317', '-8.646498');INSERT INTO MUNICIPIOS VALUES
(5373, 47, 'VilagarcÌa de Arousa', 'vilagarcia-de-arousa', 36600, '42.593343', '-8.767819');INSERT INTO MUNICIPIOS VALUES
(5374, 47, 'Vilanova de Arousa', 'vilanova-de-arousa', 36620, '42.562437', '-8.826571');INSERT INTO MUNICIPIOS VALUES
(5376, 4, 'Abusejo', 'abusejo', 37640, '40.711450', '-6.143169');INSERT INTO MUNICIPIOS VALUES
(5377, 4, 'Agallas', 'agallas', 37510, '40.448825', '-6.442294');INSERT INTO MUNICIPIOS VALUES
(5378, 4, 'Ahigal de los Aceiteros', 'ahigal-de-los-aceiteros', 37248, '40.873371', '-6.746620');INSERT INTO MUNICIPIOS VALUES
(5379, 4, 'Ahigal de Villarino', 'ahigal-de-villarino', 37173, '41.160413', '-6.382867');INSERT INTO MUNICIPIOS VALUES
(5380, 4, 'Alameda de GardÛn', 'alameda-de-gardon', 37497, '40.650039', '-6.757278');INSERT INTO MUNICIPIOS VALUES
(5381, 4, 'Alamedilla', 'alamedilla', 37554, '40.472031', '-6.826980');INSERT INTO MUNICIPIOS VALUES
(5382, 4, 'Alaraz', 'alaraz', 37312, '40.751054', '-5.281989');INSERT INTO MUNICIPIOS VALUES
(5383, 4, 'Alba de Tormes', 'alba-de-tormes', 37800, '40.823833', '-5.511472');INSERT INTO MUNICIPIOS VALUES
(5384, 4, 'Alba de Yeltes', 'alba-de-yeltes', 37478, '40.671799', '-6.316369');INSERT INTO MUNICIPIOS VALUES
(5385, 4, 'Alberca', 'alberca', 37624, '40.488331', '-6.107940');INSERT INTO MUNICIPIOS VALUES
(5386, 4, 'AlberguerÌa de ArgaÒ·n', 'albergueria-de-arganan', 37555, '40.410214', '-6.813127');INSERT INTO MUNICIPIOS VALUES
(5387, 4, 'Alconada', 'alconada', 37329, '40.911432', '-5.363060');INSERT INTO MUNICIPIOS VALUES
(5388, 4, 'Aldea del Obispo', 'aldea-del-obispo', 37488, '40.706714', '-6.794500');INSERT INTO MUNICIPIOS VALUES
(5389, 4, 'Aldeacipreste', 'aldeacipreste', 37718, '40.380312', '-5.896967');INSERT INTO MUNICIPIOS VALUES
(5390, 4, 'Aldead·vila de la Ribera', 'aldeadavila-de-la-ribera', 37250, '41.217745', '-6.614124');INSERT INTO MUNICIPIOS VALUES
(5391, 4, 'Aldealengua', 'aldealengua', 37350, '40.980811', '-5.549056');INSERT INTO MUNICIPIOS VALUES
(5392, 4, 'Aldeanueva de Figueroa', 'aldeanueva-de-figueroa', 37429, '41.147470', '-5.528124');INSERT INTO MUNICIPIOS VALUES
(5393, 4, 'Aldeanueva de la Sierra', 'aldeanueva-de-la-sierra', 37621, '40.616313', '-6.100161');INSERT INTO MUNICIPIOS VALUES
(5394, 4, 'Aldearrodrigo', 'aldearrodrigo', 37110, '41.110658', '-5.806603');INSERT INTO MUNICIPIOS VALUES
(5395, 4, 'Aldearrubia', 'aldearrubia', 37340, '41.008413', '-5.496430');INSERT INTO MUNICIPIOS VALUES
(5396, 4, 'Aldeaseca de Alba', 'aldeaseca-de-alba', 37870, '40.819635', '-5.447844');INSERT INTO MUNICIPIOS VALUES
(5397, 4, 'Aldeaseca de la Frontera', 'aldeaseca-de-la-frontera', 37317, '40.941430', '-5.207652');INSERT INTO MUNICIPIOS VALUES
(5398, 4, 'Aldeatejada', 'aldeatejada', 37187, '40.923700', '-5.692259');INSERT INTO MUNICIPIOS VALUES
(5399, 4, 'Aldeavieja de Tormes', 'aldeavieja-de-tormes', 37779, '40.583565', '-5.614394');INSERT INTO MUNICIPIOS VALUES
(5400, 4, 'Aldehuela de la BÛveda', 'aldehuela-de-la-boveda', 37460, '40.843207', '-6.049827');INSERT INTO MUNICIPIOS VALUES
(5401, 4, 'Aldehuela de Yeltes', 'aldehuela-de-yeltes', 37639, '40.661805', '-6.241904');INSERT INTO MUNICIPIOS VALUES
(5402, 4, 'Almenara de Tormes', 'almenara-de-tormes', 37115, '41.063756', '-5.822380');INSERT INTO MUNICIPIOS VALUES
(5403, 4, 'Almendra', 'almendra', 37176, '41.228460', '-6.344794');INSERT INTO MUNICIPIOS VALUES
(5404, 4, 'Anaya de Alba', 'anaya-de-alba', 37863, '40.729857', '-5.490647');INSERT INTO MUNICIPIOS VALUES
(5405, 4, 'AÒover de Tormes', 'anover-de-tormes', 37111, '41.136130', '-5.914259');INSERT INTO MUNICIPIOS VALUES
(5406, 4, 'Arabayona de MÛgica', 'arabayona-de-mogica', 37418, '41.047910', '-5.386989');INSERT INTO MUNICIPIOS VALUES
(5407, 4, 'Arapiles', 'arapiles', 37796, '40.893038', '-5.644916');INSERT INTO MUNICIPIOS VALUES
(5408, 4, 'Arcediano', 'arcediano', 37429, '41.093905', '-5.560599');INSERT INTO MUNICIPIOS VALUES
(5409, 4, 'Arco', 'arco', 37110, '41.110748', '-5.824860');INSERT INTO MUNICIPIOS VALUES
(5410, 4, 'Armenteros', 'armenteros', 37755, '40.593910', '-5.449004');INSERT INTO MUNICIPIOS VALUES
(5411, 4, 'Atalaya', 'atalaya', 37591, '40.502444', '-6.412582');INSERT INTO MUNICIPIOS VALUES
(5412, 4, 'Babilafuente', 'babilafuente', 37330, '40.975520', '-5.423704');INSERT INTO MUNICIPIOS VALUES
(5413, 4, 'BaÒob·rez', 'banobarez', 37271, '40.850854', '-6.612496');INSERT INTO MUNICIPIOS VALUES
(5414, 4, 'Barbadillo', 'barbadillo', 37440, '40.929890', '-5.881644');INSERT INTO MUNICIPIOS VALUES
(5415, 4, 'Barbalos', 'barbalos', 37607, '40.677380', '-5.943089');INSERT INTO MUNICIPIOS VALUES
(5416, 4, 'Barceo', 'barceo', 37217, '41.060187', '-6.454426');INSERT INTO MUNICIPIOS VALUES
(5417, 4, 'Barruecopardo', 'barruecopardo', 37255, '41.072450', '-6.665824');INSERT INTO MUNICIPIOS VALUES
(5418, 4, 'Bastida', 'bastida', 37621, '40.585082', '-6.057930');INSERT INTO MUNICIPIOS VALUES
(5419, 4, 'BÈjar', 'bejar', 37700, '40.388128', '-5.772816');INSERT INTO MUNICIPIOS VALUES
(5420, 4, 'BeleÒa', 'belena', 37789, '40.752079', '-5.627610');INSERT INTO MUNICIPIOS VALUES
(5421, 4, 'Bermellar', 'bermellar', 37291, '40.998397', '-6.669210');INSERT INTO MUNICIPIOS VALUES
(5422, 4, 'Berrocal de Huebra', 'berrocal-de-huebra', 37609, '40.717725', '-6.003444');INSERT INTO MUNICIPIOS VALUES
(5423, 4, 'Berrocal de Salvatierra', 'berrocal-de-salvatierra', 37795, '40.632508', '-5.692504');INSERT INTO MUNICIPIOS VALUES
(5424, 4, 'Boada', 'boada', 37290, '40.816018', '-6.305466');INSERT INTO MUNICIPIOS VALUES
(5425, 4, 'BodÛn', 'bodon', 37520, '40.487629', '-6.576560');INSERT INTO MUNICIPIOS VALUES
(5426, 4, 'Bogajo', 'bogajo', 37291, '40.908015', '-6.532444');INSERT INTO MUNICIPIOS VALUES
(5427, 4, 'Bouza', 'bouza', 37488, '40.835720', '-6.794390');INSERT INTO MUNICIPIOS VALUES
(5428, 4, 'BÛveda del RÌo Almar', 'boveda-del-rio-almar', 37316, '40.855942', '-5.208684');INSERT INTO MUNICIPIOS VALUES
(5429, 4, 'Brincones', 'brincones', 37217, '41.114361', '-6.347663');INSERT INTO MUNICIPIOS VALUES
(5430, 4, 'Buenamadre', 'buenamadre', 37209, '40.856078', '-6.249685');INSERT INTO MUNICIPIOS VALUES
(5431, 4, 'Buenavista', 'buenavista', 37789, '40.766605', '-5.612764');INSERT INTO MUNICIPIOS VALUES
(5432, 4, 'Cabaco', 'cabaco', 37621, '40.564351', '-6.126595');INSERT INTO MUNICIPIOS VALUES
(5433, 4, 'Cabeza de BÈjar', 'cabeza-de-bejar', 37773, '40.495090', '-5.664414');INSERT INTO MUNICIPIOS VALUES
(5434, 4, 'Cabeza del Caballo', 'cabeza-del-caballo', 37214, '41.128870', '-6.557729');INSERT INTO MUNICIPIOS VALUES
(5435, 4, 'Cabezabellosa de la Calzada', 'cabezabellosa-de-la-calzada', 37490, '41.044445', '-5.488824');INSERT INTO MUNICIPIOS VALUES
(5436, 4, 'Cabrerizos', 'cabrerizos', 37193, '40.979435', '-5.610259');INSERT INTO MUNICIPIOS VALUES
(5437, 4, 'Cabrillas', 'cabrillas', 37630, '40.738045', '-6.177868');INSERT INTO MUNICIPIOS VALUES
(5438, 4, 'Calvarrasa de Abajo', 'calvarrasa-de-abajo', 37181, '40.945895', '-5.553934');INSERT INTO MUNICIPIOS VALUES
(5439, 4, 'Calvarrasa de Arriba', 'calvarrasa-de-arriba', 37191, '40.907289', '-5.593971');INSERT INTO MUNICIPIOS VALUES
(5440, 4, 'Calzada de BÈjar', 'calzada-de-bejar', 37714, '40.411634', '-5.816488');INSERT INTO MUNICIPIOS VALUES
(5441, 4, 'Calzada de Don Diego', 'calzada-de-don-diego', 37448, '40.906101', '-5.899890');INSERT INTO MUNICIPIOS VALUES
(5442, 4, 'Calzada de Valdunciel', 'calzada-de-valdunciel', 37797, '41.086811', '-5.701200');INSERT INTO MUNICIPIOS VALUES
(5443, 4, 'Campillo de Azaba', 'campillo-de-azaba', 37550, '40.509900', '-6.688934');INSERT INTO MUNICIPIOS VALUES
(5444, 4, 'Campo de PeÒaranda', 'campo-de-penaranda', 37317, '40.985211', '-5.257645');INSERT INTO MUNICIPIOS VALUES
(5445, 4, 'Candelario', 'candelario', 37710, '40.366265', '-5.741694');INSERT INTO MUNICIPIOS VALUES
(5446, 4, 'Canillas de Abajo', 'canillas-de-abajo', 37448, '40.922849', '-5.928322');INSERT INTO MUNICIPIOS VALUES
(5447, 4, 'Cantagallo', 'cantagallo', 37716, '40.373009', '-5.819597');INSERT INTO MUNICIPIOS VALUES
(5448, 4, 'Cantalapiedra', 'cantalapiedra', 37400, '41.125269', '-5.184183');INSERT INTO MUNICIPIOS VALUES
(5449, 4, 'Cantalpino', 'cantalpino', 37405, '41.052151', '-5.330113');INSERT INTO MUNICIPIOS VALUES
(5450, 4, 'Cantaracillo', 'cantaracillo', 37319, '40.901338', '-5.162446');INSERT INTO MUNICIPIOS VALUES
(5451, 4, 'Carbajosa de la Sagrada', 'carbajosa-de-la-sagrada', 37188, '40.934213', '-5.651144');INSERT INTO MUNICIPIOS VALUES
(5452, 4, 'Carpio de Azaba', 'carpio-de-azaba', 37497, '40.594813', '-6.646663');INSERT INTO MUNICIPIOS VALUES
(5453, 4, 'Carrascal de Barregas', 'carrascal-de-barregas', 37129, '40.978300', '-5.761329');INSERT INTO MUNICIPIOS VALUES
(5454, 4, 'Carrascal del Obispo', 'carrascal-del-obispo', 37451, '40.763938', '-6.000215');INSERT INTO MUNICIPIOS VALUES
(5455, 4, 'Casafranca', 'casafranca', 37767, '40.592775', '-5.763494');INSERT INTO MUNICIPIOS VALUES
(5456, 4, 'Casas del Conde', 'casas-del-conde', 37659, '40.507227', '-6.039336');
INSERT INTO `poblacion` (`idpoblacion`, `idprovincia`, `poblacion`, `poblacionseo`, `postal`, `latitud`, `longitud`) VALUES
(5457, 4, 'Casillas de Flores', 'casillas-de-flores', 37541, '40.381651', '-6.753660');INSERT INTO MUNICIPIOS VALUES
(5458, 4, 'Castellanos de Moriscos', 'castellanos-de-moriscos', 37439, '41.020090', '-5.592724');INSERT INTO MUNICIPIOS VALUES
(5459, 4, 'Castellanos de Villiquera', 'castellanos-de-villiquera', 37797, '41.051015', '-5.693479');INSERT INTO MUNICIPIOS VALUES
(5460, 4, 'Castillejo de MartÌn Viejo', 'castillejo-de-martin-viejo', 37592, '40.699220', '-6.646824');INSERT INTO MUNICIPIOS VALUES
(5461, 4, 'Castraz', 'castraz', 37496, '40.705402', '-6.334576');INSERT INTO MUNICIPIOS VALUES
(5462, 4, 'Cepeda', 'cepeda', 37656, '40.466520', '-6.041709');INSERT INTO MUNICIPIOS VALUES
(5463, 4, 'Cereceda de la Sierra', 'cereceda-de-la-sierra', 37621, '40.565805', '-6.092349');INSERT INTO MUNICIPIOS VALUES
(5464, 4, 'Cerezal de PeÒahorcada', 'cerezal-de-penahorcada', 37253, '41.129230', '-6.654359');INSERT INTO MUNICIPIOS VALUES
(5465, 4, 'Cerralbo', 'cerralbo', 37291, '40.972791', '-6.588133');INSERT INTO MUNICIPIOS VALUES
(5466, 4, 'Cerro', 'cerro', 37720, '40.327375', '-5.915794');INSERT INTO MUNICIPIOS VALUES
(5467, 4, 'Cespedosa de Tormes', 'cespedosa-de-tormes', 37750, '40.541530', '-5.579777');INSERT INTO MUNICIPIOS VALUES
(5468, 4, 'ChagarcÌa Medianero', 'chagarcia-medianero', 37861, '40.647664', '-5.382431');INSERT INTO MUNICIPIOS VALUES
(5469, 4, 'Cilleros de la Bastida', 'cilleros-de-la-bastida', 37621, '40.576153', '-6.061252');INSERT INTO MUNICIPIOS VALUES
(5470, 4, 'CipÈrez', 'ciperez', 37216, '40.960610', '-6.263537');INSERT INTO MUNICIPIOS VALUES
(5471, 4, 'Ciudad Rodrigo', 'ciudad-rodrigo', 37500, '40.598865', '-6.530449');INSERT INTO MUNICIPIOS VALUES
(5472, 4, 'Coca de Alba', 'coca-de-alba', 37830, '40.877116', '-5.365623');INSERT INTO MUNICIPIOS VALUES
(5473, 4, 'Colmenar de Montemayor', 'colmenar-de-montemayor', 37711, '40.399455', '-5.956439');INSERT INTO MUNICIPIOS VALUES
(5474, 4, 'Cordovilla', 'cordovilla', 37337, '40.951890', '-5.407659');INSERT INTO MUNICIPIOS VALUES
(5475, 4, 'CristÛbal', 'cristobal', 37684, '40.469150', '-5.888459');INSERT INTO MUNICIPIOS VALUES
(5476, 4, 'Cubo de Don Sancho', 'cubo-de-don-sancho', 37281, '40.891902', '-6.305774');INSERT INTO MUNICIPIOS VALUES
(5477, 4, 'Dios le Guarde', 'dios-le-guarde', 37478, '40.642360', '-6.314054');INSERT INTO MUNICIPIOS VALUES
(5478, 4, 'DoÒinos de Ledesma', 'doninos-de-ledesma', 37130, '41.012625', '-6.035284');INSERT INTO MUNICIPIOS VALUES
(5479, 4, 'DoÒinos de Salamanca', 'doninos-de-salamanca', 37120, '40.960445', '-5.746209');INSERT INTO MUNICIPIOS VALUES
(5480, 4, 'Ejeme', 'ejeme', 37891, '40.766564', '-5.540106');INSERT INTO MUNICIPIOS VALUES
(5481, 4, 'Encina', 'encina', 37515, '40.498528', '-6.531372');INSERT INTO MUNICIPIOS VALUES
(5482, 4, 'Encina de San Silvestre', 'encina-de-san-silvestre', 37114, '41.013519', '-6.092852');INSERT INTO MUNICIPIOS VALUES
(5483, 4, 'Encinas de Abajo', 'encinas-de-abajo', 37893, '40.933500', '-5.466269');INSERT INTO MUNICIPIOS VALUES
(5484, 4, 'Encinas de Arriba', 'encinas-de-arriba', 37892, '40.772103', '-5.557513');INSERT INTO MUNICIPIOS VALUES
(5485, 4, 'Encinasola de los Comendadores', 'encinasola-de-los-comendadores', 37256, '41.033000', '-6.533252');INSERT INTO MUNICIPIOS VALUES
(5486, 4, 'Endrinal', 'endrinal', 37766, '40.591702', '-5.804794');INSERT INTO MUNICIPIOS VALUES
(5487, 4, 'Escurial de la Sierra', 'escurial-de-la-sierra', 37762, '40.617028', '-5.955242');INSERT INTO MUNICIPIOS VALUES
(5488, 4, 'EspadaÒa', 'espadana', 37148, '41.061925', '-6.284947');INSERT INTO MUNICIPIOS VALUES
(5489, 4, 'Espeja', 'espeja', 37497, '40.566368', '-6.715111');INSERT INTO MUNICIPIOS VALUES
(5490, 4, 'Espino de la Orbada', 'espino-de-la-orbada', 37419, '41.105540', '-5.422619');INSERT INTO MUNICIPIOS VALUES
(5491, 4, 'Florida de LiÈbana', 'florida-de-liebana', 37129, '41.026795', '-5.760819');INSERT INTO MUNICIPIOS VALUES
(5492, 4, 'Forfoleda', 'forfoleda', 37799, '41.096805', '-5.748254');INSERT INTO MUNICIPIOS VALUES
(5493, 4, 'Frades de la Sierra', 'frades-de-la-sierra', 37766, '40.656632', '-5.782890');INSERT INTO MUNICIPIOS VALUES
(5494, 4, 'Fregeneda', 'fregeneda', 37220, '40.987659', '-6.866330');INSERT INTO MUNICIPIOS VALUES
(5495, 4, 'Fresnedoso', 'fresnedoso', 37775, '40.435903', '-5.709792');INSERT INTO MUNICIPIOS VALUES
(5496, 4, 'Fresno Alh·ndiga', 'fresno-alhandiga', 37789, '40.713100', '-5.618052');INSERT INTO MUNICIPIOS VALUES
(5497, 4, 'Fuente de San Esteban', 'fuente-de-san-esteban', 37200, '40.801895', '-6.257334');INSERT INTO MUNICIPIOS VALUES
(5498, 4, 'Fuenteguinaldo', 'fuenteguinaldo', 37540, '40.429805', '-6.679804');INSERT INTO MUNICIPIOS VALUES
(5499, 4, 'Fuenteliante', 'fuenteliante', 37291, '40.874850', '-6.572344');INSERT INTO MUNICIPIOS VALUES
(5500, 4, 'Fuenterroble de Salvatierra', 'fuenterroble-de-salvatierra', 37768, '40.564295', '-5.733739');INSERT INTO MUNICIPIOS VALUES
(5501, 4, 'Fuentes de BÈjar', 'fuentes-de-bejar', 37790, '40.508977', '-5.691600');INSERT INTO MUNICIPIOS VALUES
(5502, 4, 'Fuentes de OÒoro', 'fuentes-de-onoro', 37480, '40.594880', '-6.810939');INSERT INTO MUNICIPIOS VALUES
(5503, 4, 'Gajates', 'gajates', 37874, '40.782045', '-5.365104');INSERT INTO MUNICIPIOS VALUES
(5504, 4, 'Galindo y Perahuy', 'galindo-y-perahuy', 37449, '40.942924', '-5.871155');INSERT INTO MUNICIPIOS VALUES
(5505, 4, 'Galinduste', 'galinduste', 37785, '40.661424', '-5.541324');INSERT INTO MUNICIPIOS VALUES
(5506, 4, 'Galisancho', 'galisancho', 37891, '40.743031', '-5.554072');INSERT INTO MUNICIPIOS VALUES
(5507, 4, 'Gallegos de ArgaÒ·n', 'gallegos-de-arganan', 37497, '40.631206', '-6.701818');INSERT INTO MUNICIPIOS VALUES
(5508, 4, 'Gallegos de SolmirÛn', 'gallegos-de-solmiron', 37751, '40.535820', '-5.446754');INSERT INTO MUNICIPIOS VALUES
(5509, 4, 'Garcibuey', 'garcibuey', 37658, '40.515995', '-5.992484');INSERT INTO MUNICIPIOS VALUES
(5510, 4, 'Garcihern·ndez', 'garcihernandez', 37810, '40.860813', '-5.433402');INSERT INTO MUNICIPIOS VALUES
(5511, 4, 'Garcirrey', 'garcirrey', 37460, '40.900967', '-6.130592');INSERT INTO MUNICIPIOS VALUES
(5512, 4, 'Gejuelo del Barro', 'gejuelo-del-barro', 37114, '41.077735', '-6.123974');INSERT INTO MUNICIPIOS VALUES
(5513, 4, 'Golpejas', 'golpejas', 37170, '40.997550', '-5.909019');INSERT INTO MUNICIPIOS VALUES
(5514, 4, 'Gomecello', 'gomecello', 37420, '41.044120', '-5.538144');INSERT INTO MUNICIPIOS VALUES
(5515, 4, 'Guadramiro', 'guadramiro', 37219, '41.017722', '-6.494976');INSERT INTO MUNICIPIOS VALUES
(5516, 4, 'Guijo de ¡Åvila', 'guijo-de-avila', 37774, '40.529830', '-5.641186');INSERT INTO MUNICIPIOS VALUES
(5517, 4, 'Guijuelo', 'guijuelo', 37770, '40.557689', '-5.672826');INSERT INTO MUNICIPIOS VALUES
(5518, 4, 'Herguijuela de Ciudad Rodrigo', 'herguijuela-de-ciudad-rodrigo', 37516, '40.458657', '-6.521071');INSERT INTO MUNICIPIOS VALUES
(5519, 4, 'Herguijuela de la Sierra', 'herguijuela-de-la-sierra', 37619, '40.445611', '-6.074028');INSERT INTO MUNICIPIOS VALUES
(5520, 4, 'Herguijuela del Campo', 'herguijuela-del-campo', 37759, '40.630451', '-5.862038');INSERT INTO MUNICIPIOS VALUES
(5521, 4, 'Hinojosa de Duero', 'hinojosa-de-duero', 37230, '40.987525', '-6.794379');INSERT INTO MUNICIPIOS VALUES
(5522, 4, 'Horcajo de Montemayor', 'horcajo-de-montemayor', 37712, '40.422445', '-5.893984');INSERT INTO MUNICIPIOS VALUES
(5523, 4, 'Horcajo Medianero', 'horcajo-medianero', 37860, '40.641750', '-5.408249');INSERT INTO MUNICIPIOS VALUES
(5524, 4, 'Hoya', 'hoya', 37716, '40.406993', '-5.698729');INSERT INTO MUNICIPIOS VALUES
(5525, 4, 'Huerta', 'huerta', 37336, '40.967942', '-5.467758');INSERT INTO MUNICIPIOS VALUES
(5526, 4, 'Iruelos', 'iruelos', 37217, '41.140479', '-6.328347');INSERT INTO MUNICIPIOS VALUES
(5527, 4, 'Ituero de Azaba', 'ituero-de-azaba', 37551, '40.484770', '-6.694824');INSERT INTO MUNICIPIOS VALUES
(5528, 4, 'Juzbado', 'juzbado', 37115, '41.079790', '-5.862499');INSERT INTO MUNICIPIOS VALUES
(5529, 4, 'Lagunilla', 'lagunilla', 37724, '40.323879', '-5.973722');INSERT INTO MUNICIPIOS VALUES
(5530, 4, 'Larrodrigo', 'larrodrigo', 37865, '40.741120', '-5.451239');INSERT INTO MUNICIPIOS VALUES
(5531, 4, 'Ledesma', 'ledesma', 37100, '41.090789', '-5.998660');INSERT INTO MUNICIPIOS VALUES
(5532, 4, 'Ledrada', 'ledrada', 37730, '40.467830', '-5.720871');INSERT INTO MUNICIPIOS VALUES
(5533, 4, 'Linares de RiofrÌo', 'linares-de-riofrio', 37760, '40.582578', '-5.921019');INSERT INTO MUNICIPIOS VALUES
(5534, 4, 'Lumbrales', 'lumbrales', 37240, '40.934415', '-6.720749');INSERT INTO MUNICIPIOS VALUES
(5535, 4, 'MachacÛn', 'machacon', 37894, '40.926715', '-5.523974');INSERT INTO MUNICIPIOS VALUES
(5536, 4, 'Macotera', 'macotera', 37310, '40.830785', '-5.279101');INSERT INTO MUNICIPIOS VALUES
(5537, 4, 'MadroÒal', 'madronal', 37619, '40.463777', '-6.061836');INSERT INTO MUNICIPIOS VALUES
(5538, 4, 'MaÌllo', 'maillo', 37621, '40.565590', '-6.180153');INSERT INTO MUNICIPIOS VALUES
(5539, 4, 'Malpartida', 'malpartida', 37313, '40.762465', '-5.234565');INSERT INTO MUNICIPIOS VALUES
(5540, 4, 'Mancera de Abajo', 'mancera-de-abajo', 37315, '40.841505', '-5.199509');INSERT INTO MUNICIPIOS VALUES
(5541, 4, 'Manzano', 'manzano', 37171, '41.173615', '-6.287613');INSERT INTO MUNICIPIOS VALUES
(5542, 4, 'Martiago', 'martiago', 37510, '40.454410', '-6.489274');INSERT INTO MUNICIPIOS VALUES
(5543, 4, 'MartÌn de Yeltes', 'martin-de-yeltes', 37494, '40.774256', '-6.290710');INSERT INTO MUNICIPIOS VALUES
(5544, 4, 'Martinamor', 'martinamor', 37891, '40.807125', '-5.599909');INSERT INTO MUNICIPIOS VALUES
(5545, 4, 'Masueco', 'masueco', 37251, '41.203505', '-6.588794');INSERT INTO MUNICIPIOS VALUES
(5546, 4, 'Mata de Ledesma', 'mata-de-ledesma', 37130, '41.000330', '-5.971879');INSERT INTO MUNICIPIOS VALUES
(5547, 4, 'Matilla de los CaÒos del RÌo', 'matilla-de-los-canos-del-rio', 37450, '40.825370', '-5.941899');INSERT INTO MUNICIPIOS VALUES
(5548, 4, 'Maya', 'maya', 37780, '40.687241', '-5.614880');INSERT INTO MUNICIPIOS VALUES
(5549, 4, 'Membribe de la Sierra', 'membribe-de-la-sierra', 37766, '40.690191', '-5.806281');INSERT INTO MUNICIPIOS VALUES
(5550, 4, 'Mieza', 'mieza', 37254, '41.162444', '-6.687782');INSERT INTO MUNICIPIOS VALUES
(5551, 4, 'Milano', 'milano', 37256, '41.092346', '-6.598627');INSERT INTO MUNICIPIOS VALUES
(5552, 4, 'Miranda de Az·n', 'miranda-de-azan', 37187, '40.886129', '-5.683438');INSERT INTO MUNICIPIOS VALUES
(5553, 4, 'Miranda del CastaÒar', 'miranda-del-castanar', 37660, '40.484515', '-5.998944');INSERT INTO MUNICIPIOS VALUES
(5554, 4, 'Mogarraz', 'mogarraz', 37610, '40.493188', '-6.052382');INSERT INTO MUNICIPIOS VALUES
(5555, 4, 'Molinillo', 'molinillo', 37683, '40.469743', '-5.944362');INSERT INTO MUNICIPIOS VALUES
(5556, 4, 'Monforte de la Sierra', 'monforte-de-la-sierra', 37618, '40.483245', '-6.054793');INSERT INTO MUNICIPIOS VALUES
(5557, 4, 'MonleÛn', 'monleon', 37765, '40.584950', '-5.847094');INSERT INTO MUNICIPIOS VALUES
(5558, 4, 'Monleras', 'monleras', 37171, '41.184175', '-6.228619');INSERT INTO MUNICIPIOS VALUES
(5559, 4, 'Monsagro', 'monsagro', 37532, '40.503940', '-6.271104');INSERT INTO MUNICIPIOS VALUES
(5560, 4, 'Montejo', 'montejo', 37795, '40.631650', '-5.622725');INSERT INTO MUNICIPIOS VALUES
(5561, 4, 'Montemayor del RÌo', 'montemayor-del-rio', 37727, '40.348600', '-5.894879');INSERT INTO MUNICIPIOS VALUES
(5562, 4, 'Monterrubio de ArmuÒa', 'monterrubio-de-armuna', 37798, '41.028611', '-5.642157');INSERT INTO MUNICIPIOS VALUES
(5563, 4, 'Monterrubio de la Sierra', 'monterrubio-de-la-sierra', 37781, '40.756610', '-5.692787');INSERT INTO MUNICIPIOS VALUES
(5564, 4, 'Morasverdes', 'morasverdes', 37590, '40.600986', '-6.274401');INSERT INTO MUNICIPIOS VALUES
(5565, 4, 'Morille', 'morille', 37183, '40.808533', '-5.701046');INSERT INTO MUNICIPIOS VALUES
(5566, 4, 'MorÌÒigo', 'morinigo', 37337, '40.970051', '-5.414013');INSERT INTO MUNICIPIOS VALUES
(5567, 4, 'Moriscos', 'moriscos', 37430, '41.006945', '-5.583494');INSERT INTO MUNICIPIOS VALUES
(5568, 4, 'Moronta', 'moronta', 34126, '40.978093', '-6.430344');INSERT INTO MUNICIPIOS VALUES
(5569, 4, 'Moz·rbez', 'mozarbez', 37796, '40.857855', '-5.651274');INSERT INTO MUNICIPIOS VALUES
(5570, 4, 'Narros de Matalayegua', 'narros-de-matalayegua', 37609, '40.700005', '-5.927760');INSERT INTO MUNICIPIOS VALUES
(5571, 4, 'Nava de BÈjar', 'nava-de-bejar', 37776, '40.475154', '-5.678096');INSERT INTO MUNICIPIOS VALUES
(5572, 4, 'Nava de Francia', 'nava-de-francia', 37659, '40.536450', '-6.112757');INSERT INTO MUNICIPIOS VALUES
(5573, 4, 'Nava de Sotrobal', 'nava-de-sotrobal', 37850, '40.887360', '-5.286004');INSERT INTO MUNICIPIOS VALUES
(5574, 4, 'Navacarros', 'navacarros', 37716, '40.398337', '-5.715148');INSERT INTO MUNICIPIOS VALUES
(5575, 4, 'Navales', 'navales', 37882, '40.789218', '-5.479700');INSERT INTO MUNICIPIOS VALUES
(5576, 4, 'Navalmoral de BÈjar', 'navalmoral-de-bejar', 37794, '40.423374', '-5.783967');INSERT INTO MUNICIPIOS VALUES
(5577, 4, 'Navamorales', 'navamorales', 37749, '40.476780', '-5.479297');INSERT INTO MUNICIPIOS VALUES
(5578, 4, 'Navarredonda de la Rinconada', 'navarredonda-de-la-rinconada', 37607, '40.605721', '-6.011971');INSERT INTO MUNICIPIOS VALUES
(5579, 4, 'NavasfrÌas', 'navasfrias', 37542, '40.295703', '-6.819802');INSERT INTO MUNICIPIOS VALUES
(5580, 4, 'Negrilla de Palencia', 'negrilla-de-palencia', 37799, '41.091300', '-5.594459');INSERT INTO MUNICIPIOS VALUES
(5581, 4, 'Olmedo de Camaces', 'olmedo-de-camaces', 37292, '40.880414', '-6.624595');INSERT INTO MUNICIPIOS VALUES
(5582, 4, 'Orbada', 'orbada', 37428, '41.102962', '-5.483894');INSERT INTO MUNICIPIOS VALUES
(5583, 4, 'Pajares de la Laguna', 'pajares-de-la-laguna', 37428, '41.088457', '-5.510006');INSERT INTO MUNICIPIOS VALUES
(5584, 4, 'Palacios del Arzobispo', 'palacios-del-arzobispo', 37111, '41.165790', '-5.889524');INSERT INTO MUNICIPIOS VALUES
(5585, 4, 'Palaciosrubios', 'palaciosrubios', 37406, '41.052630', '-5.193372');INSERT INTO MUNICIPIOS VALUES
(5586, 4, 'Palencia de Negrilla', 'palencia-de-negrilla', 37799, '41.095530', '-5.600429');INSERT INTO MUNICIPIOS VALUES
(5587, 4, 'Parada de Arriba', 'parada-de-arriba', 37129, '40.986751', '-5.794611');INSERT INTO MUNICIPIOS VALUES
(5588, 4, 'Parada de Rubiales', 'parada-de-rubiales', 37419, '41.147351', '-5.431044');INSERT INTO MUNICIPIOS VALUES
(5589, 4, 'Paradinas de San Juan', 'paradinas-de-san-juan', 37318, '40.982085', '-5.151355');INSERT INTO MUNICIPIOS VALUES
(5590, 4, 'Pastores', 'pastores', 37510, '40.514968', '-6.510375');INSERT INTO MUNICIPIOS VALUES
(5591, 4, 'Payo', 'payo', 37524, '40.287252', '-6.725693');INSERT INTO MUNICIPIOS VALUES
(5592, 4, 'Pedraza de Alba', 'pedraza-de-alba', 37882, '40.753965', '-5.378369');INSERT INTO MUNICIPIOS VALUES
(5593, 4, 'Pedrosillo de Alba', 'pedrosillo-de-alba', 37871, '40.822309', '-5.394906');INSERT INTO MUNICIPIOS VALUES
(5594, 4, 'Pedrosillo de los Aires', 'pedrosillo-de-los-aires', 37788, '40.715853', '-5.703370');INSERT INTO MUNICIPIOS VALUES
(5595, 4, 'Pedrosillo el Ralo', 'pedrosillo-el-ralo', 37427, '41.060655', '-5.547319');INSERT INTO MUNICIPIOS VALUES
(5596, 4, 'Pedroso de la ArmuÒa', 'pedroso-de-la-armuna', 37410, '41.080960', '-5.400079');INSERT INTO MUNICIPIOS VALUES
(5597, 4, 'Pelabravo', 'pelabravo', 37181, '40.937795', '-5.578729');INSERT INTO MUNICIPIOS VALUES
(5598, 4, 'PelarrodrÌguez', 'pelarrodriguez', 37209, '40.887165', '-6.212174');INSERT INTO MUNICIPIOS VALUES
(5599, 4, 'Pelayos', 'pelayos', 37787, '40.650934', '-5.572004');INSERT INTO MUNICIPIOS VALUES
(5600, 4, 'PeÒa', 'pena', 37214, '41.173740', '-6.517960');INSERT INTO MUNICIPIOS VALUES
(5601, 4, 'PeÒacaballera', 'penacaballera', 37727, '40.344535', '-5.860789');INSERT INTO MUNICIPIOS VALUES
(5602, 4, 'PeÒaparda', 'penaparda', 37523, '40.319456', '-6.670405');INSERT INTO MUNICIPIOS VALUES
(5603, 4, 'PeÒaranda de Bracamonte', 'penaranda-de-bracamonte', 37300, '40.900623', '-5.201707');INSERT INTO MUNICIPIOS VALUES
(5604, 4, 'PeÒarandilla', 'penarandilla', 37820, '40.883085', '-5.393194');INSERT INTO MUNICIPIOS VALUES
(5605, 4, 'Peralejos de Abajo', 'peralejos-de-abajo', 37216, '41.006920', '-6.369124');INSERT INTO MUNICIPIOS VALUES
(5606, 4, 'Peralejos de Arriba', 'peralejos-de-arriba', 37216, '41.005516', '-6.333627');INSERT INTO MUNICIPIOS VALUES
(5607, 4, 'PereÒa de la Ribera', 'perena-de-la-ribera', 37175, '41.236494', '-6.522309');INSERT INTO MUNICIPIOS VALUES
(5608, 4, 'Peromingo', 'peromingo', 37791, '40.463650', '-5.772559');INSERT INTO MUNICIPIOS VALUES
(5609, 4, 'Pinedas', 'pinedas', 37712, '40.445345', '-5.960455');INSERT INTO MUNICIPIOS VALUES
(5610, 4, 'Pino de Tormes', 'pino-de-tormes', 37170, '41.038265', '-5.793710');INSERT INTO MUNICIPIOS VALUES
(5611, 4, 'Pitiegua', 'pitiegua', 37490, '41.062710', '-5.467099');INSERT INTO MUNICIPIOS VALUES
(5612, 4, 'Pizarral', 'pizarral', 37795, '40.615515', '-5.649834');INSERT INTO MUNICIPIOS VALUES
(5613, 4, 'Poveda de las Cintas', 'poveda-de-las-cintas', 37406, '41.048115', '-5.261628');INSERT INTO MUNICIPIOS VALUES
(5614, 4, 'Pozos de Hinojo', 'pozos-de-hinojo', 37216, '40.913958', '-6.409922');INSERT INTO MUNICIPIOS VALUES
(5615, 4, 'Puebla de Azaba', 'puebla-de-azaba', 37553, '40.449580', '-6.745889');INSERT INTO MUNICIPIOS VALUES
(5616, 4, 'Puebla de San Medel', 'puebla-de-san-medel', 37791, '40.511339', '-5.737180');INSERT INTO MUNICIPIOS VALUES
(5617, 4, 'Puebla de Yeltes', 'puebla-de-yeltes', 37606, '40.625668', '-6.181704');INSERT INTO MUNICIPIOS VALUES
(5618, 4, 'Puente del Congosto', 'puente-del-congosto', 37748, '40.489620', '-5.526300');INSERT INTO MUNICIPIOS VALUES
(5619, 4, 'Puertas', 'puertas', 37159, '41.097064', '-6.285882');INSERT INTO MUNICIPIOS VALUES
(5620, 4, 'Puerto de BÈjar', 'puerto-de-bejar', 37720, '40.351155', '-5.836278');INSERT INTO MUNICIPIOS VALUES
(5621, 4, 'Puerto Seguro', 'puerto-seguro', 37488, '40.825800', '-6.761039');INSERT INTO MUNICIPIOS VALUES
(5622, 4, 'R·gama', 'ragama', 37318, '40.996974', '-5.128099');INSERT INTO MUNICIPIOS VALUES
(5623, 4, 'Redonda', 'redonda', 37247, '40.909199', '-6.749870');INSERT INTO MUNICIPIOS VALUES
(5624, 4, 'Retortillo', 'retortillo', 37495, '40.800488', '-6.359177');INSERT INTO MUNICIPIOS VALUES
(5625, 4, 'Rinconada de la Sierra', 'rinconada-de-la-sierra', 37607, '40.611924', '-6.020769');INSERT INTO MUNICIPIOS VALUES
(5626, 4, 'Robleda', 'robleda', 37521, '40.384851', '-6.607144');INSERT INTO MUNICIPIOS VALUES
(5627, 4, 'Robliza de Cojos', 'robliza-de-cojos', 37130, '40.868320', '-5.975834');INSERT INTO MUNICIPIOS VALUES
(5628, 4, 'Roll·n', 'rollan', 37447, '40.962580', '-5.913800');INSERT INTO MUNICIPIOS VALUES
(5629, 4, 'Saelices el Chico', 'saelices-el-chico', 37592, '40.670207', '-6.630246');INSERT INTO MUNICIPIOS VALUES
(5630, 4, 'Sagrada', 'sagrada', 37465, '40.744266', '-6.070633');INSERT INTO MUNICIPIOS VALUES
(5631, 4, 'Sahugo', 'sahugo', 37510, '40.414411', '-6.542358');INSERT INTO MUNICIPIOS VALUES
(5632, 4, 'Salamanca', 'salamanca', 37001, '40.964225', '-5.663849');INSERT INTO MUNICIPIOS VALUES
(5633, 4, 'Saldeana', 'saldeana', 37259, '41.021485', '-6.638454');INSERT INTO MUNICIPIOS VALUES
(5634, 4, 'Salmoral', 'salmoral', 37314, '40.801844', '-5.219163');INSERT INTO MUNICIPIOS VALUES
(5635, 4, 'Salvatierra de Tormes', 'salvatierra-de-tormes', 37779, '40.589959', '-5.598541');INSERT INTO MUNICIPIOS VALUES
(5636, 4, 'San CristÛbal de la Cuesta', 'san-cristobal-de-la-cuesta', 37439, '41.028979', '-5.617834');INSERT INTO MUNICIPIOS VALUES
(5637, 4, 'San Esteban de la Sierra', 'san-esteban-de-la-sierra', 37671, '40.506160', '-5.903639');INSERT INTO MUNICIPIOS VALUES
(5638, 4, 'San Felices de los Gallegos', 'san-felices-de-los-gallegos', 37270, '40.847739', '-6.703552');INSERT INTO MUNICIPIOS VALUES
(5639, 4, 'San MartÌn del CastaÒar', 'san-martin-del-castanar', 37659, '40.523725', '-6.064814');INSERT INTO MUNICIPIOS VALUES
(5640, 4, 'San Miguel de Valero', 'san-miguel-de-valero', 37763, '40.541750', '-5.919849');INSERT INTO MUNICIPIOS VALUES
(5641, 4, 'San Miguel del Robledo', 'san-miguel-del-robledo', 37659, '40.537631', '-6.046297');INSERT INTO MUNICIPIOS VALUES
(5642, 4, 'San Morales', 'san-morales', 37340, '40.992542', '-5.503198');INSERT INTO MUNICIPIOS VALUES
(5643, 4, 'San MuÒoz', 'san-munoz', 37208, '40.784594', '-6.129352');INSERT INTO MUNICIPIOS VALUES
(5644, 4, 'San Pedro de Rozados', 'san-pedro-de-rozados', 37183, '40.789400', '-5.738264');INSERT INTO MUNICIPIOS VALUES
(5645, 4, 'San Pedro del Valle', 'san-pedro-del-valle', 37170, '41.033605', '-5.860215');INSERT INTO MUNICIPIOS VALUES
(5646, 4, 'San Pelayo de GuareÒa', 'san-pelayo-de-guarena', 37110, '41.115373', '-5.858174');INSERT INTO MUNICIPIOS VALUES
(5647, 4, 'SanchÛn de la Ribera', 'sanchon-de-la-ribera', 37217, '41.088900', '-6.416284');INSERT INTO MUNICIPIOS VALUES
(5648, 4, 'SanchÛn de la Sagrada', 'sanchon-de-la-sagrada', 37466, '40.743780', '-6.025204');INSERT INTO MUNICIPIOS VALUES
(5649, 4, 'Sanchotello', 'sanchotello', 37794, '40.438828', '-5.751868');INSERT INTO MUNICIPIOS VALUES
(5650, 4, 'Sancti-SpÌritus', 'sancti-spiritus', 06655, '40.704805', '-6.400829');INSERT INTO MUNICIPIOS VALUES
(5651, 4, 'Sando', 'sando', 37468, '40.967690', '-6.111394');INSERT INTO MUNICIPIOS VALUES
(5652, 4, 'Santa MarÌa de Sando', 'santa-maria-de-sando', 37468, '40.979655', '-6.128254');INSERT INTO MUNICIPIOS VALUES
(5653, 4, 'Santa Marta de Tormes', 'santa-marta-de-tormes', 37900, '40.950620', '-5.626579');INSERT INTO MUNICIPIOS VALUES
(5654, 4, 'Santiago de la Puebla', 'santiago-de-la-puebla', 37311, '40.802689', '-5.275991');INSERT INTO MUNICIPIOS VALUES
(5655, 4, 'Santib·Òez de BÈjar', 'santibanez-de-bejar', 37740, '40.487435', '-5.608479');INSERT INTO MUNICIPIOS VALUES
(5656, 4, 'Santib·Òez de la Sierra', 'santibanez-de-la-sierra', 37670, '40.494275', '-5.916279');INSERT INTO MUNICIPIOS VALUES
(5657, 4, 'Santiz', 'santiz', 37110, '41.204713', '-5.895618');INSERT INTO MUNICIPIOS VALUES
(5658, 4, 'Santos', 'santos', 37768, '40.544220', '-5.798270');INSERT INTO MUNICIPIOS VALUES
(5659, 4, 'SardÛn de los Frailes', 'sardon-de-los-frailes', 37172, '41.207673', '-6.272038');INSERT INTO MUNICIPIOS VALUES
(5660, 4, 'Saucelle', 'saucelle', 37257, '41.047195', '-6.751374');INSERT INTO MUNICIPIOS VALUES
(5661, 4, 'Sepulcro-Hilario', 'sepulcro-hilario', 37638, '40.699854', '-6.186401');INSERT INTO MUNICIPIOS VALUES
(5662, 4, 'Sequeros', 'sequeros', 37650, '40.511746', '-6.024708');INSERT INTO MUNICIPIOS VALUES
(5663, 4, 'Serradilla del Arroyo', 'serradilla-del-arroyo', 37531, '40.522005', '-6.360716');INSERT INTO MUNICIPIOS VALUES
(5664, 4, 'Serradilla del Llano', 'serradilla-del-llano', 37530, '40.500360', '-6.357264');INSERT INTO MUNICIPIOS VALUES
(5665, 4, 'Sierpe', 'sierpe', 37759, '40.645089', '-5.854683');INSERT INTO MUNICIPIOS VALUES
(5666, 4, 'Sieteiglesias de Tormes', 'sieteiglesias-de-tormes', 37892, '40.742432', '-5.576399');INSERT INTO MUNICIPIOS VALUES
(5667, 4, 'Sobradillo', 'sobradillo', 37246, '40.917540', '-6.799114');INSERT INTO MUNICIPIOS VALUES
(5668, 4, 'Sorihuela', 'sorihuela', 37777, '40.443846', '-5.678558');INSERT INTO MUNICIPIOS VALUES
(5669, 4, 'Sotoserrano', 'sotoserrano', 37657, '40.434981', '-6.032053');INSERT INTO MUNICIPIOS VALUES
(5670, 4, 'Tabera de Abajo', 'tabera-de-abajo', 37130, '40.909425', '-6.001479');INSERT INTO MUNICIPIOS VALUES
(5671, 4, 'Tala', 'tala', 37752, '40.590931', '-5.534100');INSERT INTO MUNICIPIOS VALUES
(5672, 4, 'Tamames', 'tamames', 37600, '40.656790', '-6.108784');INSERT INTO MUNICIPIOS VALUES
(5673, 4, 'Tarazona de GuareÒa', 'tarazona-de-guarena', 37409, '41.171887', '-5.248972');INSERT INTO MUNICIPIOS VALUES
(5674, 4, 'Tard·guila', 'tardaguila', 37429, '41.113854', '-5.573366');INSERT INTO MUNICIPIOS VALUES
(5675, 4, 'Tejado', 'tejado', 37440, '40.876271', '-5.891418');INSERT INTO MUNICIPIOS VALUES
(5676, 4, 'Tejeda y Segoyuela', 'tejeda-y-segoyuela', 37607, '40.631805', '-6.022419');INSERT INTO MUNICIPIOS VALUES
(5677, 4, 'TenebrÛn', 'tenebron', 37589, '40.624392', '-6.354090');INSERT INTO MUNICIPIOS VALUES
(5678, 4, 'Terradillos', 'terradillos', 37882, '40.839648', '-5.542150');INSERT INTO MUNICIPIOS VALUES
(5679, 4, 'Topas', 'topas', 37799, '41.155560', '-5.635639');INSERT INTO MUNICIPIOS VALUES
(5680, 4, 'Tordillos', 'tordillos', 37840, '40.854264', '-5.353750');INSERT INTO MUNICIPIOS VALUES
(5681, 4, 'Tornadizo', 'tornadizo', 37765, '40.542700', '-5.892792');INSERT INTO MUNICIPIOS VALUES
(5682, 4, 'Torresmenudas', 'torresmenudas', 37110, '41.102525', '-5.784434');INSERT INTO MUNICIPIOS VALUES
(5683, 4, 'Trabanca', 'trabanca', 37173, '41.233027', '-6.383939');INSERT INTO MUNICIPIOS VALUES
(5684, 4, 'Tremedal de Tormes', 'tremedal-de-tormes', 37148, '41.075153', '-6.182919');INSERT INTO MUNICIPIOS VALUES
(5685, 4, 'Valdecarros', 'valdecarros', 37881, '40.769305', '-5.421999');INSERT INTO MUNICIPIOS VALUES
(5686, 4, 'Valdefuentes de SangusÌn', 'valdefuentes-de-sangusin', 37680, '40.465020', '-5.829959');INSERT INTO MUNICIPIOS VALUES
(5687, 4, 'Valdehijaderos', 'valdehijaderos', 37713, '40.419578', '-5.847679');INSERT INTO MUNICIPIOS VALUES
(5688, 4, 'Valdelacasa', 'valdelacasa', 37791, '40.505500', '-5.763444');INSERT INTO MUNICIPIOS VALUES
(5689, 4, 'Valdelageve', 'valdelageve', 37724, '40.369706', '-5.990267');INSERT INTO MUNICIPIOS VALUES
(5690, 4, 'Valdelosa', 'valdelosa', 37799, '41.170789', '-5.783092');INSERT INTO MUNICIPIOS VALUES
(5691, 4, 'Valdemierque', 'valdemierque', 37891, '40.822160', '-5.580989');INSERT INTO MUNICIPIOS VALUES
(5692, 4, 'Valderrodrigo', 'valderrodrigo', 37256, '41.065416', '-6.511964');INSERT INTO MUNICIPIOS VALUES
(5693, 4, 'Valdunciel', 'valdunciel', 37798, '41.086361', '-5.671633');INSERT INTO MUNICIPIOS VALUES
(5694, 4, 'Valero', 'valero', 37764, '40.535459', '-5.943395');INSERT INTO MUNICIPIOS VALUES
(5695, 4, 'Vallejera de RiofrÌo', 'vallejera-de-riofrio', 37717, '40.409460', '-5.721404');INSERT INTO MUNICIPIOS VALUES
(5696, 4, 'Valsalabroso', 'valsalabroso', 37214, '41.109826', '-6.500244');INSERT INTO MUNICIPIOS VALUES
(5697, 4, 'Valverde de Valdelacasa', 'valverde-de-valdelacasa', 37791, '40.481730', '-5.781754');INSERT INTO MUNICIPIOS VALUES
(5698, 4, 'ValverdÛn', 'valverdon', 37115, '41.047175', '-5.768314');INSERT INTO MUNICIPIOS VALUES
(5699, 4, 'Vecinos', 'vecinos', 37450, '40.777110', '-5.878329');INSERT INTO MUNICIPIOS VALUES
(5700, 4, 'Vega de Tirados', 'vega-de-tirados', 37170, '41.025304', '-5.887248');INSERT INTO MUNICIPIOS VALUES
(5701, 4, 'Veguillas', 'veguillas', 37454, '40.714790', '-5.831950');INSERT INTO MUNICIPIOS VALUES
(5702, 4, 'VellÈs', 'velles', 37427, '41.072868', '-5.569210');INSERT INTO MUNICIPIOS VALUES
(5703, 4, 'Ventosa del RÌo Almar', 'ventosa-del-rio-almar', 37329, '40.928905', '-5.347669');INSERT INTO MUNICIPIOS VALUES
(5704, 4, 'VÌdola', 'vidola', 37214, '41.155523', '-6.486397');INSERT INTO MUNICIPIOS VALUES
(5705, 4, 'Villaflores', 'villaflores', 37406, '41.083601', '-5.232078');INSERT INTO MUNICIPIOS VALUES
(5706, 4, 'Villagonzalo de Tormes', 'villagonzalo-de-tormes', 37893, '40.893680', '-5.496704');INSERT INTO MUNICIPIOS VALUES
(5707, 4, 'Villalba de los Llanos', 'villalba-de-los-llanos', 37446, '40.801295', '-5.975724');INSERT INTO MUNICIPIOS VALUES
(5708, 4, 'Villamayor', 'villamayor', 37185, '40.998230', '-5.695229');INSERT INTO MUNICIPIOS VALUES
(5709, 4, 'Villanueva del Conde', 'villanueva-del-conde', 37658, '40.510730', '-6.012699');INSERT INTO MUNICIPIOS VALUES
(5710, 4, 'Villar de ArgaÒ·n', 'villar-de-arganan', 37497, '40.673446', '-6.719646');INSERT INTO MUNICIPIOS VALUES
(5711, 4, 'Villar de Ciervo', 'villar-de-ciervo', 37488, '40.737986', '-6.739403');INSERT INTO MUNICIPIOS VALUES
(5712, 4, 'Villar de Gallimazo', 'villar-de-gallimazo', 37320, '40.952601', '-5.288060');INSERT INTO MUNICIPIOS VALUES
(5713, 4, 'Villar de la Yegua', 'villar-de-la-yegua', 37488, '40.724877', '-6.703879');INSERT INTO MUNICIPIOS VALUES
(5714, 4, 'Villar de Peralonso', 'villar-de-peralonso', 37147, '41.030415', '-6.221654');INSERT INTO MUNICIPIOS VALUES
(5715, 4, 'Villar de Samaniego', 'villar-de-samaniego', 37217, '41.123677', '-6.448078');INSERT INTO MUNICIPIOS VALUES
(5716, 4, 'Villares de la Reina', 'villares-de-la-reina', 37184, '41.007170', '-5.646984');INSERT INTO MUNICIPIOS VALUES
(5717, 4, 'Villares de Yeltes', 'villares-de-yeltes', 37267, '40.866844', '-6.412566');INSERT INTO MUNICIPIOS VALUES
(5718, 4, 'Villarino de los Aires', 'villarino-de-los-aires', 37160, '41.268810', '-6.464484');INSERT INTO MUNICIPIOS VALUES
(5719, 4, 'Villarmayor', 'villarmayor', 37130, '41.013018', '-5.972422');INSERT INTO MUNICIPIOS VALUES
(5720, 4, 'Villarmuerto', 'villarmuerto', 37217, '41.056226', '-6.362099');INSERT INTO MUNICIPIOS VALUES
(5721, 4, 'Villasbuenas', 'villasbuenas', 37256, '41.061969', '-6.595109');INSERT INTO MUNICIPIOS VALUES
(5722, 4, 'Villasdardo', 'villasdardo', 37468, '41.004115', '-6.159944');INSERT INTO MUNICIPIOS VALUES
(5723, 4, 'Villaseco de los Gamitos', 'villaseco-de-los-gamitos', 37114, '41.035365', '-6.111859');INSERT INTO MUNICIPIOS VALUES
(5724, 4, 'Villaseco de los Reyes', 'villaseco-de-los-reyes', 37150, '41.163428', '-6.184113');INSERT INTO MUNICIPIOS VALUES
(5725, 4, 'Villasrubias', 'villasrubias', 37522, '40.338175', '-6.640859');INSERT INTO MUNICIPIOS VALUES
(5726, 4, 'Villaverde de GuareÒa', 'villaverde-de-guarena', 37428, '41.064191', '-5.525159');INSERT INTO MUNICIPIOS VALUES
(5727, 4, 'Villavieja de Yeltes', 'villavieja-de-yeltes', 37260, '40.876601', '-6.471697');INSERT INTO MUNICIPIOS VALUES
(5728, 4, 'Villoria', 'villoria', 37339, '40.995287', '-5.375704');INSERT INTO MUNICIPIOS VALUES
(5729, 4, 'Villoruela', 'villoruela', 37338, '41.008295', '-5.394194');INSERT INTO MUNICIPIOS VALUES
(5730, 4, 'Vilvestre', 'vilvestre', 37258, '41.105234', '-6.720999');INSERT INTO MUNICIPIOS VALUES
(5731, 4, 'Vitigudino', 'vitigudino', 37210, '41.012860', '-6.434519');INSERT INTO MUNICIPIOS VALUES
(5732, 4, 'Yecla de Yeltes', 'yecla-de-yeltes', 37219, '40.961223', '-6.489538');INSERT INTO MUNICIPIOS VALUES
(5733, 4, 'Zamarra', 'zamarra', 37591, '40.520550', '-6.452464');INSERT INTO MUNICIPIOS VALUES
(5734, 4, 'ZamayÛn', 'zamayon', 37110, '41.147803', '-5.830094');INSERT INTO MUNICIPIOS VALUES
(5735, 4, 'Zarapicos', 'zarapicos', 37170, '41.038280', '-5.844959');INSERT INTO MUNICIPIOS VALUES
(5736, 4, 'Zarza de Pumareda', 'zarza-de-pumareda', 37253, '41.162373', '-6.626781');INSERT INTO MUNICIPIOS VALUES
(5737, 4, 'Zorita de la Frontera', 'zorita-de-la-frontera', 37408, '41.013965', '-5.195854');INSERT INTO MUNICIPIOS VALUES
(5739, 24, 'Adeje', 'adeje', 38670, '28.121669', '-16.724367');INSERT INTO MUNICIPIOS VALUES
(5740, 24, 'Agulo', 'agulo', 38830, '28.188168', '-17.194805');INSERT INTO MUNICIPIOS VALUES
(5741, 24, 'AlajerÛ', 'alajero', 38812, '28.063157', '-17.238836');INSERT INTO MUNICIPIOS VALUES
(5742, 24, 'Arafo', 'arafo', 38550, '28.339665', '-16.416664');INSERT INTO MUNICIPIOS VALUES
(5743, 24, 'Arico', 'arico', 38589, '28.177576', '-16.478634');INSERT INTO MUNICIPIOS VALUES
(5744, 24, 'Arona', 'arona', 38640, '28.100377', '-16.680508');INSERT INTO MUNICIPIOS VALUES
(5745, 24, 'Barlovento', 'barlovento', 38726, '28.826779', '-17.803345');INSERT INTO MUNICIPIOS VALUES
(5746, 24, 'BreÒa Alta', 'brena-alta', 38710, '28.659355', '-17.790856');INSERT INTO MUNICIPIOS VALUES
(5747, 24, 'BreÒa Baja', 'brena-baja', 38712, '28.641609', '-17.775576');INSERT INTO MUNICIPIOS VALUES
(5748, 24, 'Buenavista del Norte', 'buenavista-del-norte', 38480, '28.371956', '-16.850967');INSERT INTO MUNICIPIOS VALUES
(5749, 24, 'Candelaria', 'candelaria', 38530, '28.352979', '-16.370616');INSERT INTO MUNICIPIOS VALUES
(5750, 24, 'Fasnia', 'fasnia', 38570, '28.240222', '-16.439795');INSERT INTO MUNICIPIOS VALUES
(5751, 24, 'Frontera', 'frontera-tenerife', 38911, '28.293280', '-16.522659');INSERT INTO MUNICIPIOS VALUES
(5752, 24, 'Fuencaliente de la Palma', 'fuencaliente-de-la-palma', 38740, '28.489476', '-17.849865');INSERT INTO MUNICIPIOS VALUES
(5753, 24, 'Garachico', 'garachico', 38450, '28.372107', '-16.764107');INSERT INTO MUNICIPIOS VALUES
(5754, 24, 'GarafÌa', 'garafia', 38787, '28.816740', '-17.915955');INSERT INTO MUNICIPIOS VALUES
(5755, 24, 'Granadilla de Abona', 'granadilla-de-abona', 38600, '28.118811', '-16.577168');INSERT INTO MUNICIPIOS VALUES
(5756, 24, 'Guancha', 'guancha', 38440, '28.374448', '-16.650124');INSERT INTO MUNICIPIOS VALUES
(5757, 24, 'GuÌa de Isora', 'guia-de-isora', 38680, '28.210672', '-16.778526');INSERT INTO MUNICIPIOS VALUES
(5759, 24, 'Hermigua', 'hermigua', 38820, '28.167608', '-17.191544');INSERT INTO MUNICIPIOS VALUES
(5760, 24, 'Icod de los Vinos', 'icod-de-los-vinos', 38430, '28.367877', '-16.716814');INSERT INTO MUNICIPIOS VALUES
(5761, 24, 'Llanos de Aridane', 'llanos-de-aridane', 38760, '28.657341', '-17.910118');INSERT INTO MUNICIPIOS VALUES
(5762, 24, 'Matanza de Acentejo', 'matanza-de-acentejo', 38370, '28.453506', '-16.447649');INSERT INTO MUNICIPIOS VALUES
(5763, 24, 'Orotava', 'orotava', 38300, '28.392684', '-16.526012');INSERT INTO MUNICIPIOS VALUES
(5764, 24, 'Paso', 'paso', 38750, '28.650901', '-17.879219');INSERT INTO MUNICIPIOS VALUES
(5765, 24, 'Puerto de la Cruz', 'puerto-de-la-cruz', 38400, '28.418164', '-16.548629');INSERT INTO MUNICIPIOS VALUES
(5766, 24, 'Puntagorda', 'puntagorda', 38789, '28.750297', '-17.966723');INSERT INTO MUNICIPIOS VALUES
(5767, 24, 'Puntallana', 'puntallana', 38715, '28.735020', '-17.750773');INSERT INTO MUNICIPIOS VALUES
(5768, 24, 'Realejos', 'realejos', 38410, '28.366140', '-16.583691');INSERT INTO MUNICIPIOS VALUES
(5769, 24, 'Rosario', 'rosario', 11611, '36.696675', '-5.387249');INSERT INTO MUNICIPIOS VALUES
(5770, 24, 'San AndrÈs y Sauces', 'san-andres-y-sauces', 38720, '28.800288', '-17.766910');INSERT INTO MUNICIPIOS VALUES
(5771, 24, 'San CristÛbal de La Laguna', 'san-cristobal-de-la-laguna', 38201, '28.487986', '-16.313024');INSERT INTO MUNICIPIOS VALUES
(5772, 24, 'San Juan de la Rambla', 'san-juan-de-la-rambla', 38420, '28.393941', '-16.649889');INSERT INTO MUNICIPIOS VALUES
(5773, 24, 'San Miguel de Abona', 'san-miguel-de-abona', 38620, '28.098465', '-16.617336');INSERT INTO MUNICIPIOS VALUES
(5774, 24, 'San Sebasti·n de la Gomera', 'san-sebastian-de-la-gomera', 00000, '28.090735', '-17.110514');INSERT INTO MUNICIPIOS VALUES
(5775, 24, 'Santa Cruz de la Palma', 'santa-cruz-de-la-palma', 38700, '28.683340', '-17.763133');INSERT INTO MUNICIPIOS VALUES
(5776, 24, 'Santa Cruz de Tenerife', 'santa-cruz-de-tenerife', 38297, '28.470408', '-16.254830');INSERT INTO MUNICIPIOS VALUES
(5777, 24, 'Santa ¡?rsula', 'santa-ursula', 38390, '28.425694', '-16.489019');INSERT INTO MUNICIPIOS VALUES
(5778, 24, 'Santiago del Teide', 'santiago-del-teide', 38690, '28.296257', '-16.815434');INSERT INTO MUNICIPIOS VALUES
(5779, 24, 'Sauzal', 'sauzal', 38360, '28.479895', '-16.435032');INSERT INTO MUNICIPIOS VALUES
(5780, 24, 'Silos', 'silos', 38470, '28.365782', '-16.816549');INSERT INTO MUNICIPIOS VALUES
(5781, 24, 'Tacoronte', 'tacoronte', 38350, '28.481932', '-16.411772');INSERT INTO MUNICIPIOS VALUES
(5782, 24, 'Tanque', 'tanque', 38435, '28.333074', '-16.786380');INSERT INTO MUNICIPIOS VALUES
(5783, 24, 'Tazacorte', 'tazacorte', 38770, '28.642521', '-17.932348');INSERT INTO MUNICIPIOS VALUES
(5784, 24, 'Tegueste', 'tegueste', 38280, '28.523549', '-16.333151');INSERT INTO MUNICIPIOS VALUES
(5785, 24, 'Tijarafe', 'tijarafe', 38780, '28.668562', '-17.939386');INSERT INTO MUNICIPIOS VALUES
(5786, 24, 'Valle Gran Rey', 'valle-gran-rey', 38870, '28.124015', '-17.325654');INSERT INTO MUNICIPIOS VALUES
(5787, 24, 'Vallehermoso', 'vallehermoso', 38840, '28.179657', '-17.262611');INSERT INTO MUNICIPIOS VALUES
(5788, 24, 'Valverde', 'valverde', 38900, '27.809207', '-17.915525');INSERT INTO MUNICIPIOS VALUES
(5789, 24, 'Victoria de Acentejo', 'victoria-de-acentejo', 38380, '28.435959', '-16.467133');INSERT INTO MUNICIPIOS VALUES
(5790, 24, 'Vilaflor', 'vilaflor', 38613, '28.157582', '-16.638236');INSERT INTO MUNICIPIOS VALUES
(5791, 24, 'Villa de Mazo', 'villa-de-mazo', 38730, '28.582524', '-17.799397');INSERT INTO MUNICIPIOS VALUES
(5793, 49, 'Alfoz de Lloredo', 'alfoz-de-lloredo', 39525, '43.377931', '-4.179711');INSERT INTO MUNICIPIOS VALUES
(5794, 49, 'Ampuero', 'ampuero', 39840, '43.343480', '-3.416639');INSERT INTO MUNICIPIOS VALUES
(5795, 49, 'Anievas', 'anievas', 39451, '43.203220', '-4.006594');INSERT INTO MUNICIPIOS VALUES
(5796, 49, 'Arenas de IguÒa', 'arenas-de-iguna', 39450, '43.187425', '-4.050344');INSERT INTO MUNICIPIOS VALUES
(5797, 49, 'ArgoÒos', 'argonos', 39197, '43.457205', '-3.486489');INSERT INTO MUNICIPIOS VALUES
(5798, 49, 'Arnuero', 'arnuero', 39195, '43.469921', '-3.567833');INSERT INTO MUNICIPIOS VALUES
(5799, 49, 'Arredondo', 'arredondo', 39813, '43.273035', '-3.597934');INSERT INTO MUNICIPIOS VALUES
(5800, 49, 'Astillero', 'astillero', 39610, '43.400162', '-3.821930');INSERT INTO MUNICIPIOS VALUES
(5801, 49, 'B·rcena de Cicero', 'barcena-de-cicero', 39790, '43.420050', '-3.505847');INSERT INTO MUNICIPIOS VALUES
(5802, 49, 'B·rcena de Pie de Concha', 'barcena-de-pie-de-concha', 39420, '43.127534', '-4.054684');INSERT INTO MUNICIPIOS VALUES
(5803, 49, 'Bareyo', 'bareyo', 39170, '43.468196', '-3.599597');INSERT INTO MUNICIPIOS VALUES
(5804, 49, 'CabezÛn de la Sal', 'cabezon-de-la-sal', 39500, '43.309191', '-4.234543');INSERT INTO MUNICIPIOS VALUES
(5805, 49, 'CabezÛn de LiÈbana', 'cabezon-de-liebana', 39571, '43.132842', '-4.576149');INSERT INTO MUNICIPIOS VALUES
(5806, 49, 'CabuÈrniga', 'cabuerniga', 39511, '43.203925', '-4.303336');INSERT INTO MUNICIPIOS VALUES
(5807, 49, 'CamaleÒo', 'camaleno', 39587, '43.150221', '-4.691935');INSERT INTO MUNICIPIOS VALUES
(5808, 49, 'Camargo', 'camargo', 39609, '43.406856', '-3.882723');INSERT INTO MUNICIPIOS VALUES
(5809, 49, 'Campoo de Enmedio', 'campoo-de-enmedio', 39200, '42.982172', '-4.146266');INSERT INTO MUNICIPIOS VALUES
(5810, 49, 'Campoo de Yuso', 'campoo-de-yuso', 39292, '43.016384', '-4.004860');INSERT INTO MUNICIPIOS VALUES
(5811, 49, 'Cartes', 'cartes', 39311, '43.319433', '-4.094553');INSERT INTO MUNICIPIOS VALUES
(5812, 49, 'CastaÒeda', 'castaneda', 39660, '43.315811', '-3.952374');INSERT INTO MUNICIPIOS VALUES
(5813, 49, 'Castro-Urdiales', 'castro-urdiales', 39700, '43.383156', '-3.218651');INSERT INTO MUNICIPIOS VALUES
(5814, 49, 'Villasuso de Cieza', 'villasusodecieza', 39407, '43.222503', '-4.087343');INSERT INTO MUNICIPIOS VALUES
(5815, 49, 'Cillorigo de LiÈbana', 'cillorigo-de-liebana', 39584, '43.178049', '-4.597778');INSERT INTO MUNICIPIOS VALUES
(5816, 49, 'Colindres', 'colindres', 39750, '43.386681', '-3.433056');INSERT INTO MUNICIPIOS VALUES
(5817, 49, 'Comillas', 'comillas', 39520, '43.385620', '-4.291148');INSERT INTO MUNICIPIOS VALUES
(5818, 49, 'Corrales de Buelna', 'corrales-de-buelna', 39400, '43.260112', '-4.067860');INSERT INTO MUNICIPIOS VALUES
(5819, 49, 'Corvera de Toranzo', 'corvera-de-toranzo', 39699, '43.210650', '-3.935766');INSERT INTO MUNICIPIOS VALUES
(5820, 49, 'Entrambasaguas', 'entrambasaguas', 39715, '43.380536', '-3.684368');INSERT INTO MUNICIPIOS VALUES
(5821, 49, 'Escalante', 'escalante', 39795, '43.436654', '-3.513994');INSERT INTO MUNICIPIOS VALUES
(5822, 49, 'Guriezo', 'guriezo', 39788, '43.354455', '-3.324823');INSERT INTO MUNICIPIOS VALUES
(5823, 49, 'Hazas de Cesto', 'hazas-de-cesto', 39738, '43.329736', '-3.288431');INSERT INTO MUNICIPIOS VALUES
(5825, 49, 'HerrerÌas', 'herrerias', 39500, '43.309909', '-4.293637');INSERT INTO MUNICIPIOS VALUES
(5826, 49, 'LamasÛn', 'lamason', 39550, '43.254080', '-4.480534');INSERT INTO MUNICIPIOS VALUES
(5827, 49, 'Laredo', 'laredo', 39770, '43.411548', '-3.412242');INSERT INTO MUNICIPIOS VALUES
(5828, 49, 'Liendo', 'liendo', 39776, '43.394290', '-3.382459');INSERT INTO MUNICIPIOS VALUES
(5829, 49, 'LiÈrganes', 'lierganes', 39722, '43.342393', '-3.741875');INSERT INTO MUNICIPIOS VALUES
(5830, 49, 'Limpias', 'limpias', 39820, '43.368870', '-3.398992');INSERT INTO MUNICIPIOS VALUES
(5831, 49, 'Luena', 'luena', 39688, '43.096204', '-3.900533');INSERT INTO MUNICIPIOS VALUES
(5832, 49, 'Marina de Cudeyo', 'marina-de-cudeyo', 39719, '43.420058', '-3.754020');INSERT INTO MUNICIPIOS VALUES
(5833, 49, 'Mazcuerras', 'mazcuerras', 39509, '43.296808', '-4.206562');INSERT INTO MUNICIPIOS VALUES
(5834, 49, 'Medio Cudeyo', 'medio-cudeyo', 39619, '43.391928', '-3.760607');INSERT INTO MUNICIPIOS VALUES
(5835, 49, 'Meruelo', 'meruelo', 39192, '43.453184', '-3.575428');INSERT INTO MUNICIPIOS VALUES
(5836, 49, 'Miengo', 'miengo', 39310, '43.427352', '-3.995419');INSERT INTO MUNICIPIOS VALUES
(5837, 49, 'Miera', 'miera', 39723, '43.275768', '-3.712027');INSERT INTO MUNICIPIOS VALUES
(5838, 49, 'Molledo', 'molledo', 39438, '43.154839', '-4.042046');INSERT INTO MUNICIPIOS VALUES
(5839, 49, 'Noja', 'noja', 39180, '43.479962', '-3.521209');INSERT INTO MUNICIPIOS VALUES
(5840, 49, 'Penagos', 'penagos', 39627, '43.351662', '-3.814058');INSERT INTO MUNICIPIOS VALUES
(5841, 49, 'PeÒarrubia', 'penarrubia', 39580, '43.256440', '-4.579453');INSERT INTO MUNICIPIOS VALUES
(5842, 49, 'Pesaguero', 'pesaguero', 39572, '43.075879', '-4.539242');INSERT INTO MUNICIPIOS VALUES
(5843, 49, 'La Pesquera', 'lapesquera', 39491, '43.082258', '-4.075209');INSERT INTO MUNICIPIOS VALUES
(5844, 49, 'PiÈlagos', 'pielagos', 39477, '43.384957', '-3.957707');INSERT INTO MUNICIPIOS VALUES
(5845, 49, 'Polaciones', 'polaciones', 39557, '43.094528', '-4.405174');INSERT INTO MUNICIPIOS VALUES
(5846, 49, 'Polanco', 'polanco', 39313, '43.384560', '-4.015889');INSERT INTO MUNICIPIOS VALUES
(5847, 49, 'Potes', 'potes', 39570, '43.153900', '-4.621811');INSERT INTO MUNICIPIOS VALUES
(5848, 49, 'Puente Viesgo', 'puente-viesgo', 39670, '43.297823', '-3.968639');INSERT INTO MUNICIPIOS VALUES
(5849, 49, 'Ramales de la Victoria', 'ramales-de-la-victoria', 39800, '43.258456', '-3.459835');INSERT INTO MUNICIPIOS VALUES
(5850, 49, 'Rasines', 'rasines', 39860, '43.304913', '-3.424044');INSERT INTO MUNICIPIOS VALUES
(5851, 49, 'Reinosa', 'reinosa', 39200, '42.999971', '-4.138970');INSERT INTO MUNICIPIOS VALUES
(5852, 49, 'ReocÌn', 'reocin', 39538, '43.343158', '-4.096398');INSERT INTO MUNICIPIOS VALUES
(5853, 49, 'Ribamont·n al Mar', 'ribamontan-al-mar', 39150, '43.455987', '-3.673275');INSERT INTO MUNICIPIOS VALUES
(5855, 49, 'Rionansa', 'rionansa', 39553, '43.299681', '-4.459333');INSERT INTO MUNICIPIOS VALUES
(5856, 49, 'Riotuerto', 'riotuerto', 39727, '43.314000', '-3.768675');INSERT INTO MUNICIPIOS VALUES
(5857, 49, 'Rozas de Valdearroyo', 'rozas-de-valdearroyo', 39213, '42.973412', '-4.029493');INSERT INTO MUNICIPIOS VALUES
(5858, 49, 'Ruente', 'ruente', 39513, '43.258565', '-4.264176');INSERT INTO MUNICIPIOS VALUES
(5859, 49, 'Ruesga', 'ruesga', 39815, '43.281111', '-3.560343');INSERT INTO MUNICIPIOS VALUES
(5860, 49, 'Ruiloba', 'ruiloba', 39527, '43.380661', '-4.248555');INSERT INTO MUNICIPIOS VALUES
(5861, 49, 'San Felices de Buelna', 'san-felices-de-buelna', 39409, '43.274799', '-4.048569');INSERT INTO MUNICIPIOS VALUES
(5862, 49, 'San Miguel de Aguayo', 'san-miguel-de-aguayo', 39491, '43.056409', '-4.025202');INSERT INTO MUNICIPIOS VALUES
(5863, 49, 'San Pedro del Romeral', 'san-pedro-del-romeral', 39686, '43.116648', '-3.820517');INSERT INTO MUNICIPIOS VALUES
(5864, 49, 'San Roque de Riomiera', 'san-roque-de-riomiera', 39728, '43.237887', '-3.702006');INSERT INTO MUNICIPIOS VALUES
(5865, 49, 'San Vicente de la Barquera', 'san-vicente-de-la-barquera', 39540, '43.384310', '-4.398694');INSERT INTO MUNICIPIOS VALUES
(5866, 49, 'Santa Cruz de Bezana', 'santa-cruz-de-bezana', 39100, '43.443681', '-3.905189');INSERT INTO MUNICIPIOS VALUES
(5867, 49, 'Santa MarÌa de CayÛn', 'santa-maria-de-cayon', 39694, '43.307880', '-3.851974');INSERT INTO MUNICIPIOS VALUES
(5868, 49, 'Santander', 'santander', 39002, '43.461159', '-3.809617');INSERT INTO MUNICIPIOS VALUES
(5869, 49, 'Santillana del Mar', 'santillana-del-mar', 39330, '43.388910', '-4.108522');INSERT INTO MUNICIPIOS VALUES
(5870, 49, 'Santiurde de Reinosa', 'santiurde-de-reinosa', 39490, '43.060877', '-4.080133');INSERT INTO MUNICIPIOS VALUES
(5871, 49, 'Santiurde de Toranzo', 'santiurde-de-toranzo', 39698, '43.238669', '-3.936324');INSERT INTO MUNICIPIOS VALUES
(5872, 49, 'SantoÒa', 'santona', 39740, '43.445675', '-3.450887');INSERT INTO MUNICIPIOS VALUES
(5873, 49, 'Saro', 'saro', 39639, '43.261620', '-3.824852');INSERT INTO MUNICIPIOS VALUES
(5874, 49, 'Selaya', 'selaya', 39696, '43.209993', '-3.798416');INSERT INTO MUNICIPIOS VALUES
(5875, 49, 'Soba', 'soba', 39806, '43.187640', '-3.523242');INSERT INTO MUNICIPIOS VALUES
(5876, 49, 'SolÛrzano', 'solorzano', 39738, '43.379885', '-3.586945');INSERT INTO MUNICIPIOS VALUES
(5877, 49, 'Suances', 'suances', 39340, '43.425575', '-4.043462');INSERT INTO MUNICIPIOS VALUES
(5878, 49, 'Tojos', 'tojos', 39518, '43.156764', '-4.255668');INSERT INTO MUNICIPIOS VALUES
(5879, 49, 'Torrelavega', 'torrelavega', 39300, '43.350944', '-4.046456');INSERT INTO MUNICIPIOS VALUES
(5880, 49, 'Tresviso', 'tresviso', 33554, '43.302258', '-4.814265');INSERT INTO MUNICIPIOS VALUES
(5881, 49, 'Tudanca', 'tudanca', 39555, '43.155262', '-4.373460');INSERT INTO MUNICIPIOS VALUES
(5882, 49, 'UdÌas', 'udias', 39507, '43.338398', '-4.246913');INSERT INTO MUNICIPIOS VALUES
(5883, 49, 'Val de San Vicente', 'val-de-san-vicente', 39549, '43.375561', '-4.480072');INSERT INTO MUNICIPIOS VALUES
(5884, 49, 'Vald·liga', 'valdaliga', 39593, '43.328940', '-4.349406');INSERT INTO MUNICIPIOS VALUES
(5885, 49, 'Valdeolea', 'valdeolea', 39418, '42.880430', '-4.164634');INSERT INTO MUNICIPIOS VALUES
(5886, 49, 'Valdeprado del RÌo', 'valdeprado-del-rio', 39419, '42.875068', '-4.093244');INSERT INTO MUNICIPIOS VALUES
(5887, 49, 'Valderredible', 'valderredible', 39232, '42.807256', '-3.939199');INSERT INTO MUNICIPIOS VALUES
(5888, 49, 'Valle de Villaverde', 'valle-de-villaverde', 39880, '43.244953', '-3.262789');INSERT INTO MUNICIPIOS VALUES
(5889, 49, 'Vega de LiÈbana', 'vega-de-liebana', 39577, '43.063041', '-4.667172');INSERT INTO MUNICIPIOS VALUES
(5890, 49, 'Vega de Pas', 'vega-de-pas', 39685, '43.157766', '-3.778524');INSERT INTO MUNICIPIOS VALUES
(5891, 49, 'Villacarriedo', 'villacarriedo', 39649, '43.230336', '-3.805475');INSERT INTO MUNICIPIOS VALUES
(5892, 49, 'Villaescusa de Ebro', 'villaescusade ebro', 36690, '42.963662', '-4.160063');INSERT INTO MUNICIPIOS VALUES
(5893, 49, 'Villafufre', 'villafufre', 39638, '43.267113', '-3.891199');INSERT INTO MUNICIPIOS VALUES
(5894, 49, 'Voto', 'voto', 39724, '43.356030', '-3.495283');INSERT INTO MUNICIPIOS VALUES
(5896, 8, 'Abades', 'abades', 40141, '40.916328', '-4.265243');INSERT INTO MUNICIPIOS VALUES
(5897, 8, 'Adrada de PirÛn', 'adrada-de-piron', 40192, '41.052220', '-4.051337');INSERT INTO MUNICIPIOS VALUES
(5898, 8, 'Adrados', 'adrados', 40354, '41.367885', '-4.112877');INSERT INTO MUNICIPIOS VALUES
(5899, 8, 'Aguilafuente', 'aguilafuente', 40340, '41.226485', '-4.112179');INSERT INTO MUNICIPIOS VALUES
(5900, 8, 'Alconada de Maderuelo', 'alconada-de-maderuelo', 40529, '41.451026', '-3.485413');INSERT INTO MUNICIPIOS VALUES
(5901, 8, 'Aldea Real', 'aldea-real', 40292, '41.185330', '-4.165799');INSERT INTO MUNICIPIOS VALUES
(5902, 8, 'Aldealcorvo', 'aldealcorvo', 40389, '41.244540', '-3.790999');INSERT INTO MUNICIPIOS VALUES
(5903, 8, 'Aldealengua de Pedraza', 'aldealengua-de-pedraza', 40162, '41.070090', '-3.790326');INSERT INTO MUNICIPIOS VALUES
(5904, 8, 'Aldealengua de Santa MarÌa', 'aldealengua-de-santa-maria', 40555, '41.460550', '-3.468894');INSERT INTO MUNICIPIOS VALUES
(5905, 8, 'Aldeanueva de la Serrezuela', 'aldeanueva-de-la-serrezuela', 40532, '41.460095', '-3.780242');INSERT INTO MUNICIPIOS VALUES
(5906, 8, 'Aldeanueva del Codonal', 'aldeanueva-del-codonal', 40462, '41.082111', '-4.543369');INSERT INTO MUNICIPIOS VALUES
(5907, 8, 'AldeasoÒa', 'aldeasona', 40235, '41.470870', '-4.055823');INSERT INTO MUNICIPIOS VALUES
(5908, 8, 'Aldehorno', 'aldehorno', 40533, '41.513086', '-3.778678');INSERT INTO MUNICIPIOS VALUES
(5909, 8, 'Aldehuela del Codonal', 'aldehuela-del-codonal', 40462, '41.055195', '-4.537949');INSERT INTO MUNICIPIOS VALUES
(5910, 8, 'Aldeonte', 'aldeonte', 40531, '41.349705', '-3.679414');INSERT INTO MUNICIPIOS VALUES
(5911, 8, 'Anaya', 'anaya', 40121, '40.991300', '-4.308299');INSERT INTO MUNICIPIOS VALUES
(5912, 8, 'AÒe', 'ane', 40492, '41.037695', '-4.295824');INSERT INTO MUNICIPIOS VALUES
(5913, 8, 'Arahuetes', 'arahuetes', 40173, '41.138025', '-3.855754');INSERT INTO MUNICIPIOS VALUES
(5914, 8, 'Arcones', 'arcones', 40164, '41.117005', '-3.724104');INSERT INTO MUNICIPIOS VALUES
(5915, 8, 'Arevalillo de Cega', 'arevalillo-de-cega', 40185, '41.162480', '-3.886824');INSERT INTO MUNICIPIOS VALUES
(5916, 8, 'ArmuÒa', 'armuna', 40494, '41.077472', '-4.319355');INSERT INTO MUNICIPIOS VALUES
(5917, 8, 'AyllÛn', 'ayllon', 40520, '41.418486', '-3.377095');INSERT INTO MUNICIPIOS VALUES
(5918, 8, 'Barbolla', 'barbolla', 40530, '41.326480', '-3.672044');INSERT INTO MUNICIPIOS VALUES
(5919, 8, 'Basardilla', 'basardilla', 40180, '41.026686', '-4.025814');INSERT INTO MUNICIPIOS VALUES
(5920, 8, 'Bercial', 'bercial', 40144, '40.907730', '-4.437174');INSERT INTO MUNICIPIOS VALUES
(5921, 8, 'Bercimuel', 'bercimuel', 40550, '41.397648', '-3.573214');INSERT INTO MUNICIPIOS VALUES
(5922, 8, 'Bernardos', 'bernardos', 40430, '41.128017', '-4.350121');INSERT INTO MUNICIPIOS VALUES
(5923, 8, 'Bernuy de Porreros', 'bernuy-de-porreros', 40190, '40.999855', '-4.116699');INSERT INTO MUNICIPIOS VALUES
(5924, 8, 'Boceguillas', 'boceguillas', 40560, '41.335755', '-3.640735');INSERT INTO MUNICIPIOS VALUES
(5925, 8, 'Brieva', 'brieva', 40180, '41.035660', '-4.052309');INSERT INTO MUNICIPIOS VALUES
(5926, 8, 'Caballar', 'caballar', 40182, '41.121725', '-3.963939');INSERT INTO MUNICIPIOS VALUES
(5927, 8, 'CabaÒas de Polendos', 'cabanas-de-polendos', 40392, '41.066458', '-4.108974');INSERT INTO MUNICIPIOS VALUES
(5928, 8, 'Cabezuela', 'cabezuela', 40396, '41.235920', '-3.932039');INSERT INTO MUNICIPIOS VALUES
(5929, 8, 'Calabazas de FuentidueÒa', 'calabazas-de-fuentiduena', 40356, '41.444809', '-4.010660');INSERT INTO MUNICIPIOS VALUES
(5930, 8, 'Campo de San Pedro', 'campo-de-san-pedro', 40551, '41.429428', '-3.548560');INSERT INTO MUNICIPIOS VALUES
(5931, 8, 'Cantalejo', 'cantalejo', 40320, '41.259556', '-3.927642');INSERT INTO MUNICIPIOS VALUES
(5932, 8, 'Cantimpalos', 'cantimpalos', 40360, '41.074055', '-4.158584');INSERT INTO MUNICIPIOS VALUES
(5933, 8, 'Carbonero el Mayor', 'carbonero-el-mayor', 40270, '41.122975', '-4.268434');INSERT INTO MUNICIPIOS VALUES
(5934, 8, 'Carrascal del RÌo', 'carrascal-del-rio', 40331, '41.367512', '-3.900751');INSERT INTO MUNICIPIOS VALUES
(5935, 8, 'Casla', 'casla', 40590, '41.165970', '-3.655979');INSERT INTO MUNICIPIOS VALUES
(5936, 8, 'Castillejo de MesleÛn', 'castillejo-de-mesleon', 40593, '41.281550', '-3.603059');INSERT INTO MUNICIPIOS VALUES
(5937, 8, 'Castro de FuentidueÒa', 'castro-de-fuentiduena', 40315, '41.420625', '-3.853399');INSERT INTO MUNICIPIOS VALUES
(5938, 8, 'Castrojimeno', 'castrojimeno', 40315, '41.397278', '-3.845239');INSERT INTO MUNICIPIOS VALUES
(5939, 8, 'Castroserna de Abajo', 'castroserna-de-abajo', 40318, '41.208030', '-3.734994');INSERT INTO MUNICIPIOS VALUES
(5940, 8, 'CastroserracÌn', 'castroserracin', 40315, '41.392733', '-3.804611');INSERT INTO MUNICIPIOS VALUES
(5941, 8, 'Cedillo de la Torre', 'cedillo-de-la-torre', 40550, '41.421175', '-3.608169');INSERT INTO MUNICIPIOS VALUES
(5942, 8, 'Cerezo de Abajo', 'cerezo-de-abajo', 40591, '41.218505', '-3.590729');INSERT INTO MUNICIPIOS VALUES
(5943, 8, 'Cerezo de Arriba', 'cerezo-de-arriba', 40592, '41.239850', '-3.558654');INSERT INTO MUNICIPIOS VALUES
(5944, 8, 'ChaÒe', 'chane', 40216, '41.338787', '-4.427707');INSERT INTO MUNICIPIOS VALUES
(5945, 8, 'Cilleruelo de San MamÈs', 'cilleruelo-de-san-mames', 40551, '41.432045', '-3.566759');INSERT INTO MUNICIPIOS VALUES
(5946, 8, 'Cobos de FuentidueÒa', 'cobos-de-fuentiduena', 40332, '41.382685', '-3.927199');INSERT INTO MUNICIPIOS VALUES
(5947, 8, 'Coca', 'coca', 40480, '41.215215', '-4.521694');INSERT INTO MUNICIPIOS VALUES
(5948, 8, 'Codorniz', 'codorniz', 40463, '41.069027', '-4.601146');INSERT INTO MUNICIPIOS VALUES
(5949, 8, 'Collado Hermoso', 'collado-hermoso', 40170, '41.038174', '-3.918400');INSERT INTO MUNICIPIOS VALUES
(5950, 8, 'Condado de Castilnovo', 'condado-de-castilnovo', 40318, '41.241140', '-3.744119');INSERT INTO MUNICIPIOS VALUES
(5951, 8, 'Corral de AyllÛn', 'corral-de-ayllon', 40529, '41.392281', '-3.459620');INSERT INTO MUNICIPIOS VALUES
(5952, 8, 'Cozuelos de FuentidueÒa', 'cozuelos-de-fuentiduena', 40354, '41.389410', '-4.095709');INSERT INTO MUNICIPIOS VALUES
(5953, 8, 'Cubillo', 'cubillo', 40185, '41.120597', '-3.909505');INSERT INTO MUNICIPIOS VALUES
(5954, 8, 'CuÈllar', 'cuellar', 40200, '41.401315', '-4.311969');INSERT INTO MUNICIPIOS VALUES
(5955, 8, 'Cuevas de Provanco', 'cuevas-de-provanco', 40239, '41.544409', '-3.964939');INSERT INTO MUNICIPIOS VALUES
(5956, 8, 'Domingo GarcÌa', 'domingo-garcia', 40495, '41.116270', '-4.380129');INSERT INTO MUNICIPIOS VALUES
(5957, 8, 'Donhierro', 'donhierro', 40469, '41.114485', '-4.697169');INSERT INTO MUNICIPIOS VALUES
(5958, 8, 'Duruelo', 'duruelo', 40312, '41.236690', '-3.648009');INSERT INTO MUNICIPIOS VALUES
(5959, 8, 'Encinas', 'encinas', 40531, '41.374468', '-3.668166');INSERT INTO MUNICIPIOS VALUES
(5960, 8, 'Encinillas', 'encinillas', 40391, '41.016445', '-4.158779');INSERT INTO MUNICIPIOS VALUES
(5961, 8, 'Escalona del Prado', 'escalona-del-prado', 40350, '41.166786', '-4.121867');INSERT INTO MUNICIPIOS VALUES
(5962, 8, 'Escarabajosa de Cabezas', 'escarabajosa-de-cabezas', 40291, '41.104021', '-4.194377');INSERT INTO MUNICIPIOS VALUES
(5963, 8, 'Escobar de Polendos', 'escobar-de-polendos', 40393, '41.090225', '-4.131729');INSERT INTO MUNICIPIOS VALUES
(5964, 8, 'Espinar', 'espinar', 40400, '40.718929', '-4.247300');INSERT INTO MUNICIPIOS VALUES
(5965, 8, 'Espirdo', 'espirdo', 40191, '40.996975', '-4.073699');INSERT INTO MUNICIPIOS VALUES
(5966, 8, 'Fresneda de CuÈllar', 'fresneda-de-cuellar', 40217, '41.319825', '-4.448714');INSERT INTO MUNICIPIOS VALUES
(5967, 8, 'Fresno de Cantespino', 'fresno-de-cantespino', 40516, '41.369093', '-3.498399');INSERT INTO MUNICIPIOS VALUES
(5968, 8, 'Fresno de la Fuente', 'fresno-de-la-fuente', 40540, '41.394530', '-3.646074');INSERT INTO MUNICIPIOS VALUES
(5969, 8, 'Frumales', 'frumales', 40298, '41.383844', '-4.188180');INSERT INTO MUNICIPIOS VALUES
(5970, 8, 'Fuente de Santa Cruz', 'fuente-de-santa-cruz', 40496, '41.208477', '-4.636290');INSERT INTO MUNICIPIOS VALUES
(5971, 8, 'Fuente el Olmo de FuentidueÒa', 'fuente-el-olmo-de-fuentiduena', 40359, '41.380075', '-3.999614');INSERT INTO MUNICIPIOS VALUES
(5972, 8, 'Fuente el Olmo de ¡çscar', 'fuente-el-olmo-de-iscar', 40218, '41.280085', '-4.493139');INSERT INTO MUNICIPIOS VALUES
(5973, 8, 'Fuentepelayo', 'fuentepelayo', 40260, '41.221630', '-4.176429');INSERT INTO MUNICIPIOS VALUES
(5974, 8, 'FuentepiÒel', 'fuentepinel', 40358, '41.399672', '-4.042107');INSERT INTO MUNICIPIOS VALUES
(5975, 8, 'Fuenterrebollo', 'fuenterrebollo', 40330, '41.296179', '-3.932759');INSERT INTO MUNICIPIOS VALUES
(5976, 8, 'Fuentesa˙co de FuentidueÒa', 'fuentesauco-de-fuentiduena', 40355, '41.426090', '-4.065054');INSERT INTO MUNICIPIOS VALUES
(5977, 8, 'Fuentesoto', 'fuentesoto', 40314, '41.456364', '-3.916513');INSERT INTO MUNICIPIOS VALUES
(5978, 8, 'FuentidueÒa', 'fuentiduena', 40357, '41.443036', '-3.982187');INSERT INTO MUNICIPIOS VALUES
(5979, 8, 'Gallegos', 'gallegos', 40162, '41.073835', '-3.786526');INSERT INTO MUNICIPIOS VALUES
(5980, 8, 'Garcill·n', 'garcillan', 40120, '40.979189', '-4.265428');INSERT INTO MUNICIPIOS VALUES
(5981, 8, 'GomezserracÌn', 'gomezserracin', 40240, '41.290202', '-4.323833');INSERT INTO MUNICIPIOS VALUES
(5982, 8, 'Grajera', 'grajera', 40569, '41.373216', '-3.613491');INSERT INTO MUNICIPIOS VALUES
(5983, 8, 'Honrubia de la Cuesta', 'honrubia-de-la-cuesta', 40541, '41.510305', '-3.704874');INSERT INTO MUNICIPIOS VALUES
(5984, 8, 'Hontalbilla', 'hontalbilla', 40353, '41.346010', '-4.122594');INSERT INTO MUNICIPIOS VALUES
(5985, 8, 'Hontanares de Eresma', 'hontanares-de-eresma', 40490, '40.982535', '-4.203109');INSERT INTO MUNICIPIOS VALUES
(5986, 8, 'Huertos', 'huertos', 40490, '41.009666', '-4.219265');INSERT INTO MUNICIPIOS VALUES
(5987, 8, 'Ituero y Lama', 'ituero-y-lama', 40151, '40.799925', '-4.377764');INSERT INTO MUNICIPIOS VALUES
(5988, 8, 'Juarros de Riomoros', 'juarros-de-riomoros', 40130, '40.945628', '-4.308265');INSERT INTO MUNICIPIOS VALUES
(5989, 8, 'Juarros de Voltoya', 'juarros-de-voltoya', 40445, '41.030781', '-4.517810');INSERT INTO MUNICIPIOS VALUES
(5990, 8, 'Labajos', 'labajos', 40146, '40.843295', '-4.518404');INSERT INTO MUNICIPIOS VALUES
(5991, 8, 'Laguna de Contreras', 'laguna-de-contreras', 40236, '41.496562', '-4.027110');INSERT INTO MUNICIPIOS VALUES
(5992, 8, 'Languilla', 'languilla', 40556, '41.447779', '-3.423969');INSERT INTO MUNICIPIOS VALUES
(5993, 8, 'Lastras de CuÈllar', 'lastras-de-cuellar', 40352, '41.297488', '-4.107388');INSERT INTO MUNICIPIOS VALUES
(5994, 8, 'Lastras del Pozo', 'lastras-del-pozo', 40142, '40.879090', '-4.345884');INSERT INTO MUNICIPIOS VALUES
(5995, 8, 'Lastrilla', 'lastrilla', 40196, '40.969028', '-4.103490');INSERT INTO MUNICIPIOS VALUES
(5996, 8, 'Losa', 'losa', 40420, '40.853611', '-4.162710');INSERT INTO MUNICIPIOS VALUES
(5997, 8, 'Maderuelo', 'maderuelo', 40554, '41.483604', '-3.524548');INSERT INTO MUNICIPIOS VALUES
(5998, 8, 'Marazoleja', 'marazoleja', 40130, '40.962418', '-4.338520');INSERT INTO MUNICIPIOS VALUES
(5999, 8, 'Marazuela', 'marazuela', 40133, '40.979276', '-4.367031');INSERT INTO MUNICIPIOS VALUES
(6000, 8, 'MartÌn Miguel', 'martin-miguel', 40130, '40.952282', '-4.273115');INSERT INTO MUNICIPIOS VALUES
(6001, 8, 'MartÌn MuÒoz de la Dehesa', 'martin-munoz-de-la-dehesa', 40466, '41.065478', '-4.686316');INSERT INTO MUNICIPIOS VALUES
(6002, 8, 'MartÌn MuÒoz de las Posadas', 'martin-munoz-de-las-posadas', 40446, '40.995605', '-4.596994');INSERT INTO MUNICIPIOS VALUES
(6003, 8, 'Marug·n', 'marugan', 40142, '40.896725', '-4.384054');INSERT INTO MUNICIPIOS VALUES
(6004, 8, 'Mata de CuÈllar', 'mata-de-cuellar', 40214, '41.395485', '-4.471709');INSERT INTO MUNICIPIOS VALUES
(6005, 8, 'Matabuena', 'matabuena', 40163, '41.096183', '-3.756806');INSERT INTO MUNICIPIOS VALUES
(6006, 8, 'Matilla', 'matilla', 40175, '41.190669', '-3.794403');INSERT INTO MUNICIPIOS VALUES
(6007, 8, 'Melque de Cercos', 'melque-de-cercos', 40444, '41.051032', '-4.469500');INSERT INTO MUNICIPIOS VALUES
(6008, 8, 'Membibre de la Hoz', 'membibre-de-la-hoz', 40234, '41.449703', '-4.095288');INSERT INTO MUNICIPIOS VALUES
(6009, 8, 'Miguel·Òez', 'miguelanez', 40441, '41.120968', '-4.362943');INSERT INTO MUNICIPIOS VALUES
(6010, 8, 'Montejo de ArÈvalo', 'montejo-de-arevalo', 40468, '41.139611', '-4.664111');INSERT INTO MUNICIPIOS VALUES
(6011, 8, 'Montejo de la Vega de la Serrezuela', 'montejo-de-la-vega-de-la-serrezuela', 40542, '41.547234', '-3.652519');INSERT INTO MUNICIPIOS VALUES
(6012, 8, 'Monterrubio', 'monterrubio', 40142, '40.848660', '-4.351919');INSERT INTO MUNICIPIOS VALUES
(6013, 8, 'Moral de Hornuez', 'moral-de-hornuez', 40542, '41.465085', '-3.615339');INSERT INTO MUNICIPIOS VALUES
(6014, 8, 'Mozoncillo', 'mozoncillo', 40250, '41.145035', '-4.189544');INSERT INTO MUNICIPIOS VALUES
(6015, 8, 'MuÒopedro', 'munopedro', 40145, '40.888780', '-4.470899');INSERT INTO MUNICIPIOS VALUES
(6016, 8, 'MuÒoveros', 'munoveros', 40183, '41.173185', '-3.950964');INSERT INTO MUNICIPIOS VALUES
(6017, 8, 'Nava de la AsunciÛn', 'nava-de-la-asuncion', 40450, '41.154734', '-4.488263');INSERT INTO MUNICIPIOS VALUES
(6018, 8, 'NavafrÌa', 'navafria', 40161, '41.054878', '-3.818384');INSERT INTO MUNICIPIOS VALUES
(6019, 8, 'Navalilla', 'navalilla', 40331, '41.342684', '-3.935585');INSERT INTO MUNICIPIOS VALUES
(6020, 8, 'Navalmanzano', 'navalmanzano', 40280, '41.214908', '-4.256690');INSERT INTO MUNICIPIOS VALUES
(6021, 8, 'Navares de Ayuso', 'navares-de-ayuso', 40531, '41.374325', '-3.708031');INSERT INTO MUNICIPIOS VALUES
(6022, 8, 'Navares de Enmedio', 'navares-de-enmedio', 40532, '41.383652', '-3.730574');INSERT INTO MUNICIPIOS VALUES
(6023, 8, 'Navares de las Cuevas', 'navares-de-las-cuevas', 40532, '41.414437', '-3.751594');INSERT INTO MUNICIPIOS VALUES
(6024, 8, 'Navas de Oro', 'navas-de-oro', 40470, '41.196540', '-4.438689');INSERT INTO MUNICIPIOS VALUES
(6025, 8, 'Navas de RiofrÌo', 'navas-de-riofrio', 40420, '40.868986', '-4.136357');INSERT INTO MUNICIPIOS VALUES
(6026, 8, 'Navas de San Antonio', 'navas-de-san-antonio', 40408, '40.761045', '-4.330229');INSERT INTO MUNICIPIOS VALUES
(6027, 8, 'Nieva', 'nieva', 40447, '41.081875', '-4.425209');INSERT INTO MUNICIPIOS VALUES
(6028, 8, 'Olombrada', 'olombrada', 40220, '41.415525', '-4.160514');INSERT INTO MUNICIPIOS VALUES
(6029, 8, 'Orejana', 'orejana', 40176, '41.164720', '-3.780364');INSERT INTO MUNICIPIOS VALUES
(6030, 8, 'Ortigosa de PestaÒo', 'ortigosa-de-pestano', 40495, '41.085819', '-4.393690');INSERT INTO MUNICIPIOS VALUES
(6031, 8, 'Ortigosa del Monte', 'ortigosa-del-monte', 40421, '40.841850', '-4.176994');INSERT INTO MUNICIPIOS VALUES
(6032, 8, 'Otero de Herreros', 'otero-de-herreros', 40422, '40.821350', '-4.206359');INSERT INTO MUNICIPIOS VALUES
(6033, 8, 'Pajarejos', 'pajarejos', 40567, '41.390315', '-3.587944');INSERT INTO MUNICIPIOS VALUES
(6034, 8, 'Palazuelos de Eresma', 'palazuelos-de-eresma', 40194, '40.931034', '-4.060004');INSERT INTO MUNICIPIOS VALUES
(6035, 8, 'Pedraza', 'pedraza', 40172, '41.131380', '-3.808202');INSERT INTO MUNICIPIOS VALUES
(6036, 8, 'Pelayos del Arroyo', 'pelayos-del-arroyo', 40170, '41.050034', '-3.941918');INSERT INTO MUNICIPIOS VALUES
(6037, 8, 'Perosillo', 'perosillo', 40354, '41.392380', '-4.141199');INSERT INTO MUNICIPIOS VALUES
(6038, 8, 'Pinarejos', 'pinarejos', 40296, '41.260235', '-4.292454');INSERT INTO MUNICIPIOS VALUES
(6039, 8, 'Pinarnegrillo', 'pinarnegrillo', 40294, '41.191783', '-4.210623');INSERT INTO MUNICIPIOS VALUES
(6040, 8, 'Pradales', 'pradales', 40540, '41.455600', '-3.707418');INSERT INTO MUNICIPIOS VALUES
(6041, 8, 'Pr·dena', 'pradena', 40165, '41.140109', '-3.688572');INSERT INTO MUNICIPIOS VALUES
(6042, 8, 'Puebla de Pedraza', 'puebla-de-pedraza', 40184, '41.205396', '-3.913122');INSERT INTO MUNICIPIOS VALUES
(6043, 8, 'Rapariegos', 'rapariegos', 40466, '41.093980', '-4.652418');INSERT INTO MUNICIPIOS VALUES
(6044, 8, 'Rebollo', 'rebollo', 40184, '41.192078', '-3.857267');INSERT INTO MUNICIPIOS VALUES
(6045, 8, 'Remondo', 'remondo', 40216, '41.341045', '-4.482639');INSERT INTO MUNICIPIOS VALUES
(6046, 8, 'Riaguas de San BartolomÈ', 'riaguas-de-san-bartolome', 40529, '41.425440', '-3.490209');INSERT INTO MUNICIPIOS VALUES
(6047, 8, 'Riaza', 'riaza', 40500, '41.278307', '-3.482005');INSERT INTO MUNICIPIOS VALUES
(6048, 8, 'Ribota', 'ribota', 40513, '41.365875', '-3.431229');INSERT INTO MUNICIPIOS VALUES
(6049, 8, 'RiofrÌo de Riaza', 'riofrio-de-riaza', 40515, '41.245907', '-3.450592');INSERT INTO MUNICIPIOS VALUES
(6050, 8, 'Roda de Eresma', 'roda-de-eresma', 40290, '41.026925', '-4.182865');INSERT INTO MUNICIPIOS VALUES
(6051, 8, 'Sacramenia', 'sacramenia', 40237, '41.493830', '-3.962564');INSERT INTO MUNICIPIOS VALUES
(6052, 8, 'Samboal', 'samboal', 40442, '41.258324', '-4.420214');INSERT INTO MUNICIPIOS VALUES
(6053, 8, 'San CristÛbal de CuÈllar', 'san-cristobal-de-cuellar', 40212, '41.405365', '-4.403954');INSERT INTO MUNICIPIOS VALUES
(6054, 8, 'San CristÛbal de la Vega', 'san-cristobal-de-la-vega', 40465, '41.111985', '-4.644315');INSERT INTO MUNICIPIOS VALUES
(6055, 8, 'San CristÛbal de Segovia', 'san-cristobal-de-segovia', 40197, '40.952485', '-4.076244');INSERT INTO MUNICIPIOS VALUES
(6056, 8, 'San Ildefonso', 'san-ildefonso', 40100, '40.899738', '-4.008000');INSERT INTO MUNICIPIOS VALUES
(6057, 8, 'San MartÌn y Mudri·n', 'san-martin-y-mudrian', 40295, '41.224370', '-4.333244');INSERT INTO MUNICIPIOS VALUES
(6058, 8, 'San Miguel de Bernuy', 'san-miguel-de-bernuy', 40332, '41.395467', '-3.951418');INSERT INTO MUNICIPIOS VALUES
(6059, 8, 'San Pedro de GaÌllos', 'san-pedro-de-gaillos', 40389, '41.226950', '-3.808944');INSERT INTO MUNICIPIOS VALUES
(6060, 8, 'SanchonuÒo', 'sanchonuno', 40297, '41.322485', '-4.306484');INSERT INTO MUNICIPIOS VALUES
(6061, 8, 'SangarcÌa', 'sangarcia', 40134, '40.947905', '-4.414919');INSERT INTO MUNICIPIOS VALUES
(6062, 8, 'Santa MarÌa la Real de Nieva', 'santa-maria-la-real-de-nieva', 40440, '41.070415', '-4.407251');INSERT INTO MUNICIPIOS VALUES
(6063, 8, 'Santa Marta del Cerro', 'santa-marta-del-cerro', 40310, '41.218390', '-3.686024');INSERT INTO MUNICIPIOS VALUES
(6064, 8, 'Santiuste de Pedraza', 'santiuste-de-pedraza', 40171, '41.089620', '-3.885139');INSERT INTO MUNICIPIOS VALUES
(6065, 8, 'Santiuste de San Juan Bautista', 'santiuste-de-san-juan-bautista', 40460, '41.155116', '-4.570183');INSERT INTO MUNICIPIOS VALUES
(6066, 8, 'Santo Domingo de PirÛn', 'santo-domingo-de-piron', 40180, '41.041324', '-3.991147');INSERT INTO MUNICIPIOS VALUES
(6067, 8, 'Santo TomÈ del Puerto', 'santo-tome-del-puerto', 40590, '41.195830', '-3.578781');INSERT INTO MUNICIPIOS VALUES
(6068, 8, 'Sauquillo de Cabezas', 'sauquillo-de-cabezas', 40351, '41.194120', '-4.068314');INSERT INTO MUNICIPIOS VALUES
(6069, 8, 'Seb˙lcor', 'sebulcor', 40380, '41.270895', '-3.883519');INSERT INTO MUNICIPIOS VALUES
(6070, 8, 'Segovia', 'segovia', 40001, '40.948210', '-4.116359');INSERT INTO MUNICIPIOS VALUES
(6071, 8, 'Sep˙lveda', 'sepulveda', 40300, '41.297275', '-3.748739');INSERT INTO MUNICIPIOS VALUES
(6072, 8, 'Sequera de Fresno', 'sequera-de-fresno', 40517, '41.367245', '-3.545314');INSERT INTO MUNICIPIOS VALUES
(6073, 8, 'Sotillo', 'sotillo', 40311, '41.257273', '-3.638483');INSERT INTO MUNICIPIOS VALUES
(6074, 8, 'Sotosalbos', 'sotosalbos', 40170, '41.034918', '-3.940538');INSERT INTO MUNICIPIOS VALUES
(6075, 8, 'Tabanera la Luenga', 'tabanera-la-luenga', 40291, '41.097175', '-4.239399');INSERT INTO MUNICIPIOS VALUES
(6076, 8, 'Tolocirio', 'tolocirio', 40467, '41.131590', '-4.646859');INSERT INTO MUNICIPIOS VALUES
(6077, 8, 'Torre Val de San Pedro', 'torre-val-de-san-pedro', 40171, '41.074434', '-3.871237');INSERT INTO MUNICIPIOS VALUES
(6078, 8, 'Torreadrada', 'torreadrada', 40313, '41.444608', '-3.840622');INSERT INTO MUNICIPIOS VALUES
(6079, 8, 'Torrecaballeros', 'torrecaballeros', 40160, '40.992059', '-4.024434');INSERT INTO MUNICIPIOS VALUES
(6080, 8, 'Torrecilla del Pinar', 'torrecilla-del-pinar', 40359, '41.375934', '-4.037739');INSERT INTO MUNICIPIOS VALUES
(6081, 8, 'Torreiglesias', 'torreiglesias', 40192, '41.105513', '-4.029753');INSERT INTO MUNICIPIOS VALUES
(6082, 8, 'Trescasas', 'trescasas', 40194, '40.958490', '-4.038434');INSERT INTO MUNICIPIOS VALUES
(6083, 8, 'TurÈgano', 'turegano', 40370, '41.155337', '-4.006647');INSERT INTO MUNICIPIOS VALUES
(6084, 8, 'UrueÒas', 'uruenas', 40317, '41.356834', '-3.775517');INSERT INTO MUNICIPIOS VALUES
(6085, 8, 'Valdeprados', 'valdeprados', 40423, '40.817435', '-4.256009');INSERT INTO MUNICIPIOS VALUES
(6086, 8, 'Valdevacas de Montejo', 'valdevacas-de-montejo', 40542, '41.520486', '-3.637320');INSERT INTO MUNICIPIOS VALUES
(6087, 8, 'Valdevacas y Guijar', 'valdevacas-y-guijar', 40185, '41.144990', '-3.911409');INSERT INTO MUNICIPIOS VALUES
(6088, 8, 'Valle de Tabladillo', 'valle-de-tabladillo', 40331, '41.362400', '-3.839569');INSERT INTO MUNICIPIOS VALUES
(6089, 8, 'Vallelado', 'vallelado', 40213, '41.404690', '-4.426969');INSERT INTO MUNICIPIOS VALUES
(6090, 8, 'Valleruela de Pedraza', 'valleruela-de-pedraza', 40174, '41.176720', '-3.803919');INSERT INTO MUNICIPIOS VALUES
(6091, 8, 'Valleruela de Sep˙lveda', 'valleruela-de-sepulveda', 40176, '41.187216', '-3.770917');INSERT INTO MUNICIPIOS VALUES
(6092, 8, 'Valseca', 'valseca', 40390, '40.999273', '-4.174561');INSERT INTO MUNICIPIOS VALUES
(6093, 8, 'Valtiendas', 'valtiendas', 40314, '41.478796', '-3.918372');INSERT INTO MUNICIPIOS VALUES
(6094, 8, 'Valverde del Majano', 'valverde-del-majano', 40140, '40.956570', '-4.234454');INSERT INTO MUNICIPIOS VALUES
(6095, 8, 'Veganzones', 'veganzones', 40395, '41.193882', '-3.993150');INSERT INTO MUNICIPIOS VALUES
(6096, 8, 'Vegas de Matute', 'vegas-de-matute', 40423, '40.795360', '-4.277929');INSERT INTO MUNICIPIOS VALUES
(6097, 8, 'Ventosilla y Tejadilla', 'ventosilla-y-tejadilla', 40165, '41.181845', '-3.693941');INSERT INTO MUNICIPIOS VALUES
(6098, 8, 'VillacastÌn', 'villacastin', 40150, '40.780735', '-4.413838');INSERT INTO MUNICIPIOS VALUES
(6099, 8, 'Villaverde de ¡çscar', 'villaverde-de-iscar', 40219, '41.306681', '-4.526026');INSERT INTO MUNICIPIOS VALUES
(6100, 8, 'Villaverde de Montejo', 'villaverde-de-montejo', 40542, '41.522325', '-3.654519');INSERT INTO MUNICIPIOS VALUES
(6101, 8, 'Villeguillo', 'villeguillo', 40496, '41.251880', '-4.578594');INSERT INTO MUNICIPIOS VALUES
(6102, 8, 'Yanguas de Eresma', 'yanguas-de-eresma', 40493, '41.072337', '-4.240660');INSERT INTO MUNICIPIOS VALUES
(6103, 8, 'Zarzuela del Monte', 'zarzuela-del-monte', 40152, '40.808900', '-4.336484');INSERT INTO MUNICIPIOS VALUES
(6104, 8, 'Zarzuela del Pinar', 'zarzuela-del-pinar', 40293, '41.259980', '-4.184459');INSERT INTO MUNICIPIOS VALUES
(6106, 12, 'Aguadulce', 'aguadulce', 41550, '37.252965', '-4.990914');INSERT INTO MUNICIPIOS VALUES
(6107, 12, 'AlanÌs', 'alanis', 41380, '38.037400', '-5.712824');INSERT INTO MUNICIPIOS VALUES
(6108, 12, 'Albaida del Aljarafe', 'albaida-del-aljarafe', 41809, '37.426820', '-6.165390');INSERT INTO MUNICIPIOS VALUES
(6109, 12, 'Alcal· de GuadaÌra', 'alcala-de-guadaira', 41500, '37.338315', '-5.839859');
INSERT INTO `poblacion` (`idpoblacion`, `idprovincia`, `poblacion`, `poblacionseo`, `postal`, `latitud`, `longitud`) VALUES
(6110, 12, 'Alcal· del RÌo', 'alcala-del-rio', 41200, '37.521988', '-5.983386');INSERT INTO MUNICIPIOS VALUES
(6111, 12, 'Alcolea del RÌo', 'alcolea-del-rio', 41449, '37.616410', '-5.663789');INSERT INTO MUNICIPIOS VALUES
(6112, 12, 'Algaba', 'algaba', 41980, '37.460709', '-6.015390');INSERT INTO MUNICIPIOS VALUES
(6113, 12, 'Alg·mitas', 'algamitas', 41661, '37.019745', '-5.144666');INSERT INTO MUNICIPIOS VALUES
(6114, 12, 'AlmadÈn de la Plata', 'almaden-de-la-plata', 41240, '37.872733', '-6.082055');INSERT INTO MUNICIPIOS VALUES
(6115, 12, 'Almensilla', 'almensilla', 41111, '37.309470', '-6.109934');INSERT INTO MUNICIPIOS VALUES
(6116, 12, 'Arahal', 'arahal', 41600, '37.260118', '-5.543976');INSERT INTO MUNICIPIOS VALUES
(6117, 12, 'Aznalc·zar', 'aznalcazar', 41849, '37.303770', '-6.251084');INSERT INTO MUNICIPIOS VALUES
(6118, 12, 'AznalcÛllar', 'aznalcollar', 41870, '37.520415', '-6.274634');INSERT INTO MUNICIPIOS VALUES
(6119, 12, 'Badolatosa', 'badolatosa', 41570, '37.308557', '-4.672794');INSERT INTO MUNICIPIOS VALUES
(6120, 12, 'BenacazÛn', 'benacazon', 41805, '37.353563', '-6.201393');INSERT INTO MUNICIPIOS VALUES
(6121, 12, 'Bollullos de la MitaciÛn', 'bollullos-de-la-mitacion', 41110, '37.335530', '-6.137314');INSERT INTO MUNICIPIOS VALUES
(6122, 12, 'Bormujos', 'bormujos', 41930, '37.372610', '-6.071129');INSERT INTO MUNICIPIOS VALUES
(6123, 12, 'Brenes', 'brenes', 41310, '37.550700', '-5.869739');INSERT INTO MUNICIPIOS VALUES
(6124, 12, 'Burguillos', 'burguillos', 41220, '37.588225', '-5.971354');INSERT INTO MUNICIPIOS VALUES
(6125, 12, 'Cabezas de San Juan', 'cabezas-de-san-juan', 41730, '36.981795', '-5.936549');INSERT INTO MUNICIPIOS VALUES
(6126, 12, 'Camas', 'camas', 41900, '37.400725', '-6.034449');INSERT INTO MUNICIPIOS VALUES
(6127, 12, 'Campana', 'campana', 41429, '37.560908', '-5.415573');INSERT INTO MUNICIPIOS VALUES
(6128, 12, 'Cantillana', 'cantillana', 41320, '37.609819', '-5.824295');INSERT INTO MUNICIPIOS VALUES
(6129, 12, 'CaÒada Rosal', 'canada-rosal', 41439, '37.596170', '-5.211139');INSERT INTO MUNICIPIOS VALUES
(6130, 12, 'Carmona', 'carmona', 41410, '37.470870', '-5.643379');INSERT INTO MUNICIPIOS VALUES
(6131, 12, 'CarriÛn de los CÈspedes', 'carrion-de-los-cespedes', 41820, '37.369136', '-6.329457');INSERT INTO MUNICIPIOS VALUES
(6132, 12, 'Casariche', 'casariche', 41580, '37.296087', '-4.764340');INSERT INTO MUNICIPIOS VALUES
(6133, 12, 'Castilblanco de los Arroyos', 'castilblanco-de-los-arroyos', 41230, '37.678675', '-5.985484');INSERT INTO MUNICIPIOS VALUES
(6134, 12, 'Castilleja de Guzm·n', 'castilleja-de-guzman', 41908, '37.408315', '-6.060190');INSERT INTO MUNICIPIOS VALUES
(6135, 12, 'Castilleja de la Cuesta', 'castilleja-de-la-cuesta', 41950, '37.385495', '-6.056689');INSERT INTO MUNICIPIOS VALUES
(6136, 12, 'Castilleja del Campo', 'castilleja-del-campo', 41810, '37.388720', '-6.335124');INSERT INTO MUNICIPIOS VALUES
(6137, 12, 'Castillo de las Guardas', 'castillo-de-las-guardas', 41890, '37.694402', '-6.313792');INSERT INTO MUNICIPIOS VALUES
(6138, 12, 'Cazalla de la Sierra', 'cazalla-de-la-sierra', 41370, '37.932130', '-5.760564');INSERT INTO MUNICIPIOS VALUES
(6139, 12, 'Constantina', 'constantina', 41450, '37.871213', '-5.619756');INSERT INTO MUNICIPIOS VALUES
(6140, 12, 'Coria del RÌo', 'coria-del-rio', 41100, '37.287315', '-6.050974');INSERT INTO MUNICIPIOS VALUES
(6141, 12, 'Coripe', 'coripe', 41780, '36.977547', '-5.439474');INSERT INTO MUNICIPIOS VALUES
(6142, 12, 'Coronil', 'coronil', 41760, '37.081750', '-5.632553');INSERT INTO MUNICIPIOS VALUES
(6143, 12, 'Corrales', 'corrales', 41657, '37.097223', '-4.982643');INSERT INTO MUNICIPIOS VALUES
(6144, 12, 'Cuervo', 'cuervo', 41749, '36.851673', '-6.041107');INSERT INTO MUNICIPIOS VALUES
(6145, 12, 'Dos Hermanas', 'dos-hermanas', 41701, '37.282905', '-5.928134');INSERT INTO MUNICIPIOS VALUES
(6146, 12, '¡?cija', 'ecija', 41400, '37.540766', '-5.072937');INSERT INTO MUNICIPIOS VALUES
(6147, 12, 'Espartinas', 'espartinas', 41807, '37.382894', '-6.123582');INSERT INTO MUNICIPIOS VALUES
(6148, 12, 'Estepa', 'estepa', 41560, '37.293875', '-4.878074');INSERT INTO MUNICIPIOS VALUES
(6149, 12, 'Fuentes de AndalucÌa', 'fuentes-de-andalucia', 41420, '37.463545', '-5.343069');INSERT INTO MUNICIPIOS VALUES
(6150, 12, 'Garrobo', 'garrobo', 41888, '37.625245', '-6.172256');INSERT INTO MUNICIPIOS VALUES
(6151, 12, 'Gelves', 'gelves', 41120, '37.338690', '-6.027394');INSERT INTO MUNICIPIOS VALUES
(6152, 12, 'Gerena', 'gerena', 41860, '37.527444', '-6.157316');INSERT INTO MUNICIPIOS VALUES
(6153, 12, 'Gilena', 'gilena', 41565, '37.251290', '-4.913774');INSERT INTO MUNICIPIOS VALUES
(6154, 12, 'Gines', 'gines', 41960, '37.384525', '-6.073999');INSERT INTO MUNICIPIOS VALUES
(6155, 12, 'Guadalcanal', 'guadalcanal', 41390, '38.096982', '-5.818990');INSERT INTO MUNICIPIOS VALUES
(6156, 12, 'Guillena', 'guillena', 41210, '37.547760', '-6.055304');INSERT INTO MUNICIPIOS VALUES
(6157, 12, 'Herrera', 'herrera-sevilla', 41567, '37.362714', '-4.850679');INSERT INTO MUNICIPIOS VALUES
(6158, 12, 'HuÈvar del Aljarafe', 'huevar-del-aljarafe', 41830, '37.355779', '-6.278807');INSERT INTO MUNICIPIOS VALUES
(6159, 12, 'Isla Mayor', 'isla-mayor', 41140, '37.133485', '-6.162989');INSERT INTO MUNICIPIOS VALUES
(6160, 12, 'Lantejuela', 'lantejuela', 41630, '37.353170', '-5.223827');INSERT INTO MUNICIPIOS VALUES
(6161, 12, 'Lebrija', 'lebrija', 41740, '36.920592', '-6.065870');INSERT INTO MUNICIPIOS VALUES
(6162, 12, 'Lora de Estepa', 'lora-de-estepa', 41564, '37.271714', '-4.826155');INSERT INTO MUNICIPIOS VALUES
(6163, 12, 'Lora del RÌo', 'lora-del-rio', 41440, '37.659830', '-5.528184');INSERT INTO MUNICIPIOS VALUES
(6164, 12, 'Luisiana', 'luisiana', 41430, '37.550974', '-5.230522');INSERT INTO MUNICIPIOS VALUES
(6165, 12, 'MadroÒo', 'madrono', 41897, '37.643461', '-6.511116');INSERT INTO MUNICIPIOS VALUES
(6166, 12, 'Mairena del Alcor', 'mairena-del-alcor', 41510, '37.377119', '-5.743914');INSERT INTO MUNICIPIOS VALUES
(6167, 12, 'Mairena del Aljarafe', 'mairena-del-aljarafe', 41927, '37.347360', '-6.062619');INSERT INTO MUNICIPIOS VALUES
(6168, 12, 'Marchena', 'marchena', 41620, '37.325247', '-5.412837');INSERT INTO MUNICIPIOS VALUES
(6169, 12, 'Marinaleda', 'marinaleda', 41569, '37.371590', '-4.959764');INSERT INTO MUNICIPIOS VALUES
(6170, 12, 'MartÌn de la Jara', 'martin-de-la-jara', 41658, '37.109500', '-4.961929');INSERT INTO MUNICIPIOS VALUES
(6171, 12, 'Molares', 'molares', 41750, '37.155186', '-5.719242');INSERT INTO MUNICIPIOS VALUES
(6172, 12, 'Montellano', 'montellano', 41770, '36.994485', '-5.573049');INSERT INTO MUNICIPIOS VALUES
(6173, 12, 'MorÛn de la Frontera', 'moron-de-la-frontera', 41530, '37.129423', '-5.452823');INSERT INTO MUNICIPIOS VALUES
(6174, 12, 'Navas de la ConcepciÛn', 'navas-de-la-concepcion', 41460, '37.932822', '-5.464498');INSERT INTO MUNICIPIOS VALUES
(6175, 12, 'Olivares', 'olivares', 41804, '37.418406', '-6.153439');INSERT INTO MUNICIPIOS VALUES
(6176, 12, 'Osuna', 'osuna', 41640, '37.237125', '-5.102814');INSERT INTO MUNICIPIOS VALUES
(6177, 12, 'Palacios y Villafranca', 'palacios-y-villafranca', 41720, '37.163095', '-5.924179');INSERT INTO MUNICIPIOS VALUES
(6178, 12, 'Palomares del RÌo', 'palomares-del-rio', 41928, '37.321875', '-6.059334');INSERT INTO MUNICIPIOS VALUES
(6179, 12, 'Paradas', 'paradas', 41610, '37.290563', '-5.496283');INSERT INTO MUNICIPIOS VALUES
(6180, 12, 'Pedrera', 'pedrera', 41566, '37.223665', '-4.898964');INSERT INTO MUNICIPIOS VALUES
(6181, 12, 'Pedroso', 'pedroso', 41360, '37.837860', '-5.765060');INSERT INTO MUNICIPIOS VALUES
(6182, 12, 'PeÒaflor', 'penaflor', 41470, '37.710129', '-5.347109');INSERT INTO MUNICIPIOS VALUES
(6183, 12, 'Pilas', 'pilas', 41840, '37.305390', '-6.304309');INSERT INTO MUNICIPIOS VALUES
(6184, 12, 'Pruna', 'pruna', 41670, '36.974760', '-5.223474');INSERT INTO MUNICIPIOS VALUES
(6185, 12, 'Puebla de Cazalla', 'puebla-de-cazalla', 41540, '37.222988', '-5.313220');INSERT INTO MUNICIPIOS VALUES
(6186, 12, 'Puebla de los Infantes', 'puebla-de-los-infantes', 41479, '37.780350', '-5.388959');INSERT INTO MUNICIPIOS VALUES
(6187, 12, 'Puebla del RÌo', 'puebla-del-rio', 41130, '37.268040', '-6.065110');INSERT INTO MUNICIPIOS VALUES
(6188, 12, 'Real de la Jara', 'real-de-la-jara', 41250, '37.949415', '-6.152984');INSERT INTO MUNICIPIOS VALUES
(6189, 12, 'Rinconada', 'rinconada', 41309, '37.488072', '-5.981369');INSERT INTO MUNICIPIOS VALUES
(6190, 12, 'Roda de AndalucÌa', 'roda-de-andalucia', 41590, '37.201102', '-4.778943');INSERT INTO MUNICIPIOS VALUES
(6191, 12, 'Ronquillo', 'ronquillo', 41880, '37.727470', '-6.176580');INSERT INTO MUNICIPIOS VALUES
(6192, 12, 'Rubio', 'rubio', 41568, '37.355354', '-4.988995');INSERT INTO MUNICIPIOS VALUES
(6193, 12, 'Salteras', 'salteras', 41909, '37.418000', '-6.107169');INSERT INTO MUNICIPIOS VALUES
(6194, 12, 'San Juan de Aznalfarache', 'san-juan-de-aznalfarache', 41920, '37.359915', '-6.027769');INSERT INTO MUNICIPIOS VALUES
(6195, 12, 'San Nicol·s del Puerto', 'san-nicolas-del-puerto', 41388, '37.993349', '-5.652870');INSERT INTO MUNICIPIOS VALUES
(6196, 12, 'Sanl˙car la Mayor', 'sanlucar-la-mayor', 41800, '37.385535', '-6.195634');INSERT INTO MUNICIPIOS VALUES
(6197, 12, 'Santiponce', 'santiponce', 41970, '37.434840', '-6.038584');INSERT INTO MUNICIPIOS VALUES
(6198, 12, 'Saucejo', 'saucejo', 41650, '37.069511', '-5.096980');INSERT INTO MUNICIPIOS VALUES
(6199, 12, 'Sevilla', 'sevilla', 41001, '37.387697', '-6.001813');INSERT INTO MUNICIPIOS VALUES
(6200, 12, 'Tocina', 'tocina', 41340, '37.609838', '-5.737182');INSERT INTO MUNICIPIOS VALUES
(6201, 12, 'Tomares', 'tomares', 41940, '37.375850', '-6.051184');INSERT INTO MUNICIPIOS VALUES
(6202, 12, 'Umbrete', 'umbrete', 41806, '37.369628', '-6.156210');INSERT INTO MUNICIPIOS VALUES
(6203, 12, 'Utrera', 'utrera', 41710, '37.184225', '-5.779174');INSERT INTO MUNICIPIOS VALUES
(6204, 12, 'Valencina de la ConcepciÛn', 'valencina-de-la-concepcion', 41907, '37.417045', '-6.077615');INSERT INTO MUNICIPIOS VALUES
(6205, 12, 'Villamanrique de la Condesa', 'villamanrique-de-la-condesa', 41850, '37.246327', '-6.306533');INSERT INTO MUNICIPIOS VALUES
(6206, 12, 'Villanueva de San Juan', 'villanueva-de-san-juan', 41660, '37.051758', '-5.176092');INSERT INTO MUNICIPIOS VALUES
(6207, 12, 'Villanueva del Ariscal', 'villanueva-del-ariscal', 41808, '37.395151', '-6.143721');INSERT INTO MUNICIPIOS VALUES
(6208, 12, 'Villanueva del RÌo y Minas', 'villanueva-del-rio-y-minas', 41350, '37.651960', '-5.718354');INSERT INTO MUNICIPIOS VALUES
(6209, 12, 'Villaverde del RÌo', 'villaverde-del-rio', 41318, '37.594055', '-5.879624');INSERT INTO MUNICIPIOS VALUES
(6210, 12, 'Viso del Alcor', 'viso-del-alcor', 41520, '37.387211', '-5.722470');INSERT INTO MUNICIPIOS VALUES
(6212, 16, 'Abejar', 'abejar', 42146, '41.806740', '-2.788824');INSERT INTO MUNICIPIOS VALUES
(6213, 16, 'Adradas', 'adradas', 42216, '41.350680', '-2.472800');INSERT INTO MUNICIPIOS VALUES
(6214, 16, '¡Ågreda', 'agreda', 42100, '41.853737', '-1.923961');INSERT INTO MUNICIPIOS VALUES
(6215, 16, 'Alconaba', 'alconaba', 42134, '41.723415', '-2.386409');INSERT INTO MUNICIPIOS VALUES
(6216, 16, 'Alcubilla de Avellaneda', 'alcubilla-de-avellaneda', 42351, '41.725727', '-3.304802');INSERT INTO MUNICIPIOS VALUES
(6217, 16, 'Alcubilla de las PeÒas', 'alcubilla-de-las-penas', 42213, '41.252070', '-2.525979');INSERT INTO MUNICIPIOS VALUES
(6218, 16, 'Aldealafuente', 'aldealafuente', 42134, '41.672446', '-2.324819');INSERT INTO MUNICIPIOS VALUES
(6219, 16, 'Aldealices', 'aldealices', 42180, '41.901975', '-2.308974');INSERT INTO MUNICIPIOS VALUES
(6220, 16, 'Aldealpozo', 'aldealpozo', 42112, '41.782760', '-2.204734');INSERT INTO MUNICIPIOS VALUES
(6221, 16, 'AldealseÒor', 'aldealsenor', 42180, '41.880755', '-2.310929');INSERT INTO MUNICIPIOS VALUES
(6222, 16, 'Aldehuela de Peri·Òez', 'aldehuela-de-perianez', 42180, '41.808010', '-2.306299');INSERT INTO MUNICIPIOS VALUES
(6223, 16, 'Aldehuelas', 'aldehuelas', 42173, '41.994505', '-2.364249');INSERT INTO MUNICIPIOS VALUES
(6224, 16, 'Alentisque', 'alentisque', 42225, '41.420515', '-2.332049');INSERT INTO MUNICIPIOS VALUES
(6225, 16, 'Aliud', 'aliud', 42132, '41.654922', '-2.253219');INSERT INTO MUNICIPIOS VALUES
(6226, 16, 'Almajano', 'almajano', 42180, '41.850719', '-2.338645');INSERT INTO MUNICIPIOS VALUES
(6227, 16, 'Almaluez', 'almaluez', 42258, '41.289150', '-2.269814');INSERT INTO MUNICIPIOS VALUES
(6228, 16, 'Almarza', 'almarza', 42169, '41.947997', '-2.470489');INSERT INTO MUNICIPIOS VALUES
(6229, 16, 'Almaz·n', 'almazan', 42200, '41.485935', '-2.531154');INSERT INTO MUNICIPIOS VALUES
(6230, 16, 'Almazul', 'almazul', 42126, '41.573875', '-2.147364');INSERT INTO MUNICIPIOS VALUES
(6231, 16, 'Almenar de Soria', 'almenar-de-soria', 42130, '41.682730', '-2.201409');INSERT INTO MUNICIPIOS VALUES
(6232, 16, 'Alpanseque', 'alpanseque', 42213, '41.265474', '-2.672258');INSERT INTO MUNICIPIOS VALUES
(6233, 16, 'ArancÛn', 'arancon', 42180, '41.799991', '-2.281235');INSERT INTO MUNICIPIOS VALUES
(6234, 16, 'Arcos de JalÛn', 'arcos-de-jalon', 42250, '41.213540', '-2.272611');INSERT INTO MUNICIPIOS VALUES
(6235, 16, 'Arenillas', 'arenillas', 42368, '41.347349', '-2.845768');INSERT INTO MUNICIPIOS VALUES
(6236, 16, 'ArÈvalo de la Sierra', 'arevalo-de-la-sierra', 42161, '41.947792', '-2.400432');INSERT INTO MUNICIPIOS VALUES
(6237, 16, 'Ausejo de la Sierra', 'ausejo-de-la-sierra', 42172, '41.895015', '-2.374004');INSERT INTO MUNICIPIOS VALUES
(6238, 16, 'Baraona', 'baraona', 42213, '41.295158', '-2.656811');INSERT INTO MUNICIPIOS VALUES
(6239, 16, 'Barca', 'barca', 42210, '41.455207', '-2.620583');INSERT INTO MUNICIPIOS VALUES
(6240, 16, 'Barcones', 'barcones', 42368, '41.291254', '-2.816766');INSERT INTO MUNICIPIOS VALUES
(6241, 16, 'Bayubas de Abajo', 'bayubas-de-abajo', 42366, '41.527177', '-2.896395');INSERT INTO MUNICIPIOS VALUES
(6242, 16, 'Bayubas de Arriba', 'bayubas-de-arriba', 42366, '41.556307', '-2.886835');INSERT INTO MUNICIPIOS VALUES
(6243, 16, 'BeratÛn', 'beraton', 42107, '41.716332', '-1.810935');INSERT INTO MUNICIPIOS VALUES
(6244, 16, 'Berlanga de Duero', 'berlanga-de-duero', 42360, '41.467640', '-2.862284');INSERT INTO MUNICIPIOS VALUES
(6245, 16, 'Blacos', 'blacos', 42193, '41.680645', '-2.856863');INSERT INTO MUNICIPIOS VALUES
(6246, 16, 'Bliecos', 'bliecos', 42128, '41.528140', '-2.271369');INSERT INTO MUNICIPIOS VALUES
(6247, 16, 'Borjabad', 'borjabad', 42218, '41.552790', '-2.367729');INSERT INTO MUNICIPIOS VALUES
(6248, 16, 'Borobia', 'borobia', 42107, '41.664545', '-1.896143');INSERT INTO MUNICIPIOS VALUES
(6249, 16, 'Buberos', 'buberos', 42132, '41.646765', '-2.194819');INSERT INTO MUNICIPIOS VALUES
(6250, 16, 'Buitrago', 'buitrago', 42162, '41.847868', '-2.410478');INSERT INTO MUNICIPIOS VALUES
(6251, 16, 'Burgo de Osma-Ciudad de Osma', 'burgo-de-osma-ciudad-de-osma', 42300, '41.588005', '-3.074299');INSERT INTO MUNICIPIOS VALUES
(6252, 16, 'Cabrejas del Campo', 'cabrejas-del-campo', 42130, '41.681169', '-2.268946');INSERT INTO MUNICIPIOS VALUES
(6253, 16, 'Cabrejas del Pinar', 'cabrejas-del-pinar', 42146, '41.798232', '-2.849875');INSERT INTO MUNICIPIOS VALUES
(6254, 16, 'CalataÒazor', 'calatanazor', 42193, '41.700194', '-2.816776');INSERT INTO MUNICIPIOS VALUES
(6255, 16, 'Caltojar', 'caltojar', 42367, '41.400905', '-2.763769');INSERT INTO MUNICIPIOS VALUES
(6256, 16, 'Candilichera', 'candilichera', 42134, '41.705317', '-2.301128');INSERT INTO MUNICIPIOS VALUES
(6257, 16, 'CaÒamaque', 'canamaque', 42220, '41.444699', '-2.236535');INSERT INTO MUNICIPIOS VALUES
(6258, 16, 'Carabantes', 'carabantes', 42126, '41.551935', '-1.998194');INSERT INTO MUNICIPIOS VALUES
(6259, 16, 'Caracena', 'caracena', 42311, '41.383733', '-3.090800');INSERT INTO MUNICIPIOS VALUES
(6260, 16, 'Carrascosa de Abajo', 'carrascosa-de-abajo', 42311, '41.422776', '-3.089707');INSERT INTO MUNICIPIOS VALUES
(6261, 16, 'Carrascosa de la Sierra', 'carrascosa-de-la-sierra', 42180, '41.894965', '-2.280754');INSERT INTO MUNICIPIOS VALUES
(6262, 16, 'Casarejos', 'casarejos', 42148, '41.796254', '-3.033367');INSERT INTO MUNICIPIOS VALUES
(6263, 16, 'CastilfrÌo de la Sierra', 'castilfrio-de-la-sierra', 42180, '41.918391', '-2.305373');INSERT INTO MUNICIPIOS VALUES
(6264, 16, 'Castillejo de Robledo', 'castillejo-de-robledo', 42328, '41.560897', '-3.494629');INSERT INTO MUNICIPIOS VALUES
(6265, 16, 'Castilruiz', 'castilruiz', 42113, '41.875685', '-2.062799');INSERT INTO MUNICIPIOS VALUES
(6266, 16, 'Centenera de Andaluz', 'centenera-de-andaluz', 42211, '41.506600', '-2.717560');INSERT INTO MUNICIPIOS VALUES
(6267, 16, 'CerbÛn', 'cerbon', 42181, '41.929265', '-2.169469');INSERT INTO MUNICIPIOS VALUES
(6268, 16, 'Cidones', 'cidones', 42145, '41.813616', '-2.638994');INSERT INTO MUNICIPIOS VALUES
(6269, 16, 'Cigudosa', 'cigudosa', 42113, '41.935127', '-2.055485');INSERT INTO MUNICIPIOS VALUES
(6270, 16, 'Cihuela', 'cihuela', 42126, '41.406428', '-1.999903');INSERT INTO MUNICIPIOS VALUES
(6271, 16, 'Ciria', 'ciria', 42138, '41.618540', '-1.967839');INSERT INTO MUNICIPIOS VALUES
(6272, 16, 'Cirujales del RÌo', 'cirujales-del-rio', 42180, '41.867784', '-2.325451');INSERT INTO MUNICIPIOS VALUES
(6273, 16, 'Coscurita', 'coscurita', 42216, '41.435090', '-2.476239');INSERT INTO MUNICIPIOS VALUES
(6274, 16, 'Covaleda', 'covaleda', 42157, '41.936755', '-2.888394');INSERT INTO MUNICIPIOS VALUES
(6275, 16, 'Cubilla', 'cubilla', 42148, '41.749295', '-2.935509');INSERT INTO MUNICIPIOS VALUES
(6276, 16, 'Cubo de la Solana', 'cubo-de-la-solana', 42191, '41.602450', '-2.421539');INSERT INTO MUNICIPIOS VALUES
(6277, 16, 'Cueva de ¡Ågreda', 'cueva-de-agreda', 42107, '41.763467', '-1.886328');INSERT INTO MUNICIPIOS VALUES
(6278, 16, 'DÈvanos', 'devanos', 42108, '41.903135', '-1.947277');INSERT INTO MUNICIPIOS VALUES
(6279, 16, 'Deza', 'deza', 42126, '41.462835', '-2.019524');INSERT INTO MUNICIPIOS VALUES
(6280, 16, 'Duruelo de la Sierra', 'duruelo-de-la-sierra', 42158, '41.952865', '-2.929134');INSERT INTO MUNICIPIOS VALUES
(6281, 16, 'Escobosa de Almaz·n', 'escobosa-de-almazan', 42223, '41.486589', '-2.371432');INSERT INTO MUNICIPIOS VALUES
(6282, 16, 'Espeja de San Marcelino', 'espeja-de-san-marcelino', 42142, '41.802826', '-3.221583');INSERT INTO MUNICIPIOS VALUES
(6283, 16, 'EspejÛn', 'espejon', 42142, '41.830100', '-3.256779');INSERT INTO MUNICIPIOS VALUES
(6284, 16, 'Estepa de San Juan', 'estepa-de-san-juan', 42180, '41.926508', '-2.333775');INSERT INTO MUNICIPIOS VALUES
(6285, 16, 'Frechilla de Almaz·n', 'frechilla-de-almazan', 42216, '41.426459', '-2.514827');INSERT INTO MUNICIPIOS VALUES
(6286, 16, 'Fresno de Caracena', 'fresno-de-caracena', 42311, '41.452494', '-3.091866');INSERT INTO MUNICIPIOS VALUES
(6287, 16, 'Fuentearmegil', 'fuentearmegil', 42141, '41.714870', '-3.182024');INSERT INTO MUNICIPIOS VALUES
(6288, 16, 'FuentecambrÛn', 'fuentecambron', 42342, '41.504795', '-3.326979');INSERT INTO MUNICIPIOS VALUES
(6289, 16, 'Fuentecantos', 'fuentecantos', 42162, '41.848620', '-2.428289');INSERT INTO MUNICIPIOS VALUES
(6290, 16, 'Fuentelmonge', 'fuentelmonge', 42220, '41.420568', '-2.186189');INSERT INTO MUNICIPIOS VALUES
(6291, 16, 'Fuentelsaz de Soria', 'fuentelsaz-de-soria', 42162, '41.865850', '-2.416454');INSERT INTO MUNICIPIOS VALUES
(6292, 16, 'Fuentepinilla', 'fuentepinilla', 42294, '41.566171', '-2.762737');INSERT INTO MUNICIPIOS VALUES
(6293, 16, 'Fuentes de MagaÒa', 'fuentes-de-magana', 42181, '41.935360', '-2.180062');INSERT INTO MUNICIPIOS VALUES
(6294, 16, 'Fuentestr˙n', 'fuentestrun', 42113, '41.875700', '-2.081974');INSERT INTO MUNICIPIOS VALUES
(6295, 16, 'Garray', 'garray', 42162, '41.815155', '-2.445614');INSERT INTO MUNICIPIOS VALUES
(6296, 16, 'Golmayo', 'golmayo', 42190, '41.765662', '-2.523536');INSERT INTO MUNICIPIOS VALUES
(6297, 16, 'GÛmara', 'gomara', 42120, '41.623935', '-2.224759');INSERT INTO MUNICIPIOS VALUES
(6298, 16, 'Gormaz', 'gormaz', 42313, '41.493055', '-3.003754');INSERT INTO MUNICIPIOS VALUES
(6299, 16, 'Herrera de Soria', 'herrera-de-soria', 42148, '41.762955', '-3.012523');INSERT INTO MUNICIPIOS VALUES
(6300, 16, 'Hinojosa del Campo', 'hinojosa-del-campo', 42112, '41.740465', '-2.100979');INSERT INTO MUNICIPIOS VALUES
(6301, 16, 'Langa de Duero', 'langa-de-duero', 42320, '41.610060', '-3.401804');INSERT INTO MUNICIPIOS VALUES
(6302, 16, 'Liceras', 'liceras', 42341, '41.380154', '-3.243684');INSERT INTO MUNICIPIOS VALUES
(6303, 16, 'Losilla', 'losilla', 42181, '41.872581', '-2.278300');INSERT INTO MUNICIPIOS VALUES
(6304, 16, 'MagaÒa', 'magana', 42181, '41.900500', '-2.161189');INSERT INTO MUNICIPIOS VALUES
(6305, 16, 'Maj·n', 'majan', 42225, '41.470490', '-2.302569');INSERT INTO MUNICIPIOS VALUES
(6306, 16, 'Matalebreras', 'matalebreras', 42113, '41.840368', '-2.047829');INSERT INTO MUNICIPIOS VALUES
(6307, 16, 'Matamala de Almaz·n', 'matamala-de-almazan', 42211, '41.506071', '-2.641582');INSERT INTO MUNICIPIOS VALUES
(6308, 16, 'Medinaceli', 'medinaceli', 42240, '41.172367', '-2.435754');INSERT INTO MUNICIPIOS VALUES
(6309, 16, 'MiÒo de Medinaceli', 'mino-de-medinaceli', 42230, '41.189335', '-2.518659');INSERT INTO MUNICIPIOS VALUES
(6310, 16, 'MiÒo de San Esteban', 'mino-de-san-esteban', 42328, '41.536165', '-3.345874');INSERT INTO MUNICIPIOS VALUES
(6311, 16, 'Molinos de Duero', 'molinos-de-duero', 42156, '41.887198', '-2.786988');INSERT INTO MUNICIPIOS VALUES
(6312, 16, 'Momblona', 'momblona', 42225, '41.443379', '-2.345625');INSERT INTO MUNICIPIOS VALUES
(6313, 16, 'Monteagudo de las VicarÌas', 'monteagudo-de-las-vicarias', 42269, '41.365295', '-2.167654');INSERT INTO MUNICIPIOS VALUES
(6314, 16, 'Montejo de Tiermes', 'montejo-de-tiermes', 42341, '41.369380', '-3.197299');INSERT INTO MUNICIPIOS VALUES
(6315, 16, 'Montenegro de Cameros', 'montenegro-de-cameros', 26127, '42.088855', '-2.751569');INSERT INTO MUNICIPIOS VALUES
(6316, 16, 'MorÛn de Almaz·n', 'moron-de-almazan', 42223, '41.414575', '-2.412913');INSERT INTO MUNICIPIOS VALUES
(6317, 16, 'Muriel de la Fuente', 'muriel-de-la-fuente', 42193, '41.725114', '-2.861730');INSERT INTO MUNICIPIOS VALUES
(6318, 16, 'Muriel Viejo', 'muriel-viejo', 42148, '41.782115', '-2.915044');INSERT INTO MUNICIPIOS VALUES
(6319, 16, 'NafrÌa de Ucero', 'nafria-de-ucero', 42141, '41.722726', '-3.093973');INSERT INTO MUNICIPIOS VALUES
(6320, 16, 'Narros', 'narros', 42189, '41.848033', '-2.294086');INSERT INTO MUNICIPIOS VALUES
(6321, 16, 'Navaleno', 'navaleno', 42149, '41.837299', '-3.003810');INSERT INTO MUNICIPIOS VALUES
(6322, 16, 'Nepas', 'nepas', 42218, '41.526480', '-2.397554');INSERT INTO MUNICIPIOS VALUES
(6323, 16, 'Nolay', 'nolay', 42223, '41.527150', '-2.350654');INSERT INTO MUNICIPIOS VALUES
(6324, 16, 'Noviercas', 'noviercas', 42132, '41.710871', '-2.034492');INSERT INTO MUNICIPIOS VALUES
(6325, 16, '”lvega', 'olvega', 42110, '41.778620', '-1.984654');INSERT INTO MUNICIPIOS VALUES
(6326, 16, 'Oncala', 'oncala', 42172, '41.971015', '-2.309138');INSERT INTO MUNICIPIOS VALUES
(6327, 16, 'Pinilla del Campo', 'pinilla-del-campo', 42112, '41.716900', '-2.083769');INSERT INTO MUNICIPIOS VALUES
(6328, 16, 'Portillo de Soria', 'portillo-de-soria', 42138, '41.634681', '-2.121241');INSERT INTO MUNICIPIOS VALUES
(6329, 16, 'PÛveda de Soria', 'poveda-de-soria', 42169, '42.012195', '-2.504799');INSERT INTO MUNICIPIOS VALUES
(6330, 16, 'Pozalmuro', 'pozalmuro', 42112, '41.775823', '-2.102296');INSERT INTO MUNICIPIOS VALUES
(6331, 16, 'Quintana Redonda', 'quintana-redonda', 42291, '41.640476', '-2.615564');INSERT INTO MUNICIPIOS VALUES
(6332, 16, 'Quintanas de Gormaz', 'quintanas-de-gormaz', 42313, '41.508020', '-2.976079');INSERT INTO MUNICIPIOS VALUES
(6333, 16, 'QuiÒonerÌa', 'quinoneria', 42126, '41.568525', '-2.037794');INSERT INTO MUNICIPIOS VALUES
(6334, 16, 'R·banos', 'rabanos', 42191, '41.718102', '-2.475600');INSERT INTO MUNICIPIOS VALUES
(6335, 16, 'Rebollar', 'rebollar', 42165, '41.914340', '-2.504314');INSERT INTO MUNICIPIOS VALUES
(6336, 16, 'Recuerda', 'recuerda', 42313, '41.476405', '-2.994244');INSERT INTO MUNICIPIOS VALUES
(6337, 16, 'Rello', 'rello', 42368, '41.335609', '-2.752011');INSERT INTO MUNICIPIOS VALUES
(6338, 16, 'Renieblas', 'renieblas', 42189, '41.820987', '-2.373118');INSERT INTO MUNICIPIOS VALUES
(6339, 16, 'Retortillo de Soria', 'retortillo-de-soria', 42315, '41.312844', '-2.981297');INSERT INTO MUNICIPIOS VALUES
(6340, 16, 'Reznos', 'reznos', 42126, '41.592671', '-2.025914');INSERT INTO MUNICIPIOS VALUES
(6341, 16, 'Riba de Escalote', 'riba-de-escalote', 42368, '41.351968', '-2.796237');INSERT INTO MUNICIPIOS VALUES
(6342, 16, 'Rioseco de Soria', 'rioseco-de-soria', 42193, '41.640925', '-2.841229');INSERT INTO MUNICIPIOS VALUES
(6343, 16, 'Rollamienta', 'rollamienta', 42165, '41.927159', '-2.532963');INSERT INTO MUNICIPIOS VALUES
(6344, 16, 'Royo', 'royo', 42153, '41.909351', '-2.645640');INSERT INTO MUNICIPIOS VALUES
(6345, 16, 'Salduero', 'salduero', 42156, '41.889280', '-2.795704');INSERT INTO MUNICIPIOS VALUES
(6346, 16, 'San Esteban de Gormaz', 'san-esteban-de-gormaz', 42330, '41.572345', '-3.199569');INSERT INTO MUNICIPIOS VALUES
(6347, 16, 'San Felices', 'san-felices', 42113, '41.936700', '-2.027888');INSERT INTO MUNICIPIOS VALUES
(6348, 16, 'San Leonardo de Yag', 'san-leonardo-de-yag', 42140, '41.829485', '-3.062539');INSERT INTO MUNICIPIOS VALUES
(6349, 16, 'San Pedro Manrique', 'san-pedro-manrique', 42174, '42.029420', '-2.231784');INSERT INTO MUNICIPIOS VALUES
(6350, 16, 'Santa Cruz de Yanguas', 'santa-cruz-de-yanguas', 42173, '42.062140', '-2.449614');INSERT INTO MUNICIPIOS VALUES
(6351, 16, 'Santa MarÌa de Huerta', 'santa-maria-de-huerta', 42260, '41.261642', '-2.177869');INSERT INTO MUNICIPIOS VALUES
(6352, 16, 'Santa MarÌa de las Hoyas', 'santa-maria-de-las-hoyas', 42141, '41.771955', '-3.140747');INSERT INTO MUNICIPIOS VALUES
(6353, 16, 'SerÛn de N·gima', 'seron-de-nagima', 42127, '41.497745', '-2.201084');INSERT INTO MUNICIPIOS VALUES
(6354, 16, 'Soliedra', 'soliedra', 42223, '41.469535', '-2.382280');INSERT INTO MUNICIPIOS VALUES
(6355, 16, 'Soria', 'soria', 42001, '41.764658', '-2.469167');INSERT INTO MUNICIPIOS VALUES
(6356, 16, 'Sotillo del RincÛn', 'sotillo-del-rincon', 42165, '41.932713', '-2.602248');INSERT INTO MUNICIPIOS VALUES
(6357, 16, 'Suellacabras', 'suellacabras', 42189, '41.851836', '-2.224038');INSERT INTO MUNICIPIOS VALUES
(6358, 16, 'Tajahuerce', 'tajahuerce', 42112, '41.739756', '-2.150929');INSERT INTO MUNICIPIOS VALUES
(6359, 16, 'Tajueco', 'tajueco', 42365, '41.535941', '-2.849796');INSERT INTO MUNICIPIOS VALUES
(6360, 16, 'Talveila', 'talveila', 42148, '41.782975', '-2.967799');INSERT INTO MUNICIPIOS VALUES
(6361, 16, 'Tardelcuende', 'tardelcuende', 42294, '41.593935', '-2.644213');INSERT INTO MUNICIPIOS VALUES
(6362, 16, 'Taroda', 'taroda', 42216, '41.347580', '-2.432649');INSERT INTO MUNICIPIOS VALUES
(6363, 16, 'Tejado', 'tejado-soria', 42128, '41.589246', '-2.266981');INSERT INTO MUNICIPIOS VALUES
(6364, 16, 'Torlengua', 'torlengua', 42220, '41.455136', '-2.162867');INSERT INTO MUNICIPIOS VALUES
(6365, 16, 'Torreblacos', 'torreblacos', 42193, '41.669335', '-2.877364');INSERT INTO MUNICIPIOS VALUES
(6366, 16, 'Torrubia de Soria', 'torrubia-de-soria', 42138, '41.631047', '-2.090774');INSERT INTO MUNICIPIOS VALUES
(6367, 16, 'TrÈvago', 'trevago', 42113, '41.874984', '-2.103546');INSERT INTO MUNICIPIOS VALUES
(6368, 16, 'Ucero', 'ucero', 42317, '41.717200', '-3.049519');INSERT INTO MUNICIPIOS VALUES
(6369, 16, 'Vadillo', 'vadillo', 42148, '41.790978', '-3.009664');INSERT INTO MUNICIPIOS VALUES
(6370, 16, 'Valdeavellano de Tera', 'valdeavellano-de-tera', 42165, '41.939495', '-2.574479');INSERT INTO MUNICIPIOS VALUES
(6371, 16, 'ValdegeÒa', 'valdegena', 42112, '41.816746', '-2.173578');INSERT INTO MUNICIPIOS VALUES
(6372, 16, 'Valdelagua del Cerro', 'valdelagua-del-cerro', 42113, '41.888100', '-2.116061');INSERT INTO MUNICIPIOS VALUES
(6373, 16, 'Valdemaluque', 'valdemaluque', 42318, '41.674206', '-3.046973');INSERT INTO MUNICIPIOS VALUES
(6374, 16, 'Valdenebro', 'valdenebro', 42313, '41.571306', '-2.964518');INSERT INTO MUNICIPIOS VALUES
(6375, 16, 'Valdeprado', 'valdeprado', 42181, '41.938568', '-2.109054');INSERT INTO MUNICIPIOS VALUES
(6376, 16, 'Valderrodilla', 'valderrodilla', 42294, '41.563655', '-2.808854');INSERT INTO MUNICIPIOS VALUES
(6377, 16, 'Valtajeros', 'valtajeros', 42181, '41.937970', '-2.222776');INSERT INTO MUNICIPIOS VALUES
(6378, 16, 'Velamaz·n', 'velamazan', 42210, '41.449834', '-2.698661');INSERT INTO MUNICIPIOS VALUES
(6379, 16, 'Velilla de la Sierra', 'velilla-de-la-sierra', 42189, '41.808904', '-2.401649');INSERT INTO MUNICIPIOS VALUES
(6380, 16, 'Velilla de los Ajos', 'velilla-de-los-ajos', 42225, '41.490280', '-2.254759');INSERT INTO MUNICIPIOS VALUES
(6381, 16, 'Viana de Duero', 'viana-de-duero', 42218, '41.533885', '-2.460814');INSERT INTO MUNICIPIOS VALUES
(6382, 16, 'Villaciervos', 'villaciervos', 42192, '41.763200', '-2.624429');INSERT INTO MUNICIPIOS VALUES
(6383, 16, 'Villanueva de Gormaz', 'villanueva-de-gormaz', 42311, '41.468030', '-3.063089');INSERT INTO MUNICIPIOS VALUES
(6384, 16, 'Villar del Ala', 'villar-del-ala', 42165, '41.916816', '-2.565808');INSERT INTO MUNICIPIOS VALUES
(6385, 16, 'Villar del Campo', 'villar-del-campo', 42112, '41.788855', '-2.150319');INSERT INTO MUNICIPIOS VALUES
(6386, 16, 'Villar del RÌo', 'villar-del-rio', 42173, '42.075370', '-2.351679');INSERT INTO MUNICIPIOS VALUES
(6387, 16, 'Villares de Soria', 'villares-de-soria', 42180, '41.864700', '-2.355109');INSERT INTO MUNICIPIOS VALUES
(6388, 16, 'Villasayas', 'villasayas', 42214, '41.353560', '-2.609120');INSERT INTO MUNICIPIOS VALUES
(6389, 16, 'Villaseca de Arciel', 'villaseca-de-arciel', 42132, '41.625026', '-2.160673');INSERT INTO MUNICIPIOS VALUES
(6390, 16, 'Vinuesa', 'vinuesa', 42150, '41.910710', '-2.759834');INSERT INTO MUNICIPIOS VALUES
(6391, 16, 'Vizmanos', 'vizmanos', 42173, '42.023560', '-2.409459');INSERT INTO MUNICIPIOS VALUES
(6392, 16, 'Vozmediano', 'vozmediano', 42107, '41.839448', '-1.855491');INSERT INTO MUNICIPIOS VALUES
(6393, 16, 'Yanguas', 'yanguas', 42172, '42.100376', '-2.336919');INSERT INTO MUNICIPIOS VALUES
(6394, 16, 'Yelo', 'yelo', 42230, '41.209712', '-2.529857');INSERT INTO MUNICIPIOS VALUES
(6396, 20, 'Aiguam˙rcia', 'aiguamurcia', 43815, '41.329857', '1.358751');INSERT INTO MUNICIPIOS VALUES
(6397, 20, 'Albinyana', 'albinyana', 43716, '41.245419', '1.490909');INSERT INTO MUNICIPIOS VALUES
(6398, 20, 'Albiol', 'albiol', 43479, '41.252079', '1.089320');INSERT INTO MUNICIPIOS VALUES
(6399, 20, 'Alcanar', 'alcanar', 43530, '40.542020', '0.481475');INSERT INTO MUNICIPIOS VALUES
(6400, 20, 'Alcover', 'alcover', 43460, '41.262255', '1.171825');INSERT INTO MUNICIPIOS VALUES
(6401, 20, 'Aldea', 'aldea', 43896, '40.741310', '0.610970');INSERT INTO MUNICIPIOS VALUES
(6402, 20, 'Aldover', 'aldover', 43591, '40.880675', '0.498830');INSERT INTO MUNICIPIOS VALUES
(6404, 20, 'Alfara de Carles', 'alfara-de-carles', 43528, '40.874298', '0.399418');INSERT INTO MUNICIPIOS VALUES
(6405, 20, 'Alforja', 'alforja', 43365, '41.212320', '0.977785');INSERT INTO MUNICIPIOS VALUES
(6406, 20, 'AliÛ', 'alio', 43813, '41.294455', '1.306230');INSERT INTO MUNICIPIOS VALUES
(6407, 20, 'Almoster', 'almoster', 43393, '41.197321', '1.112366');INSERT INTO MUNICIPIOS VALUES
(6408, 20, 'Altafulla', 'altafulla', 43893, '41.140450', '1.377385');INSERT INTO MUNICIPIOS VALUES
(6409, 20, 'Ametlla de Mar', 'ametlla-de-mar', 43860, '40.885361', '0.799270');INSERT INTO MUNICIPIOS VALUES
(6410, 20, 'Ampolla', 'ampolla', 43895, '40.812160', '0.710890');INSERT INTO MUNICIPIOS VALUES
(6411, 20, 'Amposta', 'amposta', 43870, '40.713045', '0.579785');INSERT INTO MUNICIPIOS VALUES
(6412, 20, 'ArboÁ', 'arboc', 43720, '41.264870', '1.602850');INSERT INTO MUNICIPIOS VALUES
(6413, 20, 'ArbolÌ', 'arboli', 43365, '41.242186', '0.949625');INSERT INTO MUNICIPIOS VALUES
(6414, 20, 'Argentera', 'argentera', 43773, '41.138390', '0.909260');INSERT INTO MUNICIPIOS VALUES
(6415, 20, 'Arnes', 'arnes', 43597, '40.911720', '0.261040');INSERT INTO MUNICIPIOS VALUES
(6416, 20, 'AscÛ', 'asco', 43791, '41.183780', '0.567085');INSERT INTO MUNICIPIOS VALUES
(6417, 20, 'Banyeres del PenedÈs', 'banyeres-del-penedes', 43711, '41.280215', '1.582655');INSERT INTO MUNICIPIOS VALUES
(6418, 20, 'Barber‡ de la Conca', 'barbera-de-la-conca', 43422, '41.410598', '1.227736');INSERT INTO MUNICIPIOS VALUES
(6419, 20, 'Batea', 'batea', 43786, '41.093486', '0.313197');INSERT INTO MUNICIPIOS VALUES
(6420, 20, 'Bellmunt del Priorat', 'bellmunt-del-priorat', 43738, '41.163350', '0.765550');INSERT INTO MUNICIPIOS VALUES
(6421, 20, 'Bellvei', 'bellvei', 43719, '41.238680', '1.579825');INSERT INTO MUNICIPIOS VALUES
(6422, 20, 'Benifallet', 'benifallet', 43512, '40.974795', '0.517345');INSERT INTO MUNICIPIOS VALUES
(6423, 20, 'Benissanet', 'benissanet', 43747, '41.058490', '0.634535');INSERT INTO MUNICIPIOS VALUES
(6424, 20, 'Bisbal de Falset', 'bisbal-de-falset', 43372, '41.279806', '0.722866');INSERT INTO MUNICIPIOS VALUES
(6425, 20, 'Bisbal del PenedÈs', 'bisbal-del-penedes', 43717, '41.280064', '1.489334');INSERT INTO MUNICIPIOS VALUES
(6426, 20, 'Blancafort', 'blancafort', 43411, '41.439950', '1.157570');INSERT INTO MUNICIPIOS VALUES
(6427, 20, 'Bonastre', 'bonastre', 43884, '41.220887', '1.439905');INSERT INTO MUNICIPIOS VALUES
(6428, 20, 'Borges del Camp', 'borges-del-camp', 43350, '41.171830', '1.021170');INSERT INTO MUNICIPIOS VALUES
(6429, 20, 'Bot', 'bot', 43785, '41.009090', '0.383425');INSERT INTO MUNICIPIOS VALUES
(6430, 20, 'Botarell', 'botarell', 43772, '41.135509', '0.989281');INSERT INTO MUNICIPIOS VALUES
(6431, 20, 'Br‡fim', 'brafim', 43812, '41.268810', '1.341235');INSERT INTO MUNICIPIOS VALUES
(6432, 20, 'CabacÈs', 'cabaces', 43373, '41.245735', '0.730843');INSERT INTO MUNICIPIOS VALUES
(6433, 20, 'Cabra del Camp', 'cabra-del-camp', 43811, '41.395388', '1.275665');INSERT INTO MUNICIPIOS VALUES
(6434, 20, 'Calafell', 'calafell', 43820, '41.197785', '1.568410');INSERT INTO MUNICIPIOS VALUES
(6435, 20, 'Camarles', 'camarles', 43894, '40.771180', '0.672375');INSERT INTO MUNICIPIOS VALUES
(6436, 20, 'Cambrils', 'cambrils', 43850, '41.067270', '1.061110');INSERT INTO MUNICIPIOS VALUES
(6437, 20, 'Capafonts', 'capafonts', 43364, '41.295951', '1.028155');INSERT INTO MUNICIPIOS VALUES
(6438, 20, 'CapÁanes', 'capcanes', 43776, '41.100893', '0.781290');INSERT INTO MUNICIPIOS VALUES
(6439, 20, 'Caseres', 'caseres', 43787, '41.039911', '0.251130');INSERT INTO MUNICIPIOS VALUES
(6440, 20, 'Castellvell del Camp', 'castellvell-del-camp', 43392, '41.180313', '1.099372');INSERT INTO MUNICIPIOS VALUES
(6441, 20, 'Catllar', 'catllar', 43764, '41.175529', '1.327340');INSERT INTO MUNICIPIOS VALUES
(6442, 20, 'Colldejou', 'colldejou', 43310, '41.098913', '0.887745');INSERT INTO MUNICIPIOS VALUES
(6443, 20, 'Conesa', 'conesa', 43427, '41.518595', '1.291155');INSERT INTO MUNICIPIOS VALUES
(6444, 20, 'ConstantÌ', 'constanti', 43120, '41.151320', '1.216285');INSERT INTO MUNICIPIOS VALUES
(6445, 20, 'Corbera d Ebre', 'corbera-debre', 43784, '41.077180', '0.476985');INSERT INTO MUNICIPIOS VALUES
(6446, 20, 'Cornudella de Montsant', 'cornudella-de-montsant', 43360, '41.264698', '0.904790');INSERT INTO MUNICIPIOS VALUES
(6447, 20, 'Creixell', 'creixell', 43839, '41.162960', '1.439695');INSERT INTO MUNICIPIOS VALUES
(6448, 20, 'Cunit', 'cunit', 43881, '41.198375', '1.640420');INSERT INTO MUNICIPIOS VALUES
(6449, 20, 'Deltebre', 'deltebre', 43580, '40.721412', '0.701493');INSERT INTO MUNICIPIOS VALUES
(6450, 20, 'Duesaig', 'duesaig', 43773, '41.146193', '0.932141');INSERT INTO MUNICIPIOS VALUES
(6451, 20, 'Espluga de FrancolÌ', 'espluga-de-francoli', 43440, '41.395061', '1.099270');INSERT INTO MUNICIPIOS VALUES
(6452, 20, 'Falset', 'falset', 43730, '41.144256', '0.820488');INSERT INTO MUNICIPIOS VALUES
(6453, 20, 'Fatarella', 'fatarella', 43781, '41.161461', '0.473350');INSERT INTO MUNICIPIOS VALUES
(6454, 20, 'FebrÛ', 'febro', 43364, '41.277149', '1.004240');INSERT INTO MUNICIPIOS VALUES
(6455, 20, 'Figuera', 'figuera', 43736, '41.215918', '0.730076');INSERT INTO MUNICIPIOS VALUES
(6456, 20, 'Figuerola del Camp', 'figuerola-del-camp', 43811, '41.371525', '1.266765');INSERT INTO MUNICIPIOS VALUES
(6457, 20, 'Flix', 'flix', 43750, '41.228079', '0.543202');INSERT INTO MUNICIPIOS VALUES
(6458, 20, 'ForÈs', 'fores', 43425, '41.494616', '1.238549');INSERT INTO MUNICIPIOS VALUES
(6459, 20, 'Freginals', 'freginals', 43558, '40.669720', '0.519420');INSERT INTO MUNICIPIOS VALUES
(6460, 20, 'Galera', 'galera', 43515, '40.681224', '0.462284');INSERT INTO MUNICIPIOS VALUES
(6461, 20, 'Gandesa', 'gandesa', 43780, '41.054030', '0.438400');INSERT INTO MUNICIPIOS VALUES
(6462, 20, 'Garcia', 'garcia', 43749, '41.136456', '0.650082');INSERT INTO MUNICIPIOS VALUES
(6463, 20, 'Garidells', 'garidells', 43153, '41.207432', '1.247120');INSERT INTO MUNICIPIOS VALUES
(6464, 20, 'Ginestar', 'ginestar', 43748, '41.041983', '0.632361');INSERT INTO MUNICIPIOS VALUES
(6465, 20, 'Godall', 'godall', 43516, '40.653990', '0.469560');INSERT INTO MUNICIPIOS VALUES
(6466, 20, 'Gratallops', 'gratallops', 43737, '41.192355', '0.774910');INSERT INTO MUNICIPIOS VALUES
(6467, 20, 'Guiamets', 'guiamets', 43777, '41.101810', '0.750640');INSERT INTO MUNICIPIOS VALUES
(6468, 20, 'Horta de Sant Joan', 'horta-de-sant-joan', 43596, '40.954385', '0.314890');INSERT INTO MUNICIPIOS VALUES
(6469, 20, 'Lloar', 'lloar', 43737, '41.186729', '0.750332');INSERT INTO MUNICIPIOS VALUES
(6470, 20, 'Llorac', 'llorac', 43427, '41.556610', '1.307520');INSERT INTO MUNICIPIOS VALUES
(6471, 20, 'LlorenÁ del PenedÈs', 'llorenc-del-penedes', 43712, '41.281290', '1.553545');INSERT INTO MUNICIPIOS VALUES
(6472, 20, 'MarÁ‡', 'marca', 43775, '41.126900', '0.801050');INSERT INTO MUNICIPIOS VALUES
(6473, 20, 'Margalef', 'margalef', 43371, '41.284760', '0.755005');INSERT INTO MUNICIPIOS VALUES
(6474, 20, 'Mas de Barberans', 'mas-de-barberans', 43514, '40.735798', '0.374796');INSERT INTO MUNICIPIOS VALUES
(6475, 20, 'Masdenverge', 'masdenverge', 43878, '40.715225', '0.529240');INSERT INTO MUNICIPIOS VALUES
(6476, 20, 'MasllorenÁ', 'masllorenc', 43718, '41.269858', '1.415234');INSERT INTO MUNICIPIOS VALUES
(6477, 20, 'MasÛ', 'maso', 43143, '41.233200', '1.222420');INSERT INTO MUNICIPIOS VALUES
(6478, 20, 'Maspujols', 'maspujols', 43382, '41.182271', '1.047100');INSERT INTO MUNICIPIOS VALUES
(6479, 20, 'Masroig', 'masroig', 43736, '41.126862', '0.732410');INSERT INTO MUNICIPIOS VALUES
(6480, 20, 'Mil‡', 'mila', 43143, '41.249130', '1.205080');INSERT INTO MUNICIPIOS VALUES
(6481, 20, 'Miravet', 'miravet', 43747, '41.041250', '0.599420');INSERT INTO MUNICIPIOS VALUES
(6482, 20, 'Molar', 'molar-tarragona', 43736, '41.164117', '0.705700');INSERT INTO MUNICIPIOS VALUES
(6483, 20, 'Montblanc', 'montblanc', 43400, '41.375340', '1.164330');INSERT INTO MUNICIPIOS VALUES
(6484, 20, 'MontbriÛ del Camp', 'montbrio-del-camp', 43340, '41.121060', '1.004415');INSERT INTO MUNICIPIOS VALUES
(6485, 20, 'Montferri', 'montferri', 43812, '41.265440', '1.365815');INSERT INTO MUNICIPIOS VALUES
(6486, 20, 'Montmell', 'montmell', 43718, '41.317464', '1.454144');INSERT INTO MUNICIPIOS VALUES
(6487, 20, 'Mont-ral', 'mont-ral', 43364, '41.286724', '1.099857');INSERT INTO MUNICIPIOS VALUES
(6488, 20, 'Mont-roig del Camp', 'mont-roig-del-camp', 43300, '41.085275', '0.959690');INSERT INTO MUNICIPIOS VALUES
(6489, 20, 'MÛra d Ebre', 'mora-debre', 43740, '41.088425', '0.639275');INSERT INTO MUNICIPIOS VALUES
(6490, 20, 'MÛra la Nova', 'mora-la-nova', 43770, '41.102585', '0.652430');INSERT INTO MUNICIPIOS VALUES
(6491, 20, 'Morell', 'morell', 43760, '41.191799', '1.206600');INSERT INTO MUNICIPIOS VALUES
(6492, 20, 'Morera de Montsant', 'morera-de-montsant', 43361, '41.263960', '0.841580');INSERT INTO MUNICIPIOS VALUES
(6493, 20, 'Nou de Gai‡', 'nou-de-gaia', 43763, '41.182930', '1.375785');INSERT INTO MUNICIPIOS VALUES
(6494, 20, 'Nulles', 'nulles', 43887, '41.249180', '1.295160');INSERT INTO MUNICIPIOS VALUES
(6495, 20, 'Pallaresos', 'pallaresos', 43151, '41.175388', '1.275350');INSERT INTO MUNICIPIOS VALUES
(6496, 20, 'Palma d Ebre', 'palma-debre', 43370, '41.284837', '0.665359');INSERT INTO MUNICIPIOS VALUES
(6497, 20, 'Passanant i Belltall', 'passanant-i-belltall', 43425, '41.531924', '1.196849');INSERT INTO MUNICIPIOS VALUES
(6498, 20, 'Pa¸ls', 'pauls', 43593, '40.922139', '0.402203');INSERT INTO MUNICIPIOS VALUES
(6499, 20, 'Perafort', 'perafort', 43152, '41.191985', '1.255656');INSERT INTO MUNICIPIOS VALUES
(6500, 20, 'PerellÛ', 'perello', 43519, '40.876381', '0.713270');INSERT INTO MUNICIPIOS VALUES
(6501, 20, 'Piles', 'piles', 43428, '41.504271', '1.342564');INSERT INTO MUNICIPIOS VALUES
(6502, 20, 'Pinell de Brai', 'pinell-de-brai', 43594, '41.017261', '0.515212');INSERT INTO MUNICIPIOS VALUES
(6503, 20, 'Pira', 'pira', 43423, '41.424331', '1.202537');INSERT INTO MUNICIPIOS VALUES
(6504, 20, 'Pla de Santa Maria', 'pla-de-santa-maria', 43810, '41.359428', '1.292890');INSERT INTO MUNICIPIOS VALUES
(6505, 20, 'Pobla de Mafumet', 'pobla-de-mafumet', 43140, '41.188881', '1.209220');INSERT INTO MUNICIPIOS VALUES
(6506, 20, 'Pobla de Massaluca', 'pobla-de-massaluca', 43783, '41.180727', '0.354072');INSERT INTO MUNICIPIOS VALUES
(6507, 20, 'Pobla de MontornÈs', 'pobla-de-montornes', 43761, '41.178669', '1.415410');INSERT INTO MUNICIPIOS VALUES
(6508, 20, 'Poboleda', 'poboleda', 43376, '41.234755', '0.845265');INSERT INTO MUNICIPIOS VALUES
(6509, 20, 'Pont d Armentera', 'pont-darmentera', 43817, '41.384666', '1.364021');INSERT INTO MUNICIPIOS VALUES
(6510, 20, 'Pontils', 'pontils', 43421, '41.477399', '1.387711');INSERT INTO MUNICIPIOS VALUES
(6511, 20, 'Porrera', 'porrera', 43739, '41.186775', '0.855830');INSERT INTO MUNICIPIOS VALUES
(6512, 20, 'Pradell de la Teixeta', 'pradell-de-la-teixeta', 43774, '41.156945', '0.875825');INSERT INTO MUNICIPIOS VALUES
(6513, 20, 'Prades', 'prades', 43364, '41.308895', '0.987895');INSERT INTO MUNICIPIOS VALUES
(6514, 20, 'Prat de Comte', 'prat-de-comte', 43595, '40.982822', '0.405121');INSERT INTO MUNICIPIOS VALUES
(6515, 20, 'Pratdip', 'pratdip', 43320, '41.051215', '0.871707');INSERT INTO MUNICIPIOS VALUES
(6516, 20, 'Puigpelat', 'puigpelat', 43812, '41.278141', '1.297304');INSERT INTO MUNICIPIOS VALUES
(6517, 20, 'Querol', 'querol', 43816, '41.422690', '1.397145');INSERT INTO MUNICIPIOS VALUES
(6518, 20, 'Rasquera', 'rasquera', 43513, '41.004594', '0.600771');INSERT INTO MUNICIPIOS VALUES
(6519, 20, 'Renau', 'renau', 43886, '41.224690', '1.311295');INSERT INTO MUNICIPIOS VALUES
(6520, 20, 'Reus', 'reus', 43201, '41.151990', '1.107930');INSERT INTO MUNICIPIOS VALUES
(6521, 20, 'Riba', 'riba', 43450, '41.318367', '1.180515');INSERT INTO MUNICIPIOS VALUES
(6522, 20, 'Riba-roja d Ebre', 'riba-roja-debre', 43790, '41.250300', '0.486560');INSERT INTO MUNICIPIOS VALUES
(6523, 20, 'Riera de Gai‡', 'riera-de-gaia', 43762, '41.167333', '1.361392');INSERT INTO MUNICIPIOS VALUES
(6524, 20, 'Riudecanyes', 'riudecanyes', 43771, '41.129490', '0.960325');INSERT INTO MUNICIPIOS VALUES
(6525, 20, 'Riudecols', 'riudecols', 43390, '41.167665', '0.975915');INSERT INTO MUNICIPIOS VALUES
(6526, 20, 'Riudoms', 'riudoms', 43330, '41.138271', '1.054191');INSERT INTO MUNICIPIOS VALUES
(6527, 20, 'Rocafort de Queralt', 'rocafort-de-queralt', 43426, '41.477960', '1.281450');INSERT INTO MUNICIPIOS VALUES
(6528, 20, 'Roda de Bar‡', 'roda-de-bara', 43883, '41.187927', '1.460064');INSERT INTO MUNICIPIOS VALUES
(6529, 20, 'Rodony‡', 'rodonya', 43812, '41.279805', '1.399150');INSERT INTO MUNICIPIOS VALUES
(6530, 20, 'Roquetes', 'roquetes', 43520, '40.824985', '0.500245');INSERT INTO MUNICIPIOS VALUES
(6531, 20, 'Rourell', 'rourell', 43142, '41.223598', '1.217620');INSERT INTO MUNICIPIOS VALUES
(6532, 20, 'SalomÛ', 'salomo', 43885, '41.229060', '1.374805');INSERT INTO MUNICIPIOS VALUES
(6533, 20, 'Salou', 'salou', 43840, '41.074970', '1.136950');INSERT INTO MUNICIPIOS VALUES
(6534, 20, 'Sant Carles de la R‡pita', 'sant-carles-de-la-rapita', 43540, '40.620645', '0.593115');INSERT INTO MUNICIPIOS VALUES
(6535, 20, 'Sant Jaume dels Domenys', 'sant-jaume-dels-domenys', 43713, '41.299495', '1.559880');INSERT INTO MUNICIPIOS VALUES
(6536, 20, 'Sant Jaume d Enveja', 'sant-jaume-denveja', 43877, '40.704060', '0.717155');INSERT INTO MUNICIPIOS VALUES
(6537, 20, 'Santa B‡rbara', 'santa-barbara', 43570, '40.714150', '0.490555');INSERT INTO MUNICIPIOS VALUES
(6538, 20, 'Santa Coloma de Queralt', 'santa-coloma-de-queralt', 43420, '41.532137', '1.381840');INSERT INTO MUNICIPIOS VALUES
(6539, 20, 'Santa Oliva', 'santa-oliva', 43710, '41.251535', '1.549645');INSERT INTO MUNICIPIOS VALUES
(6540, 20, 'Sarral', 'sarral', 43424, '41.445780', '1.246430');INSERT INTO MUNICIPIOS VALUES
(6541, 20, 'Savall‡ del Comtat', 'savalla-del-comtat', 43427, '41.543086', '1.298895');INSERT INTO MUNICIPIOS VALUES
(6542, 20, 'Secuita', 'secuita', 43765, '41.204167', '1.281624');INSERT INTO MUNICIPIOS VALUES
(6543, 20, 'Selva del Camp', 'selva-del-camp', 43470, '41.214480', '1.140975');INSERT INTO MUNICIPIOS VALUES
(6544, 20, 'Senan', 'senan', 43449, '41.470575', '1.084455');INSERT INTO MUNICIPIOS VALUES
(6545, 20, 'SÈnia', 'senia', 43560, '40.633366', '0.283928');INSERT INTO MUNICIPIOS VALUES
(6546, 20, 'Solivella', 'solivella', 43412, '41.455650', '1.178560');INSERT INTO MUNICIPIOS VALUES
(6547, 20, 'Tarragona', 'tarragona', 43001, '41.116930', '1.254105');INSERT INTO MUNICIPIOS VALUES
(6548, 20, 'Tivenys', 'tivenys', 43511, '40.907790', '0.511325');INSERT INTO MUNICIPIOS VALUES
(6549, 20, 'Tivissa', 'tivissa', 43746, '41.043647', '0.734941');INSERT INTO MUNICIPIOS VALUES
(6550, 20, 'Torre de Fontaubella', 'torre-de-fontaubella', 43774, '41.125221', '0.865070');INSERT INTO MUNICIPIOS VALUES
(6551, 20, 'Torre de l Espanyol', 'torre-de-lespanyol', 43792, '41.191685', '0.623230');INSERT INTO MUNICIPIOS VALUES
(6552, 20, 'Torredembarra', 'torredembarra', 43830, '41.143670', '1.395425');INSERT INTO MUNICIPIOS VALUES
(6553, 20, 'Torroja del Priorat', 'torroja-del-priorat', 43737, '41.213481', '0.812408');INSERT INTO MUNICIPIOS VALUES
(6554, 20, 'Tortosa', 'tortosa', 43500, '40.812762', '0.520911');INSERT INTO MUNICIPIOS VALUES
(6555, 20, 'Ulldecona', 'ulldecona', 43550, '40.595700', '0.445855');INSERT INTO MUNICIPIOS VALUES
(6556, 20, 'Ulldemolins', 'ulldemolins', 43363, '41.322275', '0.878645');INSERT INTO MUNICIPIOS VALUES
(6557, 20, 'Vallclara', 'vallclara', 43439, '41.377829', '0.979942');INSERT INTO MUNICIPIOS VALUES
(6558, 20, 'Vallfogona de Riucorb', 'vallfogona-de-riucorb', 43427, '41.563330', '1.236235');INSERT INTO MUNICIPIOS VALUES
(6559, 20, 'Vallmoll', 'vallmoll', 43144, '41.243815', '1.249235');INSERT INTO MUNICIPIOS VALUES
(6560, 20, 'Valls', 'valls', 43800, '41.287150', '1.252530');INSERT INTO MUNICIPIOS VALUES
(6561, 20, 'VandellÛs i l Hospitalet de l Infant', 'vandellos-i-lhospitalet-de-linfant', 43891, '40.991288', '0.921176');INSERT INTO MUNICIPIOS VALUES
(6562, 20, 'Vendrell', 'vendrell', 43700, '41.221642', '1.538170');INSERT INTO MUNICIPIOS VALUES
(6563, 20, 'Vespella de Gai‡', 'vespella-de-gaia', 43763, '41.205568', '1.359761');INSERT INTO MUNICIPIOS VALUES
(6564, 20, 'Vilabella', 'vilabella', 43886, '41.247200', '1.329730');INSERT INTO MUNICIPIOS VALUES
(6565, 20, 'Vilalba dels Arcs', 'vilalba-dels-arcs', 43782, '41.119952', '0.408634');INSERT INTO MUNICIPIOS VALUES
(6566, 20, 'Vilallonga del Camp', 'vilallonga-del-camp', 43141, '41.208080', '1.206685');INSERT INTO MUNICIPIOS VALUES
(6567, 20, 'Vilanova de Prades', 'vilanova-de-prades', 43439, '41.348001', '0.956755');INSERT INTO MUNICIPIOS VALUES
(6568, 20, 'Vilanova d Escornalbou', 'vilanova-descornalbou', 43311, '41.113130', '0.938055');INSERT INTO MUNICIPIOS VALUES
(6569, 20, 'Vilaplana', 'vilaplana', 43380, '41.226275', '1.035210');INSERT INTO MUNICIPIOS VALUES
(6570, 20, 'Vila-rodona', 'vila-rodona', 43814, '41.309545', '1.358485');INSERT INTO MUNICIPIOS VALUES
(6571, 20, 'Vila-seca', 'vila-seca', 43480, '41.108025', '1.144190');INSERT INTO MUNICIPIOS VALUES
(6572, 20, 'Vilaverd', 'vilaverd', 43490, '41.334073', '1.176653');INSERT INTO MUNICIPIOS VALUES
(6573, 20, 'Vilella Alta', 'vilella-alta', 43375, '41.225601', '0.780430');INSERT INTO MUNICIPIOS VALUES
(6574, 20, 'Vilella Baixa', 'vilella-baixa', 43374, '41.220584', '0.763477');INSERT INTO MUNICIPIOS VALUES
(6575, 20, 'VimbodÌ i Poblet', 'vimbodi-i-poblet', 43430, '41.400360', '1.050465');INSERT INTO MUNICIPIOS VALUES
(6576, 20, 'Vinebre', 'vinebre', 43792, '41.184916', '0.592572');INSERT INTO MUNICIPIOS VALUES
(6577, 20, 'Vinyols i els Arcs', 'vinyols-i-els-arcs', 43391, '41.113560', '1.042050');INSERT INTO MUNICIPIOS VALUES
(6578, 20, 'Xerta', 'xerta', 43592, '40.909208', '0.489874');INSERT INTO MUNICIPIOS VALUES
(6580, 28, 'Ababuj', 'ababuj', 44155, '40.548825', '-0.808574');INSERT INTO MUNICIPIOS VALUES
(6581, 28, 'Abejuela', 'abejuela', 44422, '39.909696', '-0.893009');INSERT INTO MUNICIPIOS VALUES
(6582, 28, 'AguatÛn', 'aguaton', 44382, '40.670915', '-1.234646');INSERT INTO MUNICIPIOS VALUES
(6583, 28, 'Aguaviva', 'aguaviva', 44566, '40.823400', '-0.197004');INSERT INTO MUNICIPIOS VALUES
(6584, 28, 'Aguilar del Alfambra', 'aguilar-del-alfambra', 44156, '40.589370', '-0.793253');INSERT INTO MUNICIPIOS VALUES
(6585, 28, 'AlacÛn', 'alacon', 44549, '41.021743', '-0.698858');INSERT INTO MUNICIPIOS VALUES
(6586, 28, 'Alba', 'alba', 44395, '40.618376', '-1.344747');INSERT INTO MUNICIPIOS VALUES
(6587, 28, 'Albalate del Arzobispo', 'albalate-del-arzobispo', 44540, '41.123446', '-0.509474');INSERT INTO MUNICIPIOS VALUES
(6588, 28, 'AlbarracÌn', 'albarracin', 44100, '40.408397', '-1.439240');INSERT INTO MUNICIPIOS VALUES
(6589, 28, 'Albentosa', 'albentosa', 44477, '40.102715', '-0.768616');INSERT INTO MUNICIPIOS VALUES
(6590, 28, 'Alcaine', 'alcaine', 44792, '40.954067', '-0.706594');INSERT INTO MUNICIPIOS VALUES
(6591, 28, 'Alcal· de la Selva', 'alcala-de-la-selva', 44432, '40.370885', '-0.718061');INSERT INTO MUNICIPIOS VALUES
(6592, 28, 'AlcaÒiz', 'alcaniz', 44600, '41.052285', '-0.133174');INSERT INTO MUNICIPIOS VALUES
(6593, 28, 'Alcorisa', 'alcorisa', 44550, '40.897341', '-0.380297');INSERT INTO MUNICIPIOS VALUES
(6594, 28, 'Alfambra', 'alfambra', 44160, '40.545569', '-1.031445');INSERT INTO MUNICIPIOS VALUES
(6595, 28, 'Aliaga', 'aliaga', 44150, '40.674880', '-0.701819');INSERT INTO MUNICIPIOS VALUES
(6596, 28, 'Allepuz', 'allepuz', 44145, '40.491660', '-0.730419');INSERT INTO MUNICIPIOS VALUES
(6597, 28, 'Alloza', 'alloza', 44509, '40.970905', '-0.530954');INSERT INTO MUNICIPIOS VALUES
(6598, 28, 'Allueva', 'allueva', 44492, '40.985225', '-1.043444');INSERT INTO MUNICIPIOS VALUES
(6599, 28, 'Almohaja', 'almohaja', 44369, '40.605089', '-1.437251');INSERT INTO MUNICIPIOS VALUES
(6600, 28, 'Alobras', 'alobras', 44134, '40.180999', '-1.387962');INSERT INTO MUNICIPIOS VALUES
(6601, 28, 'AlpeÒÈs', 'alpenes', 44721, '40.799445', '-1.066769');INSERT INTO MUNICIPIOS VALUES
(6602, 28, 'AnadÛn', 'anadon', 44212, '40.981875', '-0.983449');INSERT INTO MUNICIPIOS VALUES
(6603, 28, 'Andorra', 'andorra', 44500, '40.976825', '-0.446909');INSERT INTO MUNICIPIOS VALUES
(6604, 28, 'Arcos de las Salinas', 'arcos-de-las-salinas', 44421, '39.991076', '-1.041986');INSERT INTO MUNICIPIOS VALUES
(6605, 28, 'Arens de LledÛ', 'arens-de-lledo', 44622, '40.993056', '0.269949');INSERT INTO MUNICIPIOS VALUES
(6606, 28, 'Argente', 'argente', 44165, '40.691183', '-1.163615');INSERT INTO MUNICIPIOS VALUES
(6607, 28, 'AriÒo', 'arino', 44547, '41.030032', '-0.591888');INSERT INTO MUNICIPIOS VALUES
(6608, 28, 'Azaila', 'azaila', 44590, '41.289163', '-0.493357');INSERT INTO MUNICIPIOS VALUES
(6609, 28, 'B·denas', 'badenas', 44491, '41.091943', '-1.121067');INSERT INTO MUNICIPIOS VALUES
(6610, 28, 'B·guena', 'baguena', 44320, '41.045907', '-1.363199');INSERT INTO MUNICIPIOS VALUES
(6611, 28, 'BaÛn', 'banon', 44357, '40.836610', '-1.190434');INSERT INTO MUNICIPIOS VALUES
(6612, 28, 'Barrachina', 'barrachina', 44220, '40.897520', '-1.139789');INSERT INTO MUNICIPIOS VALUES
(6613, 28, 'Bea', 'bea', 44492, '41.035550', '-1.146120');INSERT INTO MUNICIPIOS VALUES
(6614, 28, 'Beceite', 'beceite', 44588, '40.834475', '0.179449');INSERT INTO MUNICIPIOS VALUES
(6615, 28, 'Bello', 'bello', 44232, '40.923911', '-1.497542');INSERT INTO MUNICIPIOS VALUES
(6616, 28, 'Belmonte de San JosÈ', 'belmonte-de-san-jose', 44642, '40.875757', '-0.065064');INSERT INTO MUNICIPIOS VALUES
(6617, 28, 'Berge', 'berge', 44556, '40.857760', '-0.425979');INSERT INTO MUNICIPIOS VALUES
(6618, 28, 'Bezas', 'bezas', 44121, '40.329378', '-1.323452');INSERT INTO MUNICIPIOS VALUES
(6619, 28, 'Blancas', 'blancas', 44314, '40.813663', '-1.482339');INSERT INTO MUNICIPIOS VALUES
(6620, 28, 'Blesa', 'blesa', 44790, '41.051638', '-0.884056');INSERT INTO MUNICIPIOS VALUES
(6621, 28, 'BordÛn', 'bordon', 44563, '40.687619', '-0.322208');INSERT INTO MUNICIPIOS VALUES
(6622, 28, 'Bronchales', 'bronchales', 44367, '40.509248', '-1.590056');INSERT INTO MUNICIPIOS VALUES
(6623, 28, 'BueÒa', 'buena', 44394, '40.708637', '-1.267161');INSERT INTO MUNICIPIOS VALUES
(6624, 28, 'Burb·guena', 'burbaguena', 44330, '41.016385', '-1.337113');INSERT INTO MUNICIPIOS VALUES
(6625, 28, 'Cabra de Mora', 'cabra-de-mora', 44409, '40.317641', '-0.807152');INSERT INTO MUNICIPIOS VALUES
(6626, 28, 'Calaceite', 'calaceite', 44610, '41.017421', '0.188484');INSERT INTO MUNICIPIOS VALUES
(6627, 28, 'Calamocha', 'calamocha', 44200, '40.920631', '-1.300850');INSERT INTO MUNICIPIOS VALUES
(6628, 28, 'Calanda', 'calanda', 44570, '40.941770', '-0.233459');INSERT INTO MUNICIPIOS VALUES
(6629, 28, 'Calomarde', 'calomarde', 44126, '40.372787', '-1.574950');INSERT INTO MUNICIPIOS VALUES
(6630, 28, 'CamaÒas', 'camanas', 44167, '40.642631', '-1.137257');INSERT INTO MUNICIPIOS VALUES
(6631, 28, 'Camarena de la Sierra', 'camarena-de-la-sierra', 44459, '40.147963', '-1.040525');INSERT INTO MUNICIPIOS VALUES
(6632, 28, 'Camarillas', 'camarillas', 44155, '40.612470', '-0.754023');INSERT INTO MUNICIPIOS VALUES
(6633, 28, 'Caminreal', 'caminreal', 44350, '40.838246', '-1.325355');INSERT INTO MUNICIPIOS VALUES
(6634, 28, 'Cantavieja', 'cantavieja', 44140, '40.528137', '-0.405765');INSERT INTO MUNICIPIOS VALUES
(6635, 28, 'CaÒada de Benatanduz', 'canada-de-benatanduz', 44140, '40.581188', '-0.534382');INSERT INTO MUNICIPIOS VALUES
(6636, 28, 'CaÒada de Verich', 'canada-de-verich', 44643, '40.869067', '-0.096817');INSERT INTO MUNICIPIOS VALUES
(6637, 28, 'CaÒada Vellida', 'canada-vellida', 44168, '40.707564', '-0.913410');INSERT INTO MUNICIPIOS VALUES
(6638, 28, 'CaÒizar del Olivar', 'canizar-del-olivar', 44707, '40.816554', '-0.645447');INSERT INTO MUNICIPIOS VALUES
(6639, 28, 'Cascante del RÌo', 'cascante-del-rio', 44191, '40.196528', '-1.114855');INSERT INTO MUNICIPIOS VALUES
(6640, 28, 'CastejÛn de Tornos', 'castejon-de-tornos', 44231, '40.997893', '-1.425133');INSERT INTO MUNICIPIOS VALUES
(6641, 28, 'Castel de Cabra', 'castel-de-cabra', 44706, '40.801969', '-0.697246');INSERT INTO MUNICIPIOS VALUES
(6642, 28, 'Castellar', 'castellar', 44409, '40.317608', '-0.806422');INSERT INTO MUNICIPIOS VALUES
(6643, 28, 'Castellote', 'castellote', 44560, '40.800637', '-0.320020');INSERT INTO MUNICIPIOS VALUES
(6644, 28, 'Castelnou', 'castelnou', 44592, '41.228685', '-0.365210');INSERT INTO MUNICIPIOS VALUES
(6645, 28, 'Castelser·s', 'castelseras', 44630, '40.981016', '-0.147886');INSERT INTO MUNICIPIOS VALUES
(6646, 28, 'Cedrillas', 'cedrillas', 44147, '40.436610', '-0.851440');INSERT INTO MUNICIPIOS VALUES
(6647, 28, 'Celadas', 'celadas', 44194, '40.475975', '-1.149960');INSERT INTO MUNICIPIOS VALUES
(6648, 28, 'Cella', 'cella', 44370, '40.455389', '-1.286860');INSERT INTO MUNICIPIOS VALUES
(6649, 28, 'Cerollera', 'cerollera', 44651, '40.840194', '-0.055017');INSERT INTO MUNICIPIOS VALUES
(6650, 28, 'CodoÒera', 'codonera', 44640, '40.933828', '-0.085788');INSERT INTO MUNICIPIOS VALUES
(6651, 28, 'Corbal·n', 'corbalan', 44193, '40.404363', '-0.983748');INSERT INTO MUNICIPIOS VALUES
(6652, 28, 'Cortes de AragÛn', 'cortes-de-aragon', 44791, '40.974471', '-0.835476');INSERT INTO MUNICIPIOS VALUES
(6653, 28, 'Cosa', 'cosa', 44358, '40.834350', '-1.136055');INSERT INTO MUNICIPIOS VALUES
(6654, 28, 'Cretas', 'cretas', 44623, '40.928964', '0.212088');INSERT INTO MUNICIPIOS VALUES
(6655, 28, 'CrivillÈn', 'crivillen', 44557, '40.883426', '-0.575280');INSERT INTO MUNICIPIOS VALUES
(6656, 28, 'Cuba', 'cuba', 44141, '40.587820', '-0.340748');INSERT INTO MUNICIPIOS VALUES
(6657, 28, 'Cubla', 'cubla', 44191, '40.211605', '-1.079192');INSERT INTO MUNICIPIOS VALUES
(6658, 28, 'CucalÛn', 'cucalon', 44491, '41.086096', '-1.213732');INSERT INTO MUNICIPIOS VALUES
(6659, 28, 'El Cuervo', 'elcuervo', 33650, '40.151079', '-1.325011');INSERT INTO MUNICIPIOS VALUES
(6660, 28, 'Cuevas de AlmudÈn', 'cuevas-de-almuden', 44169, '40.715241', '-0.830755');INSERT INTO MUNICIPIOS VALUES
(6661, 28, 'Cuevas Labradas', 'cuevas-labradas', 44162, '40.453723', '-1.052456');INSERT INTO MUNICIPIOS VALUES
(6662, 28, 'Ejulve', 'ejulve', 44559, '40.775066', '-0.554509');INSERT INTO MUNICIPIOS VALUES
(6663, 28, 'Escorihuela', 'escorihuela', 44161, '40.545977', '-0.972247');INSERT INTO MUNICIPIOS VALUES
(6664, 28, 'Escucha', 'escucha', 44770, '40.795602', '-0.809641');INSERT INTO MUNICIPIOS VALUES
(6665, 28, 'Estercuel', 'estercuel', 44558, '40.855711', '-0.631371');INSERT INTO MUNICIPIOS VALUES
(6666, 28, 'Ferreruela de Huerva', 'ferreruela-de-huerva', 44490, '41.063838', '-1.232185');INSERT INTO MUNICIPIOS VALUES
(6667, 28, 'FonfrÌa', 'fonfria', 44492, '40.995820', '-1.084471');INSERT INTO MUNICIPIOS VALUES
(6668, 28, 'Formiche Alto', 'formiche-alto', 44440, '40.325526', '-0.893755');INSERT INTO MUNICIPIOS VALUES
(6669, 28, 'FÛrnoles', 'fornoles', 44650, '40.894132', '-0.003819');INSERT INTO MUNICIPIOS VALUES
(6670, 28, 'Fortanete', 'fortanete', 44143, '40.505756', '-0.522881');INSERT INTO MUNICIPIOS VALUES
(6671, 28, 'Foz-Calanda', 'foz-calanda', 44579, '40.923582', '-0.267277');INSERT INTO MUNICIPIOS VALUES
(6672, 28, 'Fresneda', 'fresneda', 44596, '40.928543', '0.075488');INSERT INTO MUNICIPIOS VALUES
(6673, 28, 'FrÌas de AlbarracÌn', 'frias-de-albarracin', 44126, '40.337860', '-1.614432');INSERT INTO MUNICIPIOS VALUES
(6674, 28, 'Fuenferrada', 'fuenferrada', 44741, '40.868889', '-1.010656');INSERT INTO MUNICIPIOS VALUES
(6675, 28, 'Fuentes Calientes', 'fuentes-calientes', 44711, '40.701805', '-0.978684');INSERT INTO MUNICIPIOS VALUES
(6676, 28, 'Fuentes Claras', 'fuentes-claras', 44340, '40.864215', '-1.323080');INSERT INTO MUNICIPIOS VALUES
(6677, 28, 'Fuentes de Rubielos', 'fuentes-de-rubielos', 44415, '40.169675', '-0.618925');INSERT INTO MUNICIPIOS VALUES
(6678, 28, 'Fuentespalda', 'fuentespalda', 44587, '40.806436', '0.062141');INSERT INTO MUNICIPIOS VALUES
(6679, 28, 'Galve', 'galve', 44168, '40.655671', '-0.880709');INSERT INTO MUNICIPIOS VALUES
(6680, 28, 'Gargallo', 'gargallo', 44558, '40.836070', '-0.585194');INSERT INTO MUNICIPIOS VALUES
(6681, 28, 'Gea de AlbarracÌn', 'gea-de-albarracin', 44110, '40.411323', '-1.347713');INSERT INTO MUNICIPIOS VALUES
(6682, 28, 'Ginebrosa', 'ginebrosa', 44643, '40.870998', '-0.133638');INSERT INTO MUNICIPIOS VALUES
(6683, 28, 'Griegos', 'griegos', 44114, '40.426712', '-1.710649');INSERT INTO MUNICIPIOS VALUES
(6684, 28, 'Guadalaviar', 'guadalaviar', 44115, '40.387596', '-1.715755');INSERT INTO MUNICIPIOS VALUES
(6685, 28, 'G˙dar', 'gudar', 44433, '40.440856', '-0.720162');INSERT INTO MUNICIPIOS VALUES
(6686, 28, 'HÌjar', 'hijar', 44530, '41.176021', '-0.450954');INSERT INTO MUNICIPIOS VALUES
(6687, 28, 'Hinojosa de Jarque', 'hinojosa-de-jarque', 44157, '40.691784', '-0.786123');INSERT INTO MUNICIPIOS VALUES
(6688, 28, 'Hoz de la Vieja', 'hoz-de-la-vieja', 44791, '40.923938', '-0.843544');INSERT INTO MUNICIPIOS VALUES
(6689, 28, 'Huesa del Com˙n', 'huesa-del-comun', 44213, '41.009520', '-0.920062');INSERT INTO MUNICIPIOS VALUES
(6690, 28, 'Iglesuela del Cid', 'iglesuela-del-cid', 44142, '40.481671', '-0.318904');INSERT INTO MUNICIPIOS VALUES
(6691, 28, 'Jabaloyas', 'jabaloyas', 44122, '40.240570', '-1.407666');INSERT INTO MUNICIPIOS VALUES
(6692, 28, 'Jarque de la Val', 'jarque-de-la-val', 44169, '40.703757', '-0.800800');INSERT INTO MUNICIPIOS VALUES
(6693, 28, 'Jatiel', 'jatiel', 44592, '41.218937', '-0.381045');INSERT INTO MUNICIPIOS VALUES
(6694, 28, 'Jorcas', 'jorcas', 44156, '40.543564', '-0.753078');INSERT INTO MUNICIPIOS VALUES
(6695, 28, 'Josa', 'josa', 44792, '40.955870', '-0.781403');INSERT INTO MUNICIPIOS VALUES
(6696, 28, 'Lagueruela', 'lagueruela', 44492, '41.042414', '-1.192746');INSERT INTO MUNICIPIOS VALUES
(6697, 28, 'Lanzuela', 'lanzuela', 44491, '41.097836', '-1.204247');INSERT INTO MUNICIPIOS VALUES
(6698, 28, 'Libros', 'libros', 44132, '40.162165', '-1.234846');INSERT INTO MUNICIPIOS VALUES
(6699, 28, 'LidÛn', 'lidon', 44164, '40.716200', '-1.113396');INSERT INTO MUNICIPIOS VALUES
(6700, 28, 'Linares de Mora', 'linares-de-mora', 44412, '40.324757', '-0.575066');INSERT INTO MUNICIPIOS VALUES
(6701, 28, 'LledÛ', 'lledo', 44624, '40.955125', '0.276976');INSERT INTO MUNICIPIOS VALUES
(6702, 28, 'Loscos', 'loscos', 44493, '41.081405', '-1.045461');INSERT INTO MUNICIPIOS VALUES
(6703, 28, 'Maicas', 'maicas', 44791, '40.966143', '-0.889978');INSERT INTO MUNICIPIOS VALUES
(6704, 28, 'Manzanera', 'manzanera', 44420, '40.057660', '-0.830026');INSERT INTO MUNICIPIOS VALUES
(6705, 28, 'MartÌn del RÌo', 'martin-del-rio', 44750, '40.844512', '-0.895643');INSERT INTO MUNICIPIOS VALUES
(6706, 28, 'Mas de las Matas', 'mas-de-las-matas', 44564, '40.834155', '-0.241613');INSERT INTO MUNICIPIOS VALUES
(6707, 28, 'Mata de los Olmos', 'mata-de-los-olmos', 44557, '40.865416', '-0.520606');INSERT INTO MUNICIPIOS VALUES
(6708, 28, 'MazaleÛn', 'mazaleon', 44621, '41.049826', '0.104542');INSERT INTO MUNICIPIOS VALUES
(6709, 28, 'Mezquita de Jarque', 'mezquita-de-jarque', 44169, '40.722331', '-0.868392');INSERT INTO MUNICIPIOS VALUES
(6710, 28, 'Mirambel', 'mirambel', 44141, '40.588211', '-0.345039');INSERT INTO MUNICIPIOS VALUES
(6711, 28, 'Miravete de la Sierra', 'miravete-de-la-sierra', 44159, '40.577830', '-0.693898');INSERT INTO MUNICIPIOS VALUES
(6712, 28, 'Molinos', 'losmolinos', 44556, '40.819834', '-0.449924');INSERT INTO MUNICIPIOS VALUES
(6713, 28, 'Monforte de Moyuela', 'monforte-de-moyuela', 44493, '41.056759', '-1.014712');INSERT INTO MUNICIPIOS VALUES
(6714, 28, 'Monreal del Campo', 'monreal-del-campo', 44300, '40.790663', '-1.354194');INSERT INTO MUNICIPIOS VALUES
(6715, 28, 'Monroyo', 'monroyo', 44652, '40.787540', '-0.031747');INSERT INTO MUNICIPIOS VALUES
(6716, 28, 'Montalb·n', 'montalban', 44700, '40.835701', '-0.798622');INSERT INTO MUNICIPIOS VALUES
(6717, 28, 'Monteagudo del Castillo', 'monteagudo-del-castillo', 44146, '40.460769', '-0.818675');INSERT INTO MUNICIPIOS VALUES
(6718, 28, 'Monterde de AlbarracÌn', 'monterde-de-albarracin', 44368, '40.494987', '-1.494226');INSERT INTO MUNICIPIOS VALUES
(6719, 28, 'Mora de Rubielos', 'mora-de-rubielos', 44424, '40.122562', '-0.782604');INSERT INTO MUNICIPIOS VALUES
(6720, 28, 'MoscardÛn', 'moscardon', 44124, '40.333910', '-1.537142');INSERT INTO MUNICIPIOS VALUES
(6721, 28, 'Mosqueruela', 'mosqueruela', 44410, '40.360292', '-0.447510');INSERT INTO MUNICIPIOS VALUES
(6722, 28, 'Muniesa', 'muniesa', 44780, '41.033528', '-0.812302');INSERT INTO MUNICIPIOS VALUES
(6723, 28, 'Noguera de AlbarracÌn', 'noguera-de-albarracin', 44113, '40.461438', '-1.595936');INSERT INTO MUNICIPIOS VALUES
(6724, 28, 'Nogueras', 'nogueras', 44497, '41.134718', '-1.066661');INSERT INTO MUNICIPIOS VALUES
(6725, 28, 'Nogueruelas', 'nogueruelas', 44414, '40.235894', '-0.637872');INSERT INTO MUNICIPIOS VALUES
(6726, 28, 'ObÛn', 'obon', 44792, '40.903576', '-0.724154');INSERT INTO MUNICIPIOS VALUES
(6727, 28, 'OdÛn', 'odon', 44233, '40.888065', '-1.565809');INSERT INTO MUNICIPIOS VALUES
(6728, 28, 'Ojos Negros', 'ojos-negros', 44313, '40.733178', '-1.502938');INSERT INTO MUNICIPIOS VALUES
(6729, 28, 'Olba', 'olba', 44479, '40.132851', '-0.625684');INSERT INTO MUNICIPIOS VALUES
(6730, 28, 'Oliete', 'oliete', 44548, '40.998436', '-0.672784');INSERT INTO MUNICIPIOS VALUES
(6731, 28, 'Olmos', 'olmos', 44557, '40.873752', '-0.489450');INSERT INTO MUNICIPIOS VALUES
(6732, 28, 'Orihuela del Tremedal', 'orihuela-del-tremedal', 44366, '40.546255', '-1.653121');INSERT INTO MUNICIPIOS VALUES
(6733, 28, 'Orrios', 'orrios', 44161, '40.585433', '-0.991859');INSERT INTO MUNICIPIOS VALUES
(6734, 28, 'Palomar de Arroyos', 'palomar-de-arroyos', 44708, '40.781939', '-0.766253');INSERT INTO MUNICIPIOS VALUES
(6735, 28, 'Pancrudo', 'pancrudo', 44720, '40.761122', '-1.030419');INSERT INTO MUNICIPIOS VALUES
(6736, 28, 'Parras de Castellote', 'parras-de-castellote', 44566, '40.776219', '-0.243073');INSERT INTO MUNICIPIOS VALUES
(6737, 28, 'PeÒarroya de Tastavins', 'penarroya-de-tastavins', 44586, '40.756075', '0.042443');INSERT INTO MUNICIPIOS VALUES
(6738, 28, 'Peracense', 'peracense', 44369, '40.641133', '-1.467962');INSERT INTO MUNICIPIOS VALUES
(6739, 28, 'Peralejos', 'peralejos', 44162, '40.484147', '-1.033638');INSERT INTO MUNICIPIOS VALUES
(6740, 28, 'Perales del Alfambra', 'peralesdelalfambra', 44163, '40.547543', '-1.033187');INSERT INTO MUNICIPIOS VALUES
(6741, 28, 'Pitarque', 'pitarque', 44555, '40.647019', '-0.587897');INSERT INTO MUNICIPIOS VALUES
(6742, 28, 'Plou', 'plou', 44213, '40.992706', '-0.854251');INSERT INTO MUNICIPIOS VALUES
(6743, 28, 'Pobo', 'pobo', 44155, '40.509452', '-0.858178');INSERT INTO MUNICIPIOS VALUES
(6744, 28, 'Portellada', 'portellada', 44589, '40.883856', '0.050297');INSERT INTO MUNICIPIOS VALUES
(6745, 28, 'PozondÛn', 'pozondon', 44368, '40.562240', '-1.472018');INSERT INTO MUNICIPIOS VALUES
(6746, 28, 'Pozuel del Campo', 'pozuel-del-campo', 44315, '40.771848', '-1.506758');INSERT INTO MUNICIPIOS VALUES
(6747, 28, 'Puebla de HÌjar', 'puebla-de-hijar', 44510, '41.213424', '-0.446212');INSERT INTO MUNICIPIOS VALUES
(6748, 28, 'Puebla de Valverde', 'puebla-de-valverde', 44450, '40.225172', '-0.930405');INSERT INTO MUNICIPIOS VALUES
(6749, 28, 'Puertomingalvo', 'puertomingalvo', 44411, '40.265266', '-0.460052');INSERT INTO MUNICIPIOS VALUES
(6750, 28, 'R·fales', 'rafales', 44589, '40.837661', '0.021801');INSERT INTO MUNICIPIOS VALUES
(6751, 28, 'Rillo', 'rillo', 44710, '40.722527', '-0.994692');INSERT INTO MUNICIPIOS VALUES
(6752, 28, 'Riodeva', 'riodeva', 44133, '40.116497', '-1.148286');INSERT INTO MUNICIPIOS VALUES
(6753, 28, 'RÛdenas', 'rodenas', 44310, '40.641825', '-1.517658');INSERT INTO MUNICIPIOS VALUES
(6754, 28, 'Royuela', 'royuela', 44125, '40.377135', '-1.512079');INSERT INTO MUNICIPIOS VALUES
(6755, 28, 'Rubiales', 'rubiales', 44121, '40.276432', '-1.269393');INSERT INTO MUNICIPIOS VALUES
(6756, 28, 'Rubielos de la CÈrida', 'rubielos-de-la-cerida', 44166, '40.771458', '-1.212573');INSERT INTO MUNICIPIOS VALUES
(6757, 28, 'Rubielos de Mora', 'rubielos-de-mora', 44415, '40.189840', '-0.651283');INSERT INTO MUNICIPIOS VALUES
(6758, 28, 'Salcedillo', 'salcedillo', 44793, '40.962376', '-1.006021');INSERT INTO MUNICIPIOS VALUES
(6759, 28, 'SaldÛn', 'saldon', 44122, '40.325003', '-1.428823');INSERT INTO MUNICIPIOS VALUES
(6760, 28, 'Samper de Calanda', 'samper-de-calanda', 44520, '41.190200', '-0.391645');INSERT INTO MUNICIPIOS VALUES
(6761, 28, 'San AgustÌn', 'san-agustin', 44480, '40.059893', '-0.692654');INSERT INTO MUNICIPIOS VALUES
(6762, 28, 'San MartÌn del RÌo', 'san-martin-del-rio', 44390, '41.065973', '-1.386659');INSERT INTO MUNICIPIOS VALUES
(6763, 28, 'Santa Cruz de Nogueras', 'santa-cruz-de-nogueras', 44497, '41.114134', '-1.088591');INSERT INTO MUNICIPIOS VALUES
(6764, 28, 'Santa Eulalia', 'santa-eulalia', 44360, '40.567693', '-1.313038');INSERT INTO MUNICIPIOS VALUES
(6765, 28, 'SarriÛn', 'sarrion', 44460, '40.142124', '-0.815134');INSERT INTO MUNICIPIOS VALUES
(6766, 28, 'Segura de los BaÒos', 'segura-de-los-banos', 44793, '40.940668', '-0.950961');INSERT INTO MUNICIPIOS VALUES
(6767, 28, 'Seno', 'seno', 44561, '40.812201', '-0.338860');INSERT INTO MUNICIPIOS VALUES
(6768, 28, 'Singra', 'singra', 44382, '40.656176', '-1.311707');INSERT INTO MUNICIPIOS VALUES
(6769, 28, 'Terriente', 'terriente', 44120, '40.297448', '-1.504526');INSERT INTO MUNICIPIOS VALUES
(6770, 28, 'Teruel', 'teruel', 44001, '40.345170', '-1.106873');INSERT INTO MUNICIPIOS VALUES
(6771, 28, 'Toril y Masegoso', 'toril-y-masegoso', 44123, '40.247253', '-1.491652');INSERT INTO MUNICIPIOS VALUES
(6772, 28, 'TormÛn', 'tormon', 44134, '40.202854', '-1.353936');INSERT INTO MUNICIPIOS VALUES
(6773, 28, 'Tornos', 'tornos', 44230, '40.962222', '-1.433930');INSERT INTO MUNICIPIOS VALUES
(6774, 28, 'Torralba de los Sisones', 'torralba-de-los-sisones', 44359, '40.890920', '-1.459379');INSERT INTO MUNICIPIOS VALUES
(6775, 28, 'Torre de Arcas', 'torre-de-arcas', 44653, '40.751500', '-0.067677');INSERT INTO MUNICIPIOS VALUES
(6776, 28, 'Torre de las Arcas', 'torre-de-las-arcas', 44709, '40.841265', '-0.719218');INSERT INTO MUNICIPIOS VALUES
(6777, 28, 'Torre del Compte', 'torre-del-compte', 44597, '40.935967', '0.110207');INSERT INTO MUNICIPIOS VALUES
(6778, 28, 'Torre los Negros', 'torre-los-negros', 44358, '40.936162', '0.109777');INSERT INTO MUNICIPIOS VALUES
(6779, 28, 'Torrecilla de AlcaÒiz', 'torrecilla-de-alcaniz', 44640, '40.960602', '-0.091796');INSERT INTO MUNICIPIOS VALUES
(6780, 28, 'Torrecilla del Rebollar', 'torrecilla-del-rebollar', 44222, '40.910675', '-1.071210');INSERT INTO MUNICIPIOS VALUES
(6781, 28, 'Torrelac·rcel', 'torrelacarcel', 44382, '40.614001', '-1.303854');INSERT INTO MUNICIPIOS VALUES
(6782, 28, 'Torremocha de Jiloca', 'torremocha-de-jiloca', 44381, '40.590802', '-1.297202');INSERT INTO MUNICIPIOS VALUES
(6783, 28, 'Torres de AlbarracÌn', 'torres-de-albarracin', 44111, '40.427651', '-1.532185');INSERT INTO MUNICIPIOS VALUES
(6784, 28, 'Torrevelilla', 'torrevelilla', 44641, '40.904788', '-0.110850');INSERT INTO MUNICIPIOS VALUES
(6785, 28, 'Torrijas', 'torrijas', 44421, '40.021787', '-0.957520');INSERT INTO MUNICIPIOS VALUES
(6786, 28, 'Torrijo del Campo', 'torrijo-del-campo', 44393, '40.827368', '-1.335483');INSERT INTO MUNICIPIOS VALUES
(6787, 28, 'Tramacastiel', 'tramacastiel', 44133, '40.188758', '-1.240983');INSERT INTO MUNICIPIOS VALUES
(6788, 28, 'Tramacastilla', 'tramacastilla', 44112, '40.431187', '-1.568213');INSERT INTO MUNICIPIOS VALUES
(6789, 28, 'Tronchon', 'tronchon', 44141, '40.621103', '-0.399113');INSERT INTO MUNICIPIOS VALUES
(6790, 28, 'Urrea de GaÈn', 'urrea-de-gaen', 44593, '41.159885', '-0.469494');INSERT INTO MUNICIPIOS VALUES
(6791, 28, 'Utrillas', 'utrillas', 44760, '40.813452', '-0.842772');INSERT INTO MUNICIPIOS VALUES
(6792, 28, 'Valacloche', 'valacloche', 44191, '40.191332', '-1.091509');
INSERT INTO `poblacion` (`idpoblacion`, `idprovincia`, `poblacion`, `poblacionseo`, `postal`, `latitud`, `longitud`) VALUES
(6793, 28, 'Valbona', 'valbona', 44430, '40.229579', '-0.810328');INSERT INTO MUNICIPIOS VALUES
(6794, 28, 'Valdealgorfa', 'valdealgorfa', 44594, '40.990718', '-0.034890');INSERT INTO MUNICIPIOS VALUES
(6795, 28, 'Valdecuenca', 'valdecuenca', 44122, '40.297072', '-1.406937');INSERT INTO MUNICIPIOS VALUES
(6796, 28, 'Valdelinares', 'valdelinares', 44413, '40.391992', '-0.605450');INSERT INTO MUNICIPIOS VALUES
(6797, 28, 'Valdeltormo', 'valdeltormo', 44620, '40.985470', '0.083985');INSERT INTO MUNICIPIOS VALUES
(6798, 28, 'Valderrobres', 'valderrobres', 44580, '40.875622', '0.158615');INSERT INTO MUNICIPIOS VALUES
(6799, 28, 'Valjunquera', 'valjunquera', 44595, '40.953099', '0.025921');INSERT INTO MUNICIPIOS VALUES
(6800, 28, 'Vallecillo', 'elvallecillo', 44123, '40.234657', '-1.565723');INSERT INTO MUNICIPIOS VALUES
(6801, 28, 'Veguillas de la Sierra', 'veguillas-de-la-sierra', 44134, '40.155360', '-1.405950');INSERT INTO MUNICIPIOS VALUES
(6802, 28, 'Villafranca del Campo', 'villafranca-del-campo', 44394, '40.694468', '-1.345868');INSERT INTO MUNICIPIOS VALUES
(6803, 28, 'Villahermosa del Campo', 'villahermosa-del-campo', 44494, '41.109753', '-1.246133');INSERT INTO MUNICIPIOS VALUES
(6804, 28, 'Villanueva del Rebollar de la Sierra', 'villanueva-del-rebollar-de-la-sierra', 44223, '40.892721', '-1.008468');INSERT INTO MUNICIPIOS VALUES
(6805, 28, 'Villar del Cobo', 'villar-del-cobo', 44114, '40.397091', '-1.673355');INSERT INTO MUNICIPIOS VALUES
(6806, 28, 'Villar del Salz', 'villar-del-salz', 44311, '40.683339', '-1.499076');INSERT INTO MUNICIPIOS VALUES
(6807, 28, 'Villarluengo', 'villarluengo', 44559, '40.648150', '-0.528631');INSERT INTO MUNICIPIOS VALUES
(6808, 28, 'Villarquemado', 'villarquemado', 44380, '40.519574', '-1.268234');INSERT INTO MUNICIPIOS VALUES
(6809, 28, 'Villarroya de los Pinares', 'villarroya-de-los-pinares', 44144, '40.530665', '-0.671196');INSERT INTO MUNICIPIOS VALUES
(6810, 28, 'Villastar', 'villastar', 44130, '40.280803', '-1.152706');INSERT INTO MUNICIPIOS VALUES
(6811, 28, 'Villel', 'villel', 44131, '40.234657', '-1.186996');INSERT INTO MUNICIPIOS VALUES
(6812, 28, 'Vinaceite', 'vinaceite', 44591, '41.266646', '-0.576010');INSERT INTO MUNICIPIOS VALUES
(6813, 28, 'Visiedo', 'visiedo', 44164, '40.685975', '-1.097775');INSERT INTO MUNICIPIOS VALUES
(6814, 28, 'Vivel del RÌo MartÌn', 'vivel-del-rio-martin', 44740, '40.870041', '-0.940447');INSERT INTO MUNICIPIOS VALUES
(6815, 28, 'Zoma', 'zoma', 44707, '40.784018', '-0.618367');INSERT INTO MUNICIPIOS VALUES
(6817, 32, 'AjofrÌn', 'ajofrin', 45110, '39.713600', '-3.982054');INSERT INTO MUNICIPIOS VALUES
(6818, 32, 'Alameda de la Sagra', 'alameda-de-la-sagra', 45240, '40.012009', '-3.795660');INSERT INTO MUNICIPIOS VALUES
(6819, 32, 'Albarreal de Tajo', 'albarreal-de-tajo', 45522, '39.897124', '-4.228061');INSERT INTO MUNICIPIOS VALUES
(6820, 32, 'AlcabÛn', 'alcabon', 45523, '40.002202', '-4.368048');INSERT INTO MUNICIPIOS VALUES
(6821, 32, 'AlcaÒizo', 'alcanizo', 45687, '39.904945', '-5.106049');INSERT INTO MUNICIPIOS VALUES
(6822, 32, 'Alcaudete de la Jara', 'alcaudete-de-la-jara', 45662, '39.790443', '-4.871427');INSERT INTO MUNICIPIOS VALUES
(6823, 32, 'Alcolea de Tajo', 'alcolea-de-tajo', 45571, '39.808239', '-5.148125');INSERT INTO MUNICIPIOS VALUES
(6824, 32, 'Aldea en Cabo', 'aldea-en-cabo', 45908, '40.186450', '-4.454464');INSERT INTO MUNICIPIOS VALUES
(6825, 32, 'Aldeanueva de Barbarroya', 'aldeanueva-de-barbarroya', 45661, '39.762170', '-5.020174');INSERT INTO MUNICIPIOS VALUES
(6826, 32, 'Aldeanueva de San BartolomÈ', 'aldeanueva-de-san-bartolome', 45575, '39.637262', '-5.110840');INSERT INTO MUNICIPIOS VALUES
(6827, 32, 'Almendral de la CaÒada', 'almendral-de-la-canada', 45631, '40.186690', '-4.742109');INSERT INTO MUNICIPIOS VALUES
(6828, 32, 'Almonacid de Toledo', 'almonacid-de-toledo', 45420, '39.755156', '-3.854598');INSERT INTO MUNICIPIOS VALUES
(6829, 32, 'Almorox', 'almorox', 45900, '40.232991', '-4.391704');INSERT INTO MUNICIPIOS VALUES
(6830, 32, 'AÒover de Tajo', 'anover-de-tajo', 45250, '39.988175', '-3.762758');INSERT INTO MUNICIPIOS VALUES
(6831, 32, 'ArcicÛllar', 'arcicollar', 45182, '40.056253', '-4.114368');INSERT INTO MUNICIPIOS VALUES
(6832, 32, 'ArgÈs', 'arges', 45122, '39.805295', '-4.057094');INSERT INTO MUNICIPIOS VALUES
(6833, 32, 'Azut·n', 'azutan', 45571, '39.784215', '-5.126474');INSERT INTO MUNICIPIOS VALUES
(6834, 32, 'Barcience', 'barcience', 45525, '39.983185', '-4.233034');INSERT INTO MUNICIPIOS VALUES
(6835, 32, 'Bargas', 'bargas', 45593, '39.940678', '-4.019413');INSERT INTO MUNICIPIOS VALUES
(6836, 32, 'BelvÌs de la Jara', 'belvis-de-la-jara', 45660, '39.760709', '-4.948337');INSERT INTO MUNICIPIOS VALUES
(6837, 32, 'Borox', 'borox', 45222, '40.069862', '-3.740072');INSERT INTO MUNICIPIOS VALUES
(6838, 32, 'Buenaventura', 'buenaventura', 45634, '40.176119', '-4.849176');INSERT INTO MUNICIPIOS VALUES
(6839, 32, 'Burguillos de Toledo', 'burguillos-de-toledo', 45112, '39.796040', '-3.993402');INSERT INTO MUNICIPIOS VALUES
(6840, 32, 'BurujÛn', 'burujon', 45521, '39.901407', '-4.298315');INSERT INTO MUNICIPIOS VALUES
(6841, 32, 'CabaÒas de la Sagra', 'cabanas-de-la-sagra', 45592, '40.008453', '-3.946838');INSERT INTO MUNICIPIOS VALUES
(6842, 32, 'CabaÒas de Yepes', 'cabanas-de-yepes', 45312, '39.889554', '-3.535044');INSERT INTO MUNICIPIOS VALUES
(6843, 32, 'Cabezamesada', 'cabezamesada', 45890, '39.815986', '-3.101921');INSERT INTO MUNICIPIOS VALUES
(6844, 32, 'Calera y Chozas', 'calera-y-chozas', 45686, '39.881849', '-4.978223');INSERT INTO MUNICIPIOS VALUES
(6845, 32, 'Caleruela', 'caleruela', 45589, '39.874801', '-5.255027');INSERT INTO MUNICIPIOS VALUES
(6846, 32, 'Calzada de Oropesa', 'calzada-de-oropesa', 45580, '39.898378', '-5.278673');INSERT INTO MUNICIPIOS VALUES
(6847, 32, 'Camarena', 'camarena', 45180, '40.092797', '-4.119101');INSERT INTO MUNICIPIOS VALUES
(6848, 32, 'Camarenilla', 'camarenilla', 45181, '40.017755', '-4.073739');INSERT INTO MUNICIPIOS VALUES
(6849, 32, 'Campillo de la Jara', 'campillo-de-la-jara', 45578, '39.589981', '-5.054784');INSERT INTO MUNICIPIOS VALUES
(6850, 32, 'CamuÒas', 'camunas', 45720, '39.425851', '-3.458977');INSERT INTO MUNICIPIOS VALUES
(6851, 32, 'Cardiel de los Montes', 'cardiel-de-los-montes', 45642, '40.063983', '-4.656358');INSERT INTO MUNICIPIOS VALUES
(6852, 32, 'Carmena', 'carmena', 45531, '39.958142', '-4.400840');INSERT INTO MUNICIPIOS VALUES
(6853, 32, 'Carpio de Tajo', 'carpio-de-tajo', 45533, '39.887710', '-4.455900');INSERT INTO MUNICIPIOS VALUES
(6854, 32, 'Carranque', 'carranque', 45216, '40.169790', '-3.900447');INSERT INTO MUNICIPIOS VALUES
(6855, 32, 'Carriches', 'carriches', 45532, '39.963997', '-4.455171');INSERT INTO MUNICIPIOS VALUES
(6856, 32, 'Casar de Escalona', 'casar-de-escalona', 45542, '40.047329', '-4.524221');INSERT INTO MUNICIPIOS VALUES
(6857, 32, 'Casarrubios del Monte', 'casarrubios-del-monte', 45950, '40.186480', '-4.037004');INSERT INTO MUNICIPIOS VALUES
(6858, 32, 'Casasbuenas', 'casasbuenas', 45124, '39.761278', '-4.125881');INSERT INTO MUNICIPIOS VALUES
(6859, 32, 'Castillo de Bayuela', 'castillo-de-bayuela', 45641, '40.102104', '-4.683609');INSERT INTO MUNICIPIOS VALUES
(6860, 32, 'Cazalegas', 'cazalegas', 45683, '40.010623', '-4.675841');INSERT INTO MUNICIPIOS VALUES
(6861, 32, 'Cebolla', 'cebolla', 45680, '39.947977', '-4.569025');INSERT INTO MUNICIPIOS VALUES
(6862, 32, 'Cedillo del Condado', 'cedillo-del-condado', 45214, '40.114511', '-3.922119');INSERT INTO MUNICIPIOS VALUES
(6863, 32, 'Cerralbos', 'cerralbos', 45682, '39.985736', '-4.568982');INSERT INTO MUNICIPIOS VALUES
(6864, 32, 'Cervera de los Montes', 'cervera-de-los-montes', 45637, '40.052552', '-4.810724');INSERT INTO MUNICIPIOS VALUES
(6865, 32, 'Chozas de Canales', 'chozas-de-canales', 45960, '40.100496', '-4.041252');INSERT INTO MUNICIPIOS VALUES
(6866, 32, 'Chueca', 'chueca', 45113, '39.732703', '-3.941989');INSERT INTO MUNICIPIOS VALUES
(6867, 32, 'Ciruelos', 'ciruelos', 45314, '39.936658', '-3.616734');INSERT INTO MUNICIPIOS VALUES
(6868, 32, 'Cobeja', 'cobeja', 45291, '40.024920', '-3.856759');INSERT INTO MUNICIPIOS VALUES
(6869, 32, 'Cobisa', 'cobisa', 45111, '39.804019', '-4.024386');INSERT INTO MUNICIPIOS VALUES
(6870, 32, 'Consuegra', 'consuegra', 45700, '39.460517', '-3.605490');INSERT INTO MUNICIPIOS VALUES
(6871, 32, 'Corral de Almaguer', 'corral-de-almaguer', 45880, '39.763554', '-3.166122');INSERT INTO MUNICIPIOS VALUES
(6872, 32, 'Cuerva', 'cuerva', 45126, '39.663625', '-4.209824');INSERT INTO MUNICIPIOS VALUES
(6873, 32, 'Domingo PÈrez', 'domingo-perez', 45544, '39.976035', '-4.504824');INSERT INTO MUNICIPIOS VALUES
(6874, 32, 'Dosbarrios', 'dosbarrios', 45311, '39.884845', '-3.476744');INSERT INTO MUNICIPIOS VALUES
(6875, 32, 'Erustes', 'erustes', 45540, '39.956629', '-4.497056');INSERT INTO MUNICIPIOS VALUES
(6876, 32, 'Escalona', 'escalona', 45910, '40.168642', '-4.403629');INSERT INTO MUNICIPIOS VALUES
(6877, 32, 'Escalonilla', 'escalonilla', 45517, '39.925206', '-4.348869');INSERT INTO MUNICIPIOS VALUES
(6878, 32, 'Espinoso del Rey', 'espinoso-del-rey', 45650, '39.652888', '-4.782915');INSERT INTO MUNICIPIOS VALUES
(6879, 32, 'Esquivias', 'esquivias', 45221, '40.104205', '-3.770499');INSERT INTO MUNICIPIOS VALUES
(6880, 32, 'Estrella', 'estrella', 45574, '39.690281', '-5.092506');INSERT INTO MUNICIPIOS VALUES
(6881, 32, 'Fuensalida', 'fuensalida', 45510, '40.053373', '-4.208794');INSERT INTO MUNICIPIOS VALUES
(6882, 32, 'G·lvez', 'galvez', 45164, '39.705767', '-4.276342');INSERT INTO MUNICIPIOS VALUES
(6883, 32, 'Garciotum', 'garciotum', 45643, '40.099609', '-4.645114');INSERT INTO MUNICIPIOS VALUES
(6884, 32, 'Gerindote', 'gerindote', 45518, '39.966793', '-4.301662');INSERT INTO MUNICIPIOS VALUES
(6885, 32, 'Guadamur', 'guadamur', 45160, '39.813942', '-4.145794');INSERT INTO MUNICIPIOS VALUES
(6886, 32, 'Guardia', 'guardia', 45760, '39.786181', '-3.475199');INSERT INTO MUNICIPIOS VALUES
(6887, 32, 'Herencias', 'herencias', 45664, '39.869597', '-4.920888');INSERT INTO MUNICIPIOS VALUES
(6888, 32, 'Herreruela de Oropesa', 'herreruela-de-oropesa', 45588, '39.890410', '-5.242839');INSERT INTO MUNICIPIOS VALUES
(6889, 32, 'Hinojosa de San Vicente', 'hinojosa-de-san-vicente', 45645, '40.104632', '-4.722705');INSERT INTO MUNICIPIOS VALUES
(6890, 32, 'Hontanar', 'hontanar', 45159, '39.611937', '-4.497185');INSERT INTO MUNICIPIOS VALUES
(6891, 32, 'Hormigos', 'hormigos', 45919, '40.098723', '-4.445386');INSERT INTO MUNICIPIOS VALUES
(6892, 32, 'Huecas', 'huecas', 45511, '40.011970', '-4.195790');INSERT INTO MUNICIPIOS VALUES
(6893, 32, 'Huerta de Valdecar·banos', 'huerta-de-valdecarabanos', 45750, '39.865018', '-3.608408');INSERT INTO MUNICIPIOS VALUES
(6894, 32, 'Iglesuela', 'iglesuela', 45633, '40.228170', '-4.748755');INSERT INTO MUNICIPIOS VALUES
(6895, 32, 'Ill·n de Vacas', 'illan-de-vacas', 45681, '39.970789', '-4.555957');INSERT INTO MUNICIPIOS VALUES
(6896, 32, 'Illescas', 'illescas', 45200, '40.123700', '-3.850021');INSERT INTO MUNICIPIOS VALUES
(6897, 32, 'Lagartera', 'lagartera', 45567, '39.905983', '-5.201426');INSERT INTO MUNICIPIOS VALUES
(6898, 32, 'Layos', 'layos', 45123, '39.777177', '-4.064255');INSERT INTO MUNICIPIOS VALUES
(6899, 32, 'Lillo', 'lillo', 45870, '39.721448', '-3.305554');INSERT INTO MUNICIPIOS VALUES
(6900, 32, 'Lominchar', 'lominchar', 45212, '40.089695', '-3.965850');INSERT INTO MUNICIPIOS VALUES
(6901, 32, 'Lucillos', 'lucillos', 45684, '39.986919', '-4.612284');INSERT INTO MUNICIPIOS VALUES
(6902, 32, 'Madridejos', 'madridejos', 45710, '39.467276', '-3.521547');INSERT INTO MUNICIPIOS VALUES
(6903, 32, 'Mag·n', 'magan', 45590, '39.957780', '-3.930531');INSERT INTO MUNICIPIOS VALUES
(6904, 32, 'Malpica de Tajo', 'malpica-de-tajo', 45692, '39.894098', '-4.547224');INSERT INTO MUNICIPIOS VALUES
(6905, 32, 'Manzaneque', 'manzaneque', 45460, '39.635638', '-3.788180');INSERT INTO MUNICIPIOS VALUES
(6906, 32, 'Maqueda', 'maqueda', 45515, '40.066971', '-4.369211');INSERT INTO MUNICIPIOS VALUES
(6907, 32, 'Marjaliza', 'marjaliza', 45479, '39.563585', '-3.935080');INSERT INTO MUNICIPIOS VALUES
(6908, 32, 'Marrupe', 'marrupe', 45636, '40.090187', '-4.793215');INSERT INTO MUNICIPIOS VALUES
(6909, 32, 'Mascaraque', 'mascaraque', 45430, '39.716364', '-3.811870');INSERT INTO MUNICIPIOS VALUES
(6910, 32, 'Mata', 'mata', 45534, '39.942811', '-4.438906');INSERT INTO MUNICIPIOS VALUES
(6911, 32, 'Mazarambroz', 'mazarambroz', 45114, '39.693781', '-4.020739');INSERT INTO MUNICIPIOS VALUES
(6912, 32, 'Mejorada', 'mejorada', 45622, '40.010031', '-4.880333');INSERT INTO MUNICIPIOS VALUES
(6913, 32, 'Menasalbas', 'menasalbas', 45128, '39.642578', '-4.283295');INSERT INTO MUNICIPIOS VALUES
(6914, 32, 'MÈntrida', 'mentrida', 45930, '40.239964', '-4.189053');INSERT INTO MUNICIPIOS VALUES
(6915, 32, 'Mesegar de Tajo', 'mesegar-de-tajo', 45541, '39.925897', '-4.502120');INSERT INTO MUNICIPIOS VALUES
(6916, 32, 'Miguel Esteban', 'miguel-esteban', 45830, '39.524634', '-3.075571');INSERT INTO MUNICIPIOS VALUES
(6917, 32, 'MocejÛn', 'mocejon', 45270, '39.939060', '-3.914094');INSERT INTO MUNICIPIOS VALUES
(6918, 32, 'Mohedas de la Jara', 'mohedas-de-la-jara', 45576, '39.605358', '-5.142460');INSERT INTO MUNICIPIOS VALUES
(6919, 32, 'MontearagÛn', 'montearagon', 45685, '39.964162', '-4.632025');INSERT INTO MUNICIPIOS VALUES
(6920, 32, 'Montesclaros', 'montesclaros', 45620, '40.108538', '-4.939985');INSERT INTO MUNICIPIOS VALUES
(6921, 32, 'Mora', 'mora', 45400, '39.686714', '-3.772430');INSERT INTO MUNICIPIOS VALUES
(6922, 32, 'Nambroca', 'nambroca', 45190, '39.798381', '-3.942719');INSERT INTO MUNICIPIOS VALUES
(6923, 32, 'Nava de Ricomalillo', 'nava-de-ricomalillo', 45670, '39.651169', '-4.986720');INSERT INTO MUNICIPIOS VALUES
(6924, 32, 'Navahermosa', 'navahermosa', 45150, '39.635836', '-4.471607');INSERT INTO MUNICIPIOS VALUES
(6925, 32, 'Navalc·n', 'navalcan', 45610, '40.070453', '-5.091648');INSERT INTO MUNICIPIOS VALUES
(6926, 32, 'Navalmoralejo', 'navalmoralejo', 45573, '39.739402', '-5.144176');INSERT INTO MUNICIPIOS VALUES
(6927, 32, 'Navalmorales', 'navalmorales', 45140, '39.722504', '-4.641209');INSERT INTO MUNICIPIOS VALUES
(6928, 32, 'Navalucillos', 'navalucillos', 45130, '39.666830', '-4.642839');INSERT INTO MUNICIPIOS VALUES
(6929, 32, 'Navamorcuende', 'navamorcuende', 45630, '40.157295', '-4.786606');INSERT INTO MUNICIPIOS VALUES
(6930, 32, 'Noblejas', 'noblejas', 45350, '39.972911', '-3.444300');INSERT INTO MUNICIPIOS VALUES
(6931, 32, 'Noez', 'noez', 45162, '39.740392', '-4.183688');INSERT INTO MUNICIPIOS VALUES
(6932, 32, 'Nombela', 'nombela', 45917, '40.156967', '-4.501648');INSERT INTO MUNICIPIOS VALUES
(6933, 32, 'NovÈs', 'noves', 45519, '40.047066', '-4.272265');INSERT INTO MUNICIPIOS VALUES
(6934, 32, 'Numancia de la Sagra', 'numancia-de-la-sagra', 45230, '40.074229', '-3.854184');INSERT INTO MUNICIPIOS VALUES
(6935, 32, 'NuÒo GÛmez', 'nuno-gomez', 45644, '40.115102', '-4.620352');INSERT INTO MUNICIPIOS VALUES
(6936, 32, 'OcaÒa', 'ocana', 45300, '39.961596', '-3.500519');INSERT INTO MUNICIPIOS VALUES
(6937, 32, 'OlÌas del Rey', 'olias-del-rey', 45280, '39.943700', '-3.987350');INSERT INTO MUNICIPIOS VALUES
(6938, 32, 'OntÌgola', 'ontigola', 45340, '40.003950', '-3.572187');INSERT INTO MUNICIPIOS VALUES
(6939, 32, 'Orgaz', 'orgaz', 45450, '39.648262', '-3.874226');INSERT INTO MUNICIPIOS VALUES
(6940, 32, 'Oropesa', 'laoropesa', 12594, '39.919611', '-5.172157');INSERT INTO MUNICIPIOS VALUES
(6941, 32, 'Otero', 'otero', 45543, '40.001254', '-4.515896');INSERT INTO MUNICIPIOS VALUES
(6942, 32, 'Palomeque', 'palomeque', 45213, '40.119467', '-3.963490');INSERT INTO MUNICIPIOS VALUES
(6943, 32, 'Pantoja', 'pantoja', 45290, '40.044208', '-3.836589');INSERT INTO MUNICIPIOS VALUES
(6944, 32, 'Paredes de Escalona', 'paredes-de-escalona', 45908, '40.207394', '-4.428349');INSERT INTO MUNICIPIOS VALUES
(6945, 32, 'Parrillas', 'parrillas', 45611, '40.061585', '-5.063925');INSERT INTO MUNICIPIOS VALUES
(6946, 32, 'Pelahust·n', 'pelahustan', 45918, '40.177431', '-4.601040');INSERT INTO MUNICIPIOS VALUES
(6947, 32, 'Pepino', 'pepino', 45638, '40.032675', '-4.802485');INSERT INTO MUNICIPIOS VALUES
(6948, 32, 'Pol·n', 'polan', 45161, '39.789412', '-4.168110');INSERT INTO MUNICIPIOS VALUES
(6949, 32, 'Portillo de Toledo', 'portillo-de-toledo', 45512, '40.064016', '-4.229178');INSERT INTO MUNICIPIOS VALUES
(6950, 32, 'Puebla de Almoradiel', 'puebla-de-almoradiel', 45840, '39.600662', '-3.116856');INSERT INTO MUNICIPIOS VALUES
(6951, 32, 'Puebla de Montalb·n', 'puebla-de-montalban', 45516, '39.866929', '-4.361744');INSERT INTO MUNICIPIOS VALUES
(6952, 32, 'Pueblanueva', 'pueblanueva', 45690, '39.912896', '-4.681892');INSERT INTO MUNICIPIOS VALUES
(6953, 32, 'Puente del Arzobispo', 'puente-del-arzobispo', 45570, '39.803739', '-5.171406');INSERT INTO MUNICIPIOS VALUES
(6954, 32, 'Puerto de San Vicente', 'puerto-de-san-vicente', 45577, '39.525163', '-5.114779');INSERT INTO MUNICIPIOS VALUES
(6955, 32, 'Pulgar', 'pulgar', 45125, '39.694177', '-4.152231');INSERT INTO MUNICIPIOS VALUES
(6956, 32, 'Quero', 'quero', 45790, '39.508411', '-3.246460');INSERT INTO MUNICIPIOS VALUES
(6957, 32, 'Quintanar de la Orden', 'quintanar-de-la-orden', 45800, '39.591205', '-3.044157');INSERT INTO MUNICIPIOS VALUES
(6958, 32, 'Quismondo', 'quismondo', 45514, '40.105616', '-4.324365');INSERT INTO MUNICIPIOS VALUES
(6959, 32, 'Real de San Vicente', 'real-de-san-vicente', 45640, '40.138466', '-4.690905');INSERT INTO MUNICIPIOS VALUES
(6960, 32, 'Recas', 'recas', 45211, '40.053702', '-3.992801');INSERT INTO MUNICIPIOS VALUES
(6961, 32, 'Retamoso de la Jara', 'retamoso-de-la-jara', 45652, '39.741910', '-4.752703');INSERT INTO MUNICIPIOS VALUES
(6962, 32, 'Rielves', 'rielves', 45524, '39.961070', '-4.192486');INSERT INTO MUNICIPIOS VALUES
(6963, 32, 'Robledo del Mazo', 'robledo-del-mazo', 45674, '39.607275', '-4.904881');INSERT INTO MUNICIPIOS VALUES
(6964, 32, 'Romeral', 'romeral', 45770, '39.707121', '-3.431597');INSERT INTO MUNICIPIOS VALUES
(6965, 32, 'San BartolomÈde las Abiertas', 'san-bartolomede-las-abiertas', 45654, '39.830884', '-4.720688');INSERT INTO MUNICIPIOS VALUES
(6966, 32, 'San MartÌn de Montalb·n', 'san-martin-de-montalban', 45165, '39.702102', '-4.393930');INSERT INTO MUNICIPIOS VALUES
(6967, 32, 'San MartÌn de Pusa', 'san-martin-de-pusa', 45170, '39.784664', '-4.633484');INSERT INTO MUNICIPIOS VALUES
(6968, 32, 'San Pablo de los Montes', 'san-pablo-de-los-montes', 45120, '39.540058', '-4.331360');INSERT INTO MUNICIPIOS VALUES
(6969, 32, 'San Rom·n de los Montes', 'san-roman-de-los-montes', 45646, '40.069599', '-4.732189');INSERT INTO MUNICIPIOS VALUES
(6970, 32, 'Santa Ana de Pusa', 'santa-ana-de-pusa', 45653, '39.764874', '-4.715881');INSERT INTO MUNICIPIOS VALUES
(6971, 32, 'Santa Cruz de la Zarza', 'santa-cruz-de-la-zarza', 45370, '39.985144', '-3.186550');INSERT INTO MUNICIPIOS VALUES
(6972, 32, 'Santa Cruz del Retamar', 'santa-cruz-del-retamar', 45513, '40.120353', '-4.241753');INSERT INTO MUNICIPIOS VALUES
(6973, 32, 'Santa Olalla', 'santa-olalla', 45530, '40.023860', '-4.436329');INSERT INTO MUNICIPIOS VALUES
(6974, 32, 'Santo Domingo-Caudilla', 'santo-domingo-caudilla', 45526, '40.011642', '-4.325824');INSERT INTO MUNICIPIOS VALUES
(6975, 32, 'Sartajada', 'sartajada', 45632, '40.211916', '-4.790597');INSERT INTO MUNICIPIOS VALUES
(6976, 32, 'Segurilla', 'segurilla', 45621, '40.022619', '-4.863596');INSERT INTO MUNICIPIOS VALUES
(6977, 32, 'SeseÒa', 'sesena', 45224, '40.105058', '-3.648663');INSERT INTO MUNICIPIOS VALUES
(6978, 32, 'Sevilleja de la Jara', 'sevilleja-de-la-jara', 45671, '39.576255', '-4.962044');INSERT INTO MUNICIPIOS VALUES
(6979, 32, 'Sonseca', 'sonseca', 45100, '39.676508', '-3.973274');INSERT INTO MUNICIPIOS VALUES
(6980, 32, 'Sotillo de las Palomas', 'sotillo-de-las-palomas', 45635, '40.105091', '-4.826732');INSERT INTO MUNICIPIOS VALUES
(6981, 32, 'Talavera de la Reina', 'talavera-de-la-reina', 45600, '39.961333', '-4.830036');INSERT INTO MUNICIPIOS VALUES
(6982, 32, 'Tembleque', 'tembleque', 45780, '39.697479', '-3.501635');INSERT INTO MUNICIPIOS VALUES
(6983, 32, 'Toboso', 'toboso', 45820, '39.512947', '-2.994847');INSERT INTO MUNICIPIOS VALUES
(6984, 32, 'Toledo', 'toledo', 45002, '39.856585', '-4.024086');INSERT INTO MUNICIPIOS VALUES
(6985, 32, 'Torralba de Oropesa', 'torralba-de-oropesa', 45569, '39.932446', '-5.151300');INSERT INTO MUNICIPIOS VALUES
(6986, 32, 'Torre de Esteban Hambr·n', 'torre-de-esteban-hambran', 45920, '40.169528', '-4.217505');INSERT INTO MUNICIPIOS VALUES
(6987, 32, 'Torrecilla de la Jara', 'torrecilla-de-la-jara', 45651, '39.704083', '-4.771457');INSERT INTO MUNICIPIOS VALUES
(6988, 32, 'Torrico', 'torrico', 45572, '39.830620', '-5.226145');INSERT INTO MUNICIPIOS VALUES
(6989, 32, 'Torrijos', 'torrijos', 45500, '39.981428', '-4.284110');INSERT INTO MUNICIPIOS VALUES
(6990, 32, 'TotanÈs', 'totanes', 45163, '39.710158', '-4.225831');INSERT INTO MUNICIPIOS VALUES
(6991, 32, 'Turleque', 'turleque', 45789, '39.602084', '-3.613129');INSERT INTO MUNICIPIOS VALUES
(6992, 32, 'Ugena', 'ugena', 45217, '40.155852', '-3.875899');INSERT INTO MUNICIPIOS VALUES
(6993, 32, 'Urda', 'urda', 45480, '39.411728', '-3.716083');INSERT INTO MUNICIPIOS VALUES
(6994, 32, 'Valdeverdeja', 'valdeverdeja', 45572, '39.799239', '-5.246186');INSERT INTO MUNICIPIOS VALUES
(6995, 32, 'Valmojado', 'valmojado', 45940, '40.204280', '-4.090991');INSERT INTO MUNICIPIOS VALUES
(6996, 32, 'Velada', 'velada', 45612, '39.980968', '-4.978995');INSERT INTO MUNICIPIOS VALUES
(6997, 32, 'Ventas con PeÒa Aguilera', 'ventas-con-pena-aguilera', 45127, '39.610978', '-4.235830');INSERT INTO MUNICIPIOS VALUES
(6998, 32, 'Ventas de Retamosa', 'ventas-de-retamosa', 45183, '40.156180', '-4.112663');INSERT INTO MUNICIPIOS VALUES
(6999, 32, 'Ventas de San Juli·n', 'ventas-de-san-julian', 45568, '40.008695', '-5.293489');INSERT INTO MUNICIPIOS VALUES
(7000, 32, 'Villa de Don Fadrique', 'villa-de-don-fadrique', 45850, '39.618417', '-3.217664');INSERT INTO MUNICIPIOS VALUES
(7001, 32, 'VillacaÒas', 'villacanas', 45860, '39.625127', '-3.327656');INSERT INTO MUNICIPIOS VALUES
(7002, 32, 'Villafranca de los Caballeros', 'villafranca-de-los-caballeros', 45730, '39.426083', '-3.356667');INSERT INTO MUNICIPIOS VALUES
(7003, 32, 'Villaluenga de la Sagra', 'villaluenga-de-la-sagra', 45520, '40.027614', '-3.911648');INSERT INTO MUNICIPIOS VALUES
(7004, 32, 'Villamiel de Toledo', 'villamiel-de-toledo', 45594, '39.983270', '-4.126267');INSERT INTO MUNICIPIOS VALUES
(7005, 32, 'Villaminaya', 'villaminaya', 45440, '39.711858', '-3.870192');INSERT INTO MUNICIPIOS VALUES
(7006, 32, 'Villamuelas', 'villamuelas', 45749, '39.817766', '-3.731918');INSERT INTO MUNICIPIOS VALUES
(7007, 32, 'Villanueva de Alcardete', 'villanueva-de-alcardete', 45810, '39.673469', '-3.010340');INSERT INTO MUNICIPIOS VALUES
(7008, 32, 'Villanueva de Bogas', 'villanueva-de-bogas', 45410, '39.724320', '-3.655615');INSERT INTO MUNICIPIOS VALUES
(7009, 32, 'Villarejo de Montalb·n', 'villarejo-de-montalban', 45179, '39.768865', '-4.572501');INSERT INTO MUNICIPIOS VALUES
(7010, 32, 'Villarrubia de Santiago', 'villarrubia-de-santiago', 45360, '39.987314', '-3.368468');INSERT INTO MUNICIPIOS VALUES
(7011, 32, 'Villaseca de la Sagra', 'villaseca-de-la-sagra', 45260, '39.986985', '-3.368769');INSERT INTO MUNICIPIOS VALUES
(7012, 32, 'Villasequilla', 'villasequilla', 45740, '39.878786', '-3.728828');INSERT INTO MUNICIPIOS VALUES
(7013, 32, 'Villatobas', 'villatobas', 45310, '39.901967', '-3.322763');INSERT INTO MUNICIPIOS VALUES
(7014, 32, 'Viso de San Juan', 'viso-de-san-juan', 45215, '40.142337', '-3.920317');INSERT INTO MUNICIPIOS VALUES
(7015, 32, 'YÈbenes', 'yebenes', 45470, '39.581283', '-3.870449');INSERT INTO MUNICIPIOS VALUES
(7016, 32, 'Yeles', 'yeles', 45220, '40.122355', '-3.804874');INSERT INTO MUNICIPIOS VALUES
(7017, 32, 'Yepes', 'yepes', 45312, '39.902757', '-3.621712');INSERT INTO MUNICIPIOS VALUES
(7018, 32, 'Yuncler', 'yuncler', 45529, '40.040692', '-3.902764');INSERT INTO MUNICIPIOS VALUES
(7019, 32, 'Yunclillos', 'yunclillos', 45591, '40.021272', '-3.989453');INSERT INTO MUNICIPIOS VALUES
(7020, 32, 'Yuncos', 'yuncos', 45210, '40.084442', '-3.875213');INSERT INTO MUNICIPIOS VALUES
(7022, 36, 'Ademuz', 'ademuz', 46140, '40.064695', '-1.284774');INSERT INTO MUNICIPIOS VALUES
(7023, 36, 'Ador', 'ador', 46729, '38.919286', '-0.223503');INSERT INTO MUNICIPIOS VALUES
(7024, 36, 'Agullent', 'agullent', 46890, '38.824755', '-0.547039');INSERT INTO MUNICIPIOS VALUES
(7025, 36, 'Aielo de Malferit', 'aielo-de-malferit', 46812, '38.880125', '-0.591899');INSERT INTO MUNICIPIOS VALUES
(7026, 36, 'Aielo de Rugat', 'aielo-de-rugat', 46842, '38.881980', '-0.343666');INSERT INTO MUNICIPIOS VALUES
(7027, 36, 'Alaqu‡s', 'alaquas', 46970, '39.454635', '-0.457844');INSERT INTO MUNICIPIOS VALUES
(7028, 36, 'Albaida', 'albaida', 46860, '38.839512', '-0.522384');INSERT INTO MUNICIPIOS VALUES
(7029, 36, 'Albal', 'albal', 46470, '39.397203', '-0.414440');INSERT INTO MUNICIPIOS VALUES
(7030, 36, 'Albalat de la Ribera', 'albalat-de-la-ribera', 46687, '39.202969', '-0.388639');INSERT INTO MUNICIPIOS VALUES
(7031, 36, 'Albalat dels Sorells', 'albalat-dels-sorells', 46135, '39.543956', '-0.345759');INSERT INTO MUNICIPIOS VALUES
(7032, 36, 'Albalat dels Tarongers', 'albalat-dels-tarongers', 46591, '39.701985', '-0.337614');INSERT INTO MUNICIPIOS VALUES
(7033, 36, 'Alberic', 'alberic', 46260, '39.119015', '-0.520139');INSERT INTO MUNICIPIOS VALUES
(7034, 36, 'Alborache', 'alborache', 46369, '39.392760', '-0.771790');INSERT INTO MUNICIPIOS VALUES
(7035, 36, 'Alboraya', 'alboraya', 46120, '39.499070', '-0.340514');INSERT INTO MUNICIPIOS VALUES
(7036, 36, 'Albuixech', 'albuixech', 46550, '39.544327', '-0.323067');INSERT INTO MUNICIPIOS VALUES
(7037, 36, 'Alc‡ntera de X˙quer', 'alcantera-de-xuquer', 46293, '39.067930', '-0.560946');INSERT INTO MUNICIPIOS VALUES
(7038, 36, 'Alc‡sser', 'alcasser', 46290, '39.369241', '-0.442629');INSERT INTO MUNICIPIOS VALUES
(7039, 36, 'Alcublas', 'alcublas', 46172, '39.795260', '-0.701609');INSERT INTO MUNICIPIOS VALUES
(7040, 36, 'L Alc˙dia', 'l-alcudia', 46250, '39.194069', '-0.507030');INSERT INTO MUNICIPIOS VALUES
(7041, 36, 'Alc˙dia de Crespins', 'alcudia-de-crespins', 46690, '38.971254', '-0.590687');INSERT INTO MUNICIPIOS VALUES
(7042, 36, 'Aldaia', 'aldaia', 46960, '39.464990', '-0.461168');INSERT INTO MUNICIPIOS VALUES
(7043, 36, 'Alfafar', 'alfafar', 46910, '38.772722', '-0.555153');INSERT INTO MUNICIPIOS VALUES
(7044, 36, 'Algimia de Alfara', 'algimia-de-alfara', 46148, '39.763085', '-0.356599');INSERT INTO MUNICIPIOS VALUES
(7045, 36, 'Alfara del Patriarca', 'alfara-del-patriarca', 46115, '39.546048', '-0.386496');INSERT INTO MUNICIPIOS VALUES
(7046, 36, 'Alfarp', 'alfarp', 46197, '39.276982', '-0.560474');INSERT INTO MUNICIPIOS VALUES
(7047, 36, 'AlfarrasÌ', 'alfarrasi', 46893, '38.906435', '-0.495822');INSERT INTO MUNICIPIOS VALUES
(7048, 36, 'Alfauir', 'alfauir', 46725, '38.928234', '-0.251484');INSERT INTO MUNICIPIOS VALUES
(7049, 36, 'Algar de Palancia', 'algar-de-palancia', 46593, '39.782188', '-0.367044');INSERT INTO MUNICIPIOS VALUES
(7050, 36, 'AlgemesÌ', 'algemesi', 46680, '39.196285', '-0.438349');INSERT INTO MUNICIPIOS VALUES
(7052, 36, 'Alginet', 'alginet', 46230, '39.261490', '-0.470044');INSERT INTO MUNICIPIOS VALUES
(7053, 36, 'Alm‡ssera', 'almassera', 46132, '39.514395', '-0.360624');INSERT INTO MUNICIPIOS VALUES
(7054, 36, 'Almiser‡', 'almisera', 46726, '38.915012', '-0.285645');INSERT INTO MUNICIPIOS VALUES
(7055, 36, 'Almoines', 'almoines', 46723, '38.943139', '-0.179858');INSERT INTO MUNICIPIOS VALUES
(7056, 36, 'Almussafes', 'almussafes', 46440, '39.293524', '-0.414047');INSERT INTO MUNICIPIOS VALUES
(7057, 36, 'Alpuente', 'alpuente', 46178, '39.877005', '-1.014589');INSERT INTO MUNICIPIOS VALUES
(7058, 36, 'Alqueria de la Comtessa', 'alqueria-de-la-comtessa', 46715, '38.936680', '-0.152607');INSERT INTO MUNICIPIOS VALUES
(7059, 36, 'Alzira', 'alzira', 46600, '39.151730', '-0.437849');INSERT INTO MUNICIPIOS VALUES
(7060, 36, 'Andilla', 'andilla', 46162, '39.834629', '-0.814011');INSERT INTO MUNICIPIOS VALUES
(7061, 36, 'Anna', 'anna', 46820, '39.019125', '-0.647534');INSERT INTO MUNICIPIOS VALUES
(7062, 36, 'Antella', 'antella', 46266, '39.080395', '-0.590319');INSERT INTO MUNICIPIOS VALUES
(7063, 36, 'Aras de los Olmos', 'aras-de-los-olmos', 46179, '39.924265', '-1.134959');INSERT INTO MUNICIPIOS VALUES
(7064, 36, 'Atzeneta d Albaida', 'atzeneta-dalbaida', 46869, '38.837808', '-0.497454');INSERT INTO MUNICIPIOS VALUES
(7065, 36, 'Ayora', 'ayora', 46620, '39.060975', '-1.053724');INSERT INTO MUNICIPIOS VALUES
(7066, 36, 'Barx', 'barx', 46758, '39.015235', '-0.301869');INSERT INTO MUNICIPIOS VALUES
(7067, 36, 'Barxeta', 'barxeta', 46667, '39.022280', '-0.419894');INSERT INTO MUNICIPIOS VALUES
(7068, 36, 'BÈlgida', 'belgida', 46868, '38.860821', '-0.476151');INSERT INTO MUNICIPIOS VALUES
(7069, 36, 'Bellreguard', 'bellreguard', 46713, '38.946460', '-0.162912');INSERT INTO MUNICIPIOS VALUES
(7070, 36, 'Bell˙s', 'bellus', 46839, '38.946565', '-0.488894');INSERT INTO MUNICIPIOS VALUES
(7071, 36, 'BenagÈber', 'benageber', 46173, '39.707495', '-1.099684');INSERT INTO MUNICIPIOS VALUES
(7072, 36, 'Benaguasil', 'benaguasil', 46180, '39.595640', '-0.587539');INSERT INTO MUNICIPIOS VALUES
(7073, 36, 'Benavites', 'benavites', 46514, '39.740887', '-0.258007');INSERT INTO MUNICIPIOS VALUES
(7074, 36, 'Beneixida', 'beneixida', 46293, '39.059140', '-0.548114');INSERT INTO MUNICIPIOS VALUES
(7075, 36, 'Benet˙sser', 'benetusser', 46910, '39.425387', '-0.396709');INSERT INTO MUNICIPIOS VALUES
(7076, 36, 'BeniarjÛ', 'beniarjo', 46722, '38.932390', '-0.185859');INSERT INTO MUNICIPIOS VALUES
(7077, 36, 'Beniatjar', 'beniatjar', 46844, '38.849290', '-0.417169');INSERT INTO MUNICIPIOS VALUES
(7078, 36, 'Benicolet', 'benicolet', 46838, '38.919430', '-0.344204');INSERT INTO MUNICIPIOS VALUES
(7079, 36, 'Benicull de X˙quer', 'benicull-de-xuquer', 46689, '39.186876', '-0.382173');INSERT INTO MUNICIPIOS VALUES
(7080, 36, 'BenifaiÛ', 'benifaio', 46450, '39.286720', '-0.422979');INSERT INTO MUNICIPIOS VALUES
(7081, 36, 'BenifairÛ de la Valldigna', 'benifairo-de-la-valldigna', 46791, '39.057025', '-0.304714');INSERT INTO MUNICIPIOS VALUES
(7082, 36, 'BenifairÛ de les Valls', 'benifairo-de-les-valls', 46511, '39.726762', '-0.269337');INSERT INTO MUNICIPIOS VALUES
(7083, 36, 'Benifl·', 'benifla', 46722, '38.928600', '-0.186650');INSERT INTO MUNICIPIOS VALUES
(7084, 36, 'Benig·nim', 'beniganim', 46830, '38.941023', '-0.444671');INSERT INTO MUNICIPIOS VALUES
(7085, 36, 'Benimodo', 'benimodo', 46291, '39.214705', '-0.524849');INSERT INTO MUNICIPIOS VALUES
(7086, 36, 'Benimuslem', 'benimuslem', 46611, '39.131985', '-0.492529');INSERT INTO MUNICIPIOS VALUES
(7087, 36, 'Beniparrell', 'beniparrell', 46469, '39.383230', '-0.411679');INSERT INTO MUNICIPIOS VALUES
(7088, 36, 'Benirredr‡', 'benirredra', 46703, '38.960735', '-0.191334');INSERT INTO MUNICIPIOS VALUES
(7089, 36, 'BenisanÛ', 'benisano', 46181, '39.613312', '-0.575580');INSERT INTO MUNICIPIOS VALUES
(7090, 36, 'Benissoda', 'benissoda', 46869, '38.833810', '-0.528699');INSERT INTO MUNICIPIOS VALUES
(7091, 36, 'Benisuera', 'benisuera', 46839, '38.914155', '-0.480549');INSERT INTO MUNICIPIOS VALUES
(7092, 36, 'BÈtera', 'betera', 46117, '39.590690', '-0.464694');INSERT INTO MUNICIPIOS VALUES
(7093, 36, 'Bicorp', 'bicorp', 46825, '39.131665', '-0.789289');INSERT INTO MUNICIPIOS VALUES
(7094, 36, 'Bocairent', 'bocairent', 46880, '38.767887', '-0.607424');INSERT INTO MUNICIPIOS VALUES
(7095, 36, 'Bolbaite', 'bolbaite', 46822, '39.062832', '-0.674543');INSERT INTO MUNICIPIOS VALUES
(7096, 36, 'BonrepÛs i Mirambell', 'bonrepos-i-mirambell', 46131, '39.518658', '-0.363750');INSERT INTO MUNICIPIOS VALUES
(7097, 36, 'Bufali', 'bufali', 46891, '38.868182', '-0.514383');INSERT INTO MUNICIPIOS VALUES
(7098, 36, 'Bugarra', 'bugarra', 46165, '39.609325', '-0.772133');INSERT INTO MUNICIPIOS VALUES
(7099, 36, 'BuÒol', 'bunol', 46360, '39.418525', '-0.790200');INSERT INTO MUNICIPIOS VALUES
(7100, 36, 'Burjassot', 'burjassot', 46100, '39.510663', '-0.414133');INSERT INTO MUNICIPIOS VALUES
(7101, 36, 'Calles', 'calles', 46175, '39.725607', '-0.973277');INSERT INTO MUNICIPIOS VALUES
(7102, 36, 'Camporrobles', 'camporrobles', 46330, '39.647105', '-1.396165');INSERT INTO MUNICIPIOS VALUES
(7103, 36, 'Canals', 'canals', 46650, '38.960977', '-0.583906');INSERT INTO MUNICIPIOS VALUES
(7104, 36, 'Canet dEn Berenguer', 'canet-den-berenguer', 46529, '39.680439', '-0.220242');INSERT INTO MUNICIPIOS VALUES
(7105, 36, 'Carcaixent', 'carcaixent', 46740, '39.121438', '-0.449109');INSERT INTO MUNICIPIOS VALUES
(7106, 36, 'C‡rcer', 'carcer', 46294, '39.069046', '-0.565238');INSERT INTO MUNICIPIOS VALUES
(7107, 36, 'Carlet', 'carlet', 46240, '39.228680', '-0.521743');INSERT INTO MUNICIPIOS VALUES
(7108, 36, 'CarrÌcola', 'carricola', 46869, '38.840510', '-0.468979');INSERT INTO MUNICIPIOS VALUES
(7109, 36, 'Casas Altas', 'casas-altas', 46147, '40.039444', '-1.264672');INSERT INTO MUNICIPIOS VALUES
(7110, 36, 'Casas Bajas', 'casas-bajas', 46146, '40.023638', '-1.258965');INSERT INTO MUNICIPIOS VALUES
(7111, 36, 'Casinos', 'casinos', 46171, '39.701805', '-0.709391');INSERT INTO MUNICIPIOS VALUES
(7112, 36, 'CastellÛde Rugat', 'castellode-rugat', 46841, '38.875866', '-0.381346');INSERT INTO MUNICIPIOS VALUES
(7113, 36, 'Castellonet de la Conquesta', 'castellonet-de-la-conquesta', 46726, '38.915914', '-0.263071');INSERT INTO MUNICIPIOS VALUES
(7114, 36, 'Castielfabib', 'castielfabib', 46141, '40.131149', '-1.303039');INSERT INTO MUNICIPIOS VALUES
(7115, 36, 'Catadau', 'catadau', 46196, '39.275255', '-0.569186');INSERT INTO MUNICIPIOS VALUES
(7116, 36, 'Catarroja', 'catarroja', 46470, '39.402841', '-0.402975');INSERT INTO MUNICIPIOS VALUES
(7117, 36, 'Caudete de las Fuentes', 'caudete-de-las-fuentes', 46315, '39.560243', '-1.277590');INSERT INTO MUNICIPIOS VALUES
(7118, 36, 'Cerd‡', 'cerda', 46813, '38.985200', '-0.572491');INSERT INTO MUNICIPIOS VALUES
(7119, 36, 'Chella', 'chella', 46821, '39.044686', '-0.660768');INSERT INTO MUNICIPIOS VALUES
(7120, 36, 'Chelva', 'chelva', 46176, '39.747190', '-0.997438');INSERT INTO MUNICIPIOS VALUES
(7121, 36, 'Chera', 'chera', 46350, '39.593883', '-0.972590');INSERT INTO MUNICIPIOS VALUES
(7122, 36, 'Cheste', 'cheste', 46380, '39.495033', '-0.684328');INSERT INTO MUNICIPIOS VALUES
(7123, 36, 'Chiva', 'chiva', 46370, '39.472974', '-0.717587');INSERT INTO MUNICIPIOS VALUES
(7124, 36, 'Chulilla', 'chulilla', 46167, '39.656621', '-0.891223');INSERT INTO MUNICIPIOS VALUES
(7125, 36, 'Cofrentes', 'cofrentes', 46625, '39.229561', '-1.061511');INSERT INTO MUNICIPIOS VALUES
(7126, 36, 'Corbera', 'corbera', 08757, '41.417951', '1.932907');INSERT INTO MUNICIPIOS VALUES
(7127, 36, 'Cortes de Pall·s', 'cortes-de-pallas', 46199, '39.243289', '-0.940404');INSERT INTO MUNICIPIOS VALUES
(7128, 36, 'Cotes', 'cotes', 46294, '39.071012', '-0.575924');INSERT INTO MUNICIPIOS VALUES
(7129, 36, 'Cullera', 'cullera', 46400, '39.165206', '-0.257149');INSERT INTO MUNICIPIOS VALUES
(7130, 36, 'Daim˙s', 'daimus', 46710, '38.970253', '-0.154152');INSERT INTO MUNICIPIOS VALUES
(7131, 36, 'DomeÒo', 'domeno', 31454, '42.674863', '-1.238194');INSERT INTO MUNICIPIOS VALUES
(7132, 36, 'Dos Aguas', 'dos-aguas', 46198, '39.289538', '-0.800114');INSERT INTO MUNICIPIOS VALUES
(7133, 36, 'Eliana', 'eliana', 46183, '39.566595', '-0.530133');INSERT INTO MUNICIPIOS VALUES
(7134, 36, 'Emperador', 'emperador', 46135, '39.554552', '-0.338302');INSERT INTO MUNICIPIOS VALUES
(7135, 36, 'Enguera', 'enguera', 46810, '38.980896', '-0.688877');INSERT INTO MUNICIPIOS VALUES
(7137, 36, 'Estivella', 'estivella', 46590, '39.712436', '-0.347872');INSERT INTO MUNICIPIOS VALUES
(7138, 36, 'Estubeny', 'estubeny', 46817, '39.018150', '-0.623302');INSERT INTO MUNICIPIOS VALUES
(7139, 36, 'Faura', 'faura', 46512, '39.726135', '-0.263672');INSERT INTO MUNICIPIOS VALUES
(7140, 36, 'Favara', 'favara', 46614, '39.127730', '-0.291567');INSERT INTO MUNICIPIOS VALUES
(7141, 36, 'Foios', 'foios', 46134, '39.537874', '-0.356798');INSERT INTO MUNICIPIOS VALUES
(7142, 36, 'Font de la Figuera', 'font-de-la-figuera', 46630, '38.809082', '-0.876503');INSERT INTO MUNICIPIOS VALUES
(7144, 36, 'Fontanars dels Alforins', 'fontanars-dels-alforins', 46635, '38.784331', '-0.787625');INSERT INTO MUNICIPIOS VALUES
(7145, 36, 'Fortaleny', 'fortaleny', 46418, '39.184003', '-0.313711');INSERT INTO MUNICIPIOS VALUES
(7146, 36, 'Fuenterrobles', 'fuenterrobles', 46314, '39.586574', '-1.364708');INSERT INTO MUNICIPIOS VALUES
(7147, 36, 'Gandia', 'gandia', 46710, '38.968719', '-0.185308');INSERT INTO MUNICIPIOS VALUES
(7148, 36, 'G·tova', 'gatova', 46169, '39.770811', '-0.519962');INSERT INTO MUNICIPIOS VALUES
(7149, 36, 'Gavarda', 'gavarda', 46267, '39.091733', '-0.559702');INSERT INTO MUNICIPIOS VALUES
(7150, 36, 'GenovÈs', 'genoves', 46894, '38.988735', '-0.467606');INSERT INTO MUNICIPIOS VALUES
(7151, 36, 'Gestalgar', 'gestalgar', 46166, '39.604366', '-0.833673');INSERT INTO MUNICIPIOS VALUES
(7152, 36, 'Gilet', 'gilet', 46149, '39.676475', '-0.324655');INSERT INTO MUNICIPIOS VALUES
(7153, 36, 'Godella', 'godella', 46110, '39.522614', '-0.417266');INSERT INTO MUNICIPIOS VALUES
(7154, 36, 'Godelleta', 'godelleta', 46388, '39.425221', '-0.687032');INSERT INTO MUNICIPIOS VALUES
(7155, 36, 'Granja de la Costera', 'granja-de-la-costera', 46818, '38.995740', '-0.556955');INSERT INTO MUNICIPIOS VALUES
(7156, 36, 'Guadasequies', 'guadasequies', 46839, '38.924628', '-0.488291');INSERT INTO MUNICIPIOS VALUES
(7157, 36, 'Guadassuar', 'guadassuar', 46610, '39.189092', '-0.482712');INSERT INTO MUNICIPIOS VALUES
(7158, 36, 'Guardamar de la Safor', 'guardamar-de-la-safor', 46711, '38.961611', '-0.149045');INSERT INTO MUNICIPIOS VALUES
(7159, 36, 'Higueruelas', 'higueruelas', 46162, '39.790402', '-0.860882');INSERT INTO MUNICIPIOS VALUES
(7160, 36, 'Jalance', 'jalance', 46624, '39.192152', '-1.077089');INSERT INTO MUNICIPIOS VALUES
(7161, 36, 'Jarafuel', 'jarafuel', 46623, '39.140379', '-1.073570');INSERT INTO MUNICIPIOS VALUES
(7162, 36, 'Llanera de Ranes', 'llanera-de-ranes', 46814, '38.993339', '-0.571675');INSERT INTO MUNICIPIOS VALUES
(7163, 36, 'LlaurÌ', 'llauri', 46613, '39.147203', '-0.330105');INSERT INTO MUNICIPIOS VALUES
(7164, 36, 'LlÌria', 'lliria', 46160, '39.668349', '-0.658150');INSERT INTO MUNICIPIOS VALUES
(7165, 36, 'Llocnou de la Corona', 'llocnou-de-la-corona', 46910, '39.420000', '-0.382000');INSERT INTO MUNICIPIOS VALUES
(7166, 36, 'Llocnou de Sant Jeroni', 'llocnou-de-sant-jeroni', 46726, '38.912808', '-0.285859');INSERT INTO MUNICIPIOS VALUES
(7168, 36, 'Llombai', 'llombai', 46195, '39.282630', '-0.572405');INSERT INTO MUNICIPIOS VALUES
(7169, 36, 'Llosa de Ranes', 'llosa-de-ranes', 46815, '39.018483', '-0.532064');INSERT INTO MUNICIPIOS VALUES
(7170, 36, 'Llutxent', 'llutxent', 46838, '38.942855', '-0.356841');INSERT INTO MUNICIPIOS VALUES
(7171, 36, 'Loriguilla', 'loriguilla', 46393, '39.490861', '-0.568457');INSERT INTO MUNICIPIOS VALUES
(7172, 36, 'Losa del Obispo', 'losa-del-obispo', 46168, '39.695432', '-0.873027');INSERT INTO MUNICIPIOS VALUES
(7173, 36, 'Macastre', 'macastre', 46368, '39.382212', '-0.785694');INSERT INTO MUNICIPIOS VALUES
(7174, 36, 'Manises', 'manises', 46940, '39.491092', '-0.456147');INSERT INTO MUNICIPIOS VALUES
(7175, 36, 'Manuel', 'manuel', 46660, '39.052718', '-0.494642');INSERT INTO MUNICIPIOS VALUES
(7176, 36, 'Marines', 'marines', 46163, '39.674560', '-0.561762');INSERT INTO MUNICIPIOS VALUES
(7177, 36, 'MasalavÈs', 'masalaves', 46292, '39.140679', '-0.522065');INSERT INTO MUNICIPIOS VALUES
(7178, 36, 'Massalfassar', 'massalfassar', 46560, '39.557729', '-0.326715');INSERT INTO MUNICIPIOS VALUES
(7179, 36, 'Massamagrell', 'massamagrell', 46130, '39.569407', '-0.334954');INSERT INTO MUNICIPIOS VALUES
(7180, 36, 'Massanassa', 'massanassa', 46470, '39.411031', '-0.400872');INSERT INTO MUNICIPIOS VALUES
(7181, 36, 'Meliana', 'meliana', 46133, '39.529235', '-0.350018');INSERT INTO MUNICIPIOS VALUES
(7182, 36, 'Millares', 'millares', 46198, '39.238037', '-0.773335');INSERT INTO MUNICIPIOS VALUES
(7183, 36, 'Miramar', 'miramar', 46711, '38.951466', '-0.139217');INSERT INTO MUNICIPIOS VALUES
(7184, 36, 'Mislata', 'mislata', 46920, '39.476055', '-0.418983');INSERT INTO MUNICIPIOS VALUES
(7185, 36, 'Mogente/Moixent', 'mogente-moixent', 46640, '38.874062', '-0.751877');INSERT INTO MUNICIPIOS VALUES
(7186, 36, 'Moncada', 'moncada', 46113, '39.545254', '-0.392418');INSERT INTO MUNICIPIOS VALUES
(7187, 36, 'Montaverner', 'montaverner', 46892, '38.888695', '-0.496488');INSERT INTO MUNICIPIOS VALUES
(7188, 36, 'Montesa', 'montesa', 46692, '38.949964', '-0.651112');INSERT INTO MUNICIPIOS VALUES
(7189, 36, 'Montichelvo', 'montichelvo', 46842, '38.891400', '-0.339246');INSERT INTO MUNICIPIOS VALUES
(7190, 36, 'Montroy', 'montroy', 46193, '39.340073', '-0.615106');INSERT INTO MUNICIPIOS VALUES
(7191, 36, 'Montserrat', 'montserrat', 46192, '39.357595', '-0.602531');INSERT INTO MUNICIPIOS VALUES
(7192, 36, 'Museros', 'museros', 46136, '39.563122', '-0.341306');INSERT INTO MUNICIPIOS VALUES
(7193, 36, 'N·quera', 'naquera', 46119, '39.659000', '-0.424819');INSERT INTO MUNICIPIOS VALUES
(7194, 36, 'NavarrÈs', 'navarres', 46823, '39.101525', '-0.693383');INSERT INTO MUNICIPIOS VALUES
(7195, 36, 'NovelÈ/NovetlÈ', 'novele-novetle', 46819, '38.979995', '-0.548029');INSERT INTO MUNICIPIOS VALUES
(7196, 36, 'Oliva', 'oliva', 46780, '38.919586', '-0.122566');INSERT INTO MUNICIPIOS VALUES
(7197, 36, 'Olleria', 'olleria', 46850, '38.913910', '-0.549617');INSERT INTO MUNICIPIOS VALUES
(7198, 36, 'Olocau', 'olocau', 46169, '39.699659', '-0.531163');INSERT INTO MUNICIPIOS VALUES
(7199, 36, 'Ontinyent', 'ontinyent', 46870, '38.820785', '-0.610514');INSERT INTO MUNICIPIOS VALUES
(7200, 36, 'Otos', 'otos', 46844, '38.854381', '-0.444775');INSERT INTO MUNICIPIOS VALUES
(7201, 36, 'Paiporta', 'paiporta', 46200, '39.428138', '-0.419326');INSERT INTO MUNICIPIOS VALUES
(7202, 36, 'Palma de GandÌa', 'palma-de-gandia', 46724, '38.924094', '-0.220671');INSERT INTO MUNICIPIOS VALUES
(7203, 36, 'Palmera', 'palmera', 46714, '38.942421', '-0.152006');INSERT INTO MUNICIPIOS VALUES
(7204, 36, 'Palomar', 'palomar', 46891, '38.854013', '-0.502925');INSERT INTO MUNICIPIOS VALUES
(7205, 36, 'Paterna', 'paterna', 46980, '39.501921', '-0.443144');INSERT INTO MUNICIPIOS VALUES
(7206, 36, 'Pedralba', 'pedralba', 46164, '39.605291', '-0.727243');INSERT INTO MUNICIPIOS VALUES
(7207, 36, 'PetrÈs', 'petres', 46501, '39.683775', '-0.309806');INSERT INTO MUNICIPIOS VALUES
(7208, 36, 'Picanya', 'picanya', 46210, '39.437121', '-0.434990');INSERT INTO MUNICIPIOS VALUES
(7209, 36, 'Picassent', 'picassent', 46220, '39.360283', '-0.463099');INSERT INTO MUNICIPIOS VALUES
(7210, 36, 'Piles', 'elpiles', 46712, '38.941053', '-0.134625');INSERT INTO MUNICIPIOS VALUES
(7211, 36, 'Pinet', 'pinet', 46838, '38.983632', '-0.338087');INSERT INTO MUNICIPIOS VALUES
(7212, 36, 'Pobla de Farnals', 'pobla-de-farnals', 46139, '39.577942', '-0.324998');INSERT INTO MUNICIPIOS VALUES
(7213, 36, 'Pobla de Vallbona', 'pobla-de-vallbona', 46185, '39.591337', '-0.553265');INSERT INTO MUNICIPIOS VALUES
(7214, 36, 'Pobla del Duc', 'pobla-del-duc', 46840, '38.903892', '-0.417094');INSERT INTO MUNICIPIOS VALUES
(7215, 36, 'Pobla Llarga', 'pobla-llarga', 46670, '39.087769', '-0.477133');INSERT INTO MUNICIPIOS VALUES
(7216, 36, 'Poliny‡de X˙quer', 'polinyade-xuquer', 46688, '39.186963', '-0.386024');INSERT INTO MUNICIPIOS VALUES
(7217, 36, 'PotrÌes', 'potries', 46721, '38.915463', '-0.195522');INSERT INTO MUNICIPIOS VALUES
(7218, 36, 'PuÁol', 'pucol', 46530, '39.617392', '-0.300922');INSERT INTO MUNICIPIOS VALUES
(7219, 36, 'Puebla de San Miguel', 'puebla-de-san-miguel', 46140, '40.044963', '-1.141376');INSERT INTO MUNICIPIOS VALUES
(7220, 36, 'Puig', 'puig', 46540, '39.590279', '-0.302038');INSERT INTO MUNICIPIOS VALUES
(7221, 36, 'Quart de les Valls', 'quart-de-les-valls', 46515, '39.739204', '-0.273628');INSERT INTO MUNICIPIOS VALUES
(7222, 36, 'Quart de Poblet', 'quart-de-poblet', 46930, '39.481984', '-0.445504');INSERT INTO MUNICIPIOS VALUES
(7223, 36, 'Quartell', 'quartell', 46510, '39.737488', '-0.263414');INSERT INTO MUNICIPIOS VALUES
(7224, 36, 'Quatretonda', 'quatretonda', 46837, '38.948563', '-0.403275');INSERT INTO MUNICIPIOS VALUES
(7225, 36, 'Quesa', 'quesa', 46824, '39.119740', '-0.740976');INSERT INTO MUNICIPIOS VALUES
(7226, 36, 'RafelbuÒol/Rafelbunyol', 'rafelbunol-rafelbunyol', 46138, '39.589055', '-0.335040');INSERT INTO MUNICIPIOS VALUES
(7227, 36, 'Rafelcofer', 'rafelcofer', 46716, '38.933542', '-0.166941');INSERT INTO MUNICIPIOS VALUES
(7228, 36, 'Rafelguaraf', 'rafelguaraf', 46666, '39.051752', '-0.454903');INSERT INTO MUNICIPIOS VALUES
(7229, 36, 'R·fol de Salem', 'rafol-de-salem', 46843, '38.865609', '-0.396967');INSERT INTO MUNICIPIOS VALUES
(7230, 36, 'Real de GandÌa', 'real-de-gandia', 46727, '38.950765', '-0.193677');INSERT INTO MUNICIPIOS VALUES
(7231, 36, 'Real de Montroi', 'real-de-montroi', 46193, '39.336355', '-0.610127');INSERT INTO MUNICIPIOS VALUES
(7232, 36, 'Requena', 'requena', 46340, '39.489735', '-1.098976');INSERT INTO MUNICIPIOS VALUES
(7233, 36, 'Riba-roja de Turia', 'riba-roja-de-turia', 46190, '39.544972', '-0.566053');INSERT INTO MUNICIPIOS VALUES
(7234, 36, 'Riola', 'riola', 46417, '39.197889', '-0.334053');INSERT INTO MUNICIPIOS VALUES
(7235, 36, 'Rocafort', 'rocafort', 46111, '39.531469', '-0.410099');INSERT INTO MUNICIPIOS VALUES
(7236, 36, 'Rotgl‡i Corber‡', 'rotglai-corbera', 46816, '39.004161', '-0.566397');INSERT INTO MUNICIPIOS VALUES
(7237, 36, 'RÛtova', 'rotova', 46725, '38.932607', '-0.258007');INSERT INTO MUNICIPIOS VALUES
(7238, 36, 'Rugat', 'rugat', 46842, '38.878639', '-0.359030');INSERT INTO MUNICIPIOS VALUES
(7239, 36, 'Sagunto/Sagunt', 'sagunto-sagunt', 46500, '39.680191', '-0.277834');INSERT INTO MUNICIPIOS VALUES
(7240, 36, 'Salem', 'salem', 46843, '38.865124', '-0.396066');INSERT INTO MUNICIPIOS VALUES
(7241, 36, 'San Antonio de BenagÈber', 'san-antonio-de-benageber', 46184, '39.562377', '-0.500393');INSERT INTO MUNICIPIOS VALUES
(7242, 36, 'San Juan de ¡?nova', 'san-juan-de-enova', 46669, '39.044136', '-0.479407');INSERT INTO MUNICIPIOS VALUES
(7243, 36, 'SedavÌ', 'sedavi', 46910, '39.421715', '-0.376518');INSERT INTO MUNICIPIOS VALUES
(7244, 36, 'Segart', 'segart', 46592, '39.683626', '-0.373707');INSERT INTO MUNICIPIOS VALUES
(7245, 36, 'Sellent', 'sellent', 46295, '39.031203', '-0.587597');INSERT INTO MUNICIPIOS VALUES
(7246, 36, 'Sempere', 'sempere', 46839, '38.919703', '-0.480394');INSERT INTO MUNICIPIOS VALUES
(7247, 36, 'Senyera', 'senyera', 46669, '39.063432', '-0.509877');INSERT INTO MUNICIPIOS VALUES
(7248, 36, 'Serra', 'serra', 46118, '39.686301', '-0.429111');INSERT INTO MUNICIPIOS VALUES
(7249, 36, 'Siete Aguas', 'siete-aguas', 46392, '39.472096', '-0.915856');INSERT INTO MUNICIPIOS VALUES
(7250, 36, 'Silla', 'silla', 46460, '39.361560', '-0.412073');INSERT INTO MUNICIPIOS VALUES
(7251, 36, 'Simat de la Valldigna', 'simat-de-la-valldigna', 46750, '39.043270', '-0.310578');INSERT INTO MUNICIPIOS VALUES
(7252, 36, 'Sinarcas', 'sinarcas', 46320, '39.733875', '-1.231713');INSERT INTO MUNICIPIOS VALUES
(7253, 36, 'Sollana', 'sollana', 46430, '39.278162', '-0.381002');INSERT INTO MUNICIPIOS VALUES
(7254, 36, 'Sot de Chera', 'sot-de-chera', 46168, '39.622053', '-0.909548');INSERT INTO MUNICIPIOS VALUES
(7255, 36, 'Sueca', 'sueca', 46410, '39.202612', '-0.310321');INSERT INTO MUNICIPIOS VALUES
(7256, 36, 'Sumac‡rcer', 'sumacarcer', 46295, '39.096796', '-0.628624');INSERT INTO MUNICIPIOS VALUES
(7257, 36, 'Tavernes Blanques', 'tavernes-blanques', 46016, '39.507468', '-0.364952');INSERT INTO MUNICIPIOS VALUES
(7258, 36, 'Tavernes de la Valldigna', 'tavernes-de-la-valldigna', 46760, '39.072128', '-0.267835');INSERT INTO MUNICIPIOS VALUES
(7259, 36, 'Teresa de Cofrentes', 'teresa-de-cofrentes', 46622, '39.107170', '-1.050525');INSERT INTO MUNICIPIOS VALUES
(7260, 36, 'Terrateig', 'terrateig', 46842, '38.894757', '-0.320449');INSERT INTO MUNICIPIOS VALUES
(7261, 36, 'Titaguas', 'titaguas', 46178, '39.875657', '-1.012630');INSERT INTO MUNICIPIOS VALUES
(7262, 36, 'Torrebaja', 'torrebaja', 46143, '40.097000', '-1.256390');INSERT INTO MUNICIPIOS VALUES
(7263, 36, 'Torrella', 'torrella', 46814, '38.988852', '-0.571289');INSERT INTO MUNICIPIOS VALUES
(7264, 36, 'el Torrent', 'eltorrent', 46900, '39.437171', '-0.465031');INSERT INTO MUNICIPIOS VALUES
(7265, 36, 'Torres Torres', 'torres-torres', 46595, '39.742884', '-0.355296');INSERT INTO MUNICIPIOS VALUES
(7266, 36, 'Tous', 'tous', 46269, '39.138366', '-0.587039');INSERT INTO MUNICIPIOS VALUES
(7267, 36, 'TuÈjar', 'tuejar', 46177, '39.763851', '-1.039410');INSERT INTO MUNICIPIOS VALUES
(7268, 36, 'TurÌs', 'turis', 46389, '39.389791', '-0.710893');INSERT INTO MUNICIPIOS VALUES
(7269, 36, 'Utiel', 'utiel', 46300, '39.567935', '-1.203475');INSERT INTO MUNICIPIOS VALUES
(7270, 36, 'Valencia', 'valencia', 46002, '39.470490', '-0.378084');INSERT INTO MUNICIPIOS VALUES
(7271, 36, 'Vallada', 'vallada', 46691, '38.895726', '-0.691195');INSERT INTO MUNICIPIOS VALUES
(7272, 36, 'Vallanca', 'vallanca', 46145, '40.063047', '-1.338143');INSERT INTO MUNICIPIOS VALUES
(7273, 36, 'VallÈs', 'valles', 46818, '38.986317', '-0.556183');INSERT INTO MUNICIPIOS VALUES
(7274, 36, 'Venta del Moro', 'venta-del-moro', 46310, '39.484220', '-1.358657');INSERT INTO MUNICIPIOS VALUES
(7275, 36, 'Vilamarxant', 'vilamarxant', 46191, '39.568547', '-0.622101');INSERT INTO MUNICIPIOS VALUES
(7276, 36, 'Villalonga', 'villalonga', 46720, '38.884803', '-0.210114');INSERT INTO MUNICIPIOS VALUES
(7277, 36, 'Villanueva de CastellÛn', 'villanueva-de-castellon', 46270, '39.079058', '-0.514297');INSERT INTO MUNICIPIOS VALUES
(7278, 36, 'Villar del Arzobispo', 'villar-del-arzobispo', 46170, '39.736284', '-0.827365');INSERT INTO MUNICIPIOS VALUES
(7279, 36, 'Villargordo del Cabriel', 'villargordo-del-cabriel', 46317, '39.534994', '-1.441097');INSERT INTO MUNICIPIOS VALUES
(7280, 36, 'Vinalesa', 'vinalesa', 46114, '39.540141', '-0.369930');INSERT INTO MUNICIPIOS VALUES
(7281, 36, 'X‡tiva', 'xativa', 46800, '38.988202', '-0.515156');INSERT INTO MUNICIPIOS VALUES
(7282, 36, 'Xeraco', 'xeraco', 46770, '39.032769', '-0.216808');INSERT INTO MUNICIPIOS VALUES
(7283, 36, 'Xeresa', 'xeresa', 46790, '39.009364', '-0.217838');INSERT INTO MUNICIPIOS VALUES
(7284, 36, 'Xirivella', 'xirivella', 46950, '39.466895', '-0.427051');INSERT INTO MUNICIPIOS VALUES
(7285, 36, 'Y·tova', 'yatova', 46367, '39.384683', '-0.807281');INSERT INTO MUNICIPIOS VALUES
(7286, 36, 'la Yesa', 'layesa', 46178, '39.892188', '-0.960531');INSERT INTO MUNICIPIOS VALUES
(7287, 36, 'Zarra', 'zarra', 46621, '39.091283', '-1.075845');INSERT INTO MUNICIPIOS VALUES
(7289, 40, 'Adalia', 'adalia', 47129, '41.648730', '-5.119189');INSERT INTO MUNICIPIOS VALUES
(7290, 40, 'Aguasal', 'aguasal', 47418, '41.275375', '-4.653549');INSERT INTO MUNICIPIOS VALUES
(7291, 40, 'Aguilar de Campos', 'aguilar-de-campos', 47814, '41.982925', '-5.183700');INSERT INTO MUNICIPIOS VALUES
(7292, 40, 'Alaejos', 'alaejos', 47510, '41.307325', '-5.215759');INSERT INTO MUNICIPIOS VALUES
(7293, 40, 'AlcazarÈn', 'alcazaren', 47238, '41.369657', '-4.675934');INSERT INTO MUNICIPIOS VALUES
(7294, 40, 'Aldea de San Miguel', 'aldea-de-san-miguel', 47160, '41.460465', '-4.616999');INSERT INTO MUNICIPIOS VALUES
(7295, 40, 'Aldeamayor de San MartÌn', 'aldeamayor-de-san-martin', 47162, '41.515625', '-4.636169');INSERT INTO MUNICIPIOS VALUES
(7296, 40, 'Almenara de Adaja', 'almenara-de-adaja', 47419, '41.212760', '-4.677739');INSERT INTO MUNICIPIOS VALUES
(7297, 40, 'Amusquillo', 'amusquillo', 47177, '41.747960', '-4.301594');INSERT INTO MUNICIPIOS VALUES
(7298, 40, 'Arroyo de la Encomienda', 'arroyo-de-la-encomienda', 47195, '41.609910', '-4.795459');INSERT INTO MUNICIPIOS VALUES
(7299, 40, 'Ataquines', 'ataquines', 47210, '41.182303', '-4.799294');INSERT INTO MUNICIPIOS VALUES
(7300, 40, 'BahabÛn', 'bahabon', 47312, '41.480843', '-4.278898');INSERT INTO MUNICIPIOS VALUES
(7301, 40, 'Barcial de la Loma', 'barcial-de-la-loma', 47674, '41.951217', '-5.283896');INSERT INTO MUNICIPIOS VALUES
(7302, 40, 'Barruelo del Valle', 'barruelo-del-valle', 47129, '41.673040', '-5.069847');INSERT INTO MUNICIPIOS VALUES
(7303, 40, 'Becilla de Valderaduey', 'becilla-de-valderaduey', 47670, '42.097757', '-5.218023');INSERT INTO MUNICIPIOS VALUES
(7304, 40, 'Benafarces', 'benafarces', 47880, '41.622310', '-5.293524');INSERT INTO MUNICIPIOS VALUES
(7305, 40, 'Bercero', 'bercero', 47115, '41.563341', '-5.054682');INSERT INTO MUNICIPIOS VALUES
(7306, 40, 'Berceruelo', 'berceruelo', 47115, '41.579440', '-5.032514');INSERT INTO MUNICIPIOS VALUES
(7307, 40, 'Berrueces', 'berrueces', 47813, '41.949170', '-5.097139');INSERT INTO MUNICIPIOS VALUES
(7308, 40, 'Bobadilla del Campo', 'bobadilla-del-campo', 47462, '41.201793', '-5.023885');INSERT INTO MUNICIPIOS VALUES
(7309, 40, 'Bocigas', 'bocigas', 47419, '41.228265', '-4.680498');INSERT INTO MUNICIPIOS VALUES
(7310, 40, 'Bocos de Duero', 'bocos-de-duero', 47317, '41.628211', '-4.067152');INSERT INTO MUNICIPIOS VALUES
(7311, 40, 'Boecillo', 'boecillo', 47151, '41.540675', '-4.701869');INSERT INTO MUNICIPIOS VALUES
(7312, 40, 'BolaÒos de Campos', 'bolanos-de-campos', 47675, '42.006783', '-5.280969');INSERT INTO MUNICIPIOS VALUES
(7313, 40, 'Brahojos de Medina', 'brahojos-de-medina', 47461, '41.229927', '-5.043690');INSERT INTO MUNICIPIOS VALUES
(7314, 40, 'Bustillo de Chaves', 'bustillo-de-chaves', 47608, '42.131633', '-5.092635');INSERT INTO MUNICIPIOS VALUES
(7315, 40, 'CabezÛn de Pisuerga', 'cabezon-de-pisuerga', 47260, '41.732604', '-4.641166');INSERT INTO MUNICIPIOS VALUES
(7316, 40, 'CabezÛn de Valderaduey', 'cabezon-de-valderaduey', 47689, '42.167634', '-5.159926');INSERT INTO MUNICIPIOS VALUES
(7317, 40, 'Cabreros del Monte', 'cabreros-del-monte', 47832, '41.848721', '-5.270669');INSERT INTO MUNICIPIOS VALUES
(7318, 40, 'Campaspero', 'campaspero', 47310, '41.493358', '-4.201756');INSERT INTO MUNICIPIOS VALUES
(7319, 40, 'Campillo', 'campillo', 47460, '41.258824', '-5.010667');INSERT INTO MUNICIPIOS VALUES
(7320, 40, 'Camporredondo', 'camporredondo', 47165, '41.474615', '-4.503343');INSERT INTO MUNICIPIOS VALUES
(7321, 40, 'Canalejas de PeÒafiel', 'canalejas-de-penafiel', 47311, '41.522764', '-4.116590');INSERT INTO MUNICIPIOS VALUES
(7322, 40, 'Canillas de Esgueva', 'canillas-de-esgueva', 47185, '41.755931', '-4.125988');INSERT INTO MUNICIPIOS VALUES
(7323, 40, 'El Carpio', 'elcarpio', 47470, '41.212448', '-5.108342');INSERT INTO MUNICIPIOS VALUES
(7324, 40, 'Casasola de AriÛn', 'casasola-de-arion', 47110, '41.576994', '-5.243161');INSERT INTO MUNICIPIOS VALUES
(7325, 40, 'CastrejÛn de Trabancos', 'castrejon-de-trabancos', 47512, '41.252726', '-5.170741');INSERT INTO MUNICIPIOS VALUES
(7326, 40, 'Castrillo de Duero', 'castrillo-de-duero', 47318, '41.576609', '-4.014945');INSERT INTO MUNICIPIOS VALUES
(7327, 40, 'Castrillo-Tejeriego', 'castrillo-tejeriego', 47329, '41.703133', '-4.370692');INSERT INTO MUNICIPIOS VALUES
(7328, 40, 'Castrobol', 'castrobol', 47689, '42.137791', '-5.308328');INSERT INTO MUNICIPIOS VALUES
(7329, 40, 'Castrodeza', 'castrodeza', 47192, '41.647118', '-4.959362');INSERT INTO MUNICIPIOS VALUES
(7330, 40, 'Castromembibre', 'castromembibre', 47882, '41.673930', '-5.305849');INSERT INTO MUNICIPIOS VALUES
(7331, 40, 'Castromonte', 'castromonte', 47641, '41.773376', '-5.040944');INSERT INTO MUNICIPIOS VALUES
(7332, 40, 'Castronuevo de Esgueva', 'castronuevo-de-esgueva', 47171, '41.681935', '-4.588079');INSERT INTO MUNICIPIOS VALUES
(7333, 40, 'CastronuÒo', 'castronuno', 47520, '41.390477', '-5.259490');INSERT INTO MUNICIPIOS VALUES
(7334, 40, 'Castroponce', 'castroponce', 47671, '42.099512', '-5.281484');INSERT INTO MUNICIPIOS VALUES
(7335, 40, 'Castroverde de Cerrato', 'castroverde-de-cerrato', 47182, '41.755610', '-4.220939');INSERT INTO MUNICIPIOS VALUES
(7336, 40, 'Ceinos de Campos', 'ceinos-de-campos', 47692, '42.033484', '-5.147996');INSERT INTO MUNICIPIOS VALUES
(7337, 40, 'Cervillego de la Cruz', 'cervillego-de-la-cruz', 47494, '41.187423', '-4.948343');INSERT INTO MUNICIPIOS VALUES
(7338, 40, 'Cigales', 'cigales', 47270, '41.759468', '-4.701247');INSERT INTO MUNICIPIOS VALUES
(7339, 40, 'CiguÒuela', 'cigunuela', 47191, '41.641714', '-4.857953');INSERT INTO MUNICIPIOS VALUES
(7340, 40, 'CistÈrniga', 'cisterniga', 47193, '41.611576', '-4.684854');INSERT INTO MUNICIPIOS VALUES
(7341, 40, 'Cogeces de ¡çscar', 'cogeces-de-iscar', 47440, '41.406018', '-4.546430');INSERT INTO MUNICIPIOS VALUES
(7342, 40, 'Cogeces del Monte', 'cogeces-del-monte', 47313, '41.511502', '-4.316769');INSERT INTO MUNICIPIOS VALUES
(7343, 40, 'Corcos', 'corcos', 47280, '41.809628', '-4.691570');INSERT INTO MUNICIPIOS VALUES
(7344, 40, 'Corrales de Duero', 'corrales-de-duero', 47317, '41.673569', '-4.047496');INSERT INTO MUNICIPIOS VALUES
(7345, 40, 'Cubillas de Santa Marta', 'cubillas-de-santa-marta', 47290, '41.830209', '-4.615567');INSERT INTO MUNICIPIOS VALUES
(7346, 40, 'Cuenca de Campos', 'cuenca-de-campos', 47650, '42.058438', '-5.056973');INSERT INTO MUNICIPIOS VALUES
(7347, 40, 'Curiel de Duero', 'curiel-de-duero', 47316, '41.642612', '-4.102514');INSERT INTO MUNICIPIOS VALUES
(7348, 40, 'Encinas de Esgueva', 'encinas-de-esgueva', 47186, '41.757867', '-4.100003');INSERT INTO MUNICIPIOS VALUES
(7349, 40, 'Esguevillas de Esgueva', 'esguevillas-de-esgueva', 47176, '41.751064', '-4.380434');INSERT INTO MUNICIPIOS VALUES
(7350, 40, 'Fombellida', 'fombellida', 47184, '41.766623', '-4.183774');INSERT INTO MUNICIPIOS VALUES
(7351, 40, 'Fompedraza', 'fompedraza', 47311, '41.532756', '-4.143777');INSERT INTO MUNICIPIOS VALUES
(7352, 40, 'Fontihoyuelo', 'fontihoyuelo', 47609, '42.163881', '-5.057745');INSERT INTO MUNICIPIOS VALUES
(7353, 40, 'Fresno el Viejo', 'fresno-el-viejo', 47480, '41.195045', '-5.146022');INSERT INTO MUNICIPIOS VALUES
(7354, 40, 'FuensaldaÒa', 'fuensaldana', 47194, '41.709781', '-4.764440');INSERT INTO MUNICIPIOS VALUES
(7355, 40, 'Fuente el Sol', 'fuente-el-sol', 47494, '41.176102', '-4.933870');INSERT INTO MUNICIPIOS VALUES
(7356, 40, 'Fuente-Olmedo', 'fuente-olmedo', 47418, '41.269082', '-4.614944');INSERT INTO MUNICIPIOS VALUES
(7357, 40, 'Gallegos de Hornija', 'gallegos-de-hornija', 47134, '41.612811', '-5.094395');INSERT INTO MUNICIPIOS VALUES
(7358, 40, 'GatÛn de Campos', 'gaton-de-campos', 47606, '42.050535', '-4.980626');INSERT INTO MUNICIPIOS VALUES
(7359, 40, 'Geria', 'geria', 47131, '41.579257', '-4.878938');INSERT INTO MUNICIPIOS VALUES
(7360, 40, 'HerrÌn de Campos', 'herrin-de-campos', 47607, '42.124583', '-4.952238');INSERT INTO MUNICIPIOS VALUES
(7361, 40, 'Hornillos de Eresma', 'hornillos-de-eresma', 47238, '41.368451', '-4.715989');INSERT INTO MUNICIPIOS VALUES
(7362, 40, '¡çscar', 'iscar', 47420, '41.365380', '-4.530504');INSERT INTO MUNICIPIOS VALUES
(7363, 40, 'Laguna de Duero', 'laguna-de-duero', 47140, '41.582692', '-4.720709');INSERT INTO MUNICIPIOS VALUES
(7364, 40, 'Langayo', 'langayo', 47314, '41.569883', '-4.199932');INSERT INTO MUNICIPIOS VALUES
(7365, 40, 'Llano de Olmedo', 'llano-de-olmedo', 47418, '41.268437', '-4.614676');INSERT INTO MUNICIPIOS VALUES
(7366, 40, 'Lomoviejo', 'lomoviejo', 47494, '41.151387', '-4.918206');INSERT INTO MUNICIPIOS VALUES
(7367, 40, 'Manzanillo', 'manzanillo', 47314, '41.585862', '-4.189353');INSERT INTO MUNICIPIOS VALUES
(7368, 40, 'Marzales', 'marzales', 47133, '41.587844', '-5.133716');INSERT INTO MUNICIPIOS VALUES
(7369, 40, 'Matapozuelos', 'matapozuelos', 47230, '41.414765', '-4.791369');INSERT INTO MUNICIPIOS VALUES
(7370, 40, 'Matilla de los CaÒos', 'matilla-de-los-canos', 47114, '41.547853', '-4.971228');INSERT INTO MUNICIPIOS VALUES
(7371, 40, 'Mayorga', 'mayorga', 47680, '42.166028', '-5.265262');INSERT INTO MUNICIPIOS VALUES
(7372, 40, 'Medina de Rioseco', 'medina-de-rioseco', 47800, '41.883940', '-5.042253');INSERT INTO MUNICIPIOS VALUES
(7373, 40, 'Medina del Campo', 'medina-del-campo', 47400, '41.310985', '-4.921360');INSERT INTO MUNICIPIOS VALUES
(7374, 40, 'Megeces', 'megeces', 47440, '41.406525', '-4.567351');INSERT INTO MUNICIPIOS VALUES
(7375, 40, 'Melgar de Abajo', 'melgar-de-abajo', 47687, '42.243642', '-5.142395');INSERT INTO MUNICIPIOS VALUES
(7376, 40, 'Melgar de Arriba', 'melgar-de-arriba', 47686, '42.268608', '-5.097914');INSERT INTO MUNICIPIOS VALUES
(7377, 40, 'Mojados', 'mojados', 47250, '41.432737', '-4.665692');INSERT INTO MUNICIPIOS VALUES
(7378, 40, 'Monasterio de Vega', 'monasterio-de-vega', 47688, '42.232489', '-5.182650');INSERT INTO MUNICIPIOS VALUES
(7379, 40, 'Montealegre de Campos', 'montealegre-de-campos', 47816, '41.900824', '-4.902048');INSERT INTO MUNICIPIOS VALUES
(7380, 40, 'Montemayor de Pililla', 'montemayor-de-pililla', 47320, '41.513848', '-4.458990');INSERT INTO MUNICIPIOS VALUES
(7381, 40, 'Moral de la Reina', 'moral-de-la-reina', 47691, '41.984281', '-5.072916');INSERT INTO MUNICIPIOS VALUES
(7382, 40, 'Moraleja de las Panaderas', 'moraleja-de-las-panaderas', 47454, '41.276823', '-4.825079');INSERT INTO MUNICIPIOS VALUES
(7383, 40, 'Morales de Campos', 'morales-de-campos', 47811, '41.862274', '-5.178788');INSERT INTO MUNICIPIOS VALUES
(7384, 40, 'Mota del MarquÈs', 'mota-del-marques', 47120, '41.631867', '-5.175784');INSERT INTO MUNICIPIOS VALUES
(7385, 40, 'Mucientes', 'mucientes', 47194, '41.745061', '-4.763389');INSERT INTO MUNICIPIOS VALUES
(7386, 40, 'Mudarra', 'mudarra', 47630, '41.781105', '-4.942024');INSERT INTO MUNICIPIOS VALUES
(7387, 40, 'Muriel', 'muriel', 47219, '41.123324', '-4.842943');INSERT INTO MUNICIPIOS VALUES
(7388, 40, 'Nava del Rey', 'nava-del-rey', 47500, '41.334287', '-5.079095');INSERT INTO MUNICIPIOS VALUES
(7389, 40, 'Nueva Villa de las Torres', 'nueva-villa-de-las-torres', 47464, '41.267300', '-5.058035');INSERT INTO MUNICIPIOS VALUES
(7390, 40, 'Olivares de Duero', 'olivares-de-duero', 47359, '41.639806', '-4.361959');INSERT INTO MUNICIPIOS VALUES
(7391, 40, 'Olmedo', 'olmedo', 47410, '41.288658', '-4.683974');INSERT INTO MUNICIPIOS VALUES
(7392, 40, 'Olmos de Esgueva', 'olmos-de-esgueva', 47173, '41.687335', '-4.520059');INSERT INTO MUNICIPIOS VALUES
(7393, 40, 'Olmos de PeÒafiel', 'olmos-de-penafiel', 47318, '41.573045', '-4.041038');INSERT INTO MUNICIPIOS VALUES
(7394, 40, 'Palazuelo de Vedija', 'palazuelo-de-vedija', 47812, '41.930379', '-5.143640');INSERT INTO MUNICIPIOS VALUES
(7395, 40, 'Parrilla', 'parrilla', 47328, '41.536860', '-4.530305');INSERT INTO MUNICIPIOS VALUES
(7396, 40, 'Pedraja de Portillo', 'pedraja-de-portillo', 47196, '41.474101', '-4.646916');INSERT INTO MUNICIPIOS VALUES
(7397, 40, 'Pedrajas de San Esteban', 'pedrajas-de-san-esteban', 47430, '41.341682', '-4.581728');INSERT INTO MUNICIPIOS VALUES
(7398, 40, 'Pedrosa del Rey', 'pedrosa-del-rey', 47112, '41.557055', '-5.206876');INSERT INTO MUNICIPIOS VALUES
(7399, 40, 'PeÒafiel', 'penafiel', 47300, '41.596097', '-4.119315');INSERT INTO MUNICIPIOS VALUES
(7400, 40, 'PeÒaflor de Hornija', 'penaflor-de-hornija', 47640, '41.712440', '-4.980905');INSERT INTO MUNICIPIOS VALUES
(7401, 40, 'Pesquera de Duero', 'pesquera-de-duero', 47315, '41.643093', '-4.158926');INSERT INTO MUNICIPIOS VALUES
(7402, 40, 'PiÒa de Esgueva', 'pina-de-esgueva', 47175, '41.727319', '-4.426117');INSERT INTO MUNICIPIOS VALUES
(7403, 40, 'PiÒel de Abajo', 'pinel-de-abajo', 47316, '41.675124', '-4.147682');INSERT INTO MUNICIPIOS VALUES
(7404, 40, 'PiÒel de Arriba', 'pinel-de-arriba', 47316, '41.700218', '-4.127555');INSERT INTO MUNICIPIOS VALUES
(7405, 40, 'Pollos', 'pollos', 47116, '41.445429', '-5.127525');INSERT INTO MUNICIPIOS VALUES
(7406, 40, 'Portillo', 'portillo', 47160, '41.479711', '-4.588165');INSERT INTO MUNICIPIOS VALUES
(7407, 40, 'Pozal de Gallinas', 'pozal-de-gallinas', 47450, '41.319108', '-4.836559');INSERT INTO MUNICIPIOS VALUES
(7408, 40, 'Pozaldez', 'pozaldez', 47220, '41.372686', '-4.842224');INSERT INTO MUNICIPIOS VALUES
(7409, 40, 'Pozuelo de la Orden', 'pozuelo-de-la-orden', 47831, '41.821958', '-5.259061');INSERT INTO MUNICIPIOS VALUES
(7410, 40, 'Puras', 'puras', 47419, '41.185954', '-4.651165');INSERT INTO MUNICIPIOS VALUES
(7411, 40, 'Quintanilla de Arriba', 'quintanilla-de-arriba', 47360, '41.619212', '-4.220424');INSERT INTO MUNICIPIOS VALUES
(7412, 40, 'Quintanilla de OnÈsimo', 'quintanilla-de-onesimo', 47350, '41.623351', '-4.361916');INSERT INTO MUNICIPIOS VALUES
(7413, 40, 'Quintanilla de Trigueros', 'quintanilla-de-trigueros', 47283, '41.855698', '-4.659984');INSERT INTO MUNICIPIOS VALUES
(7414, 40, 'Quintanilla del Molar', 'quintanilla-del-molar', 47673, '41.992096', '-5.449262');INSERT INTO MUNICIPIOS VALUES
(7415, 40, 'R·bano', 'rabano', 47319, '41.533142', '-4.061508');INSERT INTO MUNICIPIOS VALUES
(7416, 40, 'Ramiro', 'ramiro', 47453, '41.228983', '-4.786928');INSERT INTO MUNICIPIOS VALUES
(7417, 40, 'Renedo de Esgueva', 'renedo-de-esgueva', 47170, '41.655062', '-4.628656');INSERT INTO MUNICIPIOS VALUES
(7418, 40, 'Roales de Campos', 'roales-de-campos', 47673, '42.029946', '-5.473573');INSERT INTO MUNICIPIOS VALUES
(7419, 40, 'Robladillo', 'robladillo', 47131, '41.608405', '-4.908894');INSERT INTO MUNICIPIOS VALUES
(7420, 40, 'Roturas', 'roturas', 47316, '41.668937', '-4.120710');INSERT INTO MUNICIPIOS VALUES
(7421, 40, 'RubÌde Bracamonte', 'rubide-bracamonte', 47494, '41.214950', '-4.923441');INSERT INTO MUNICIPIOS VALUES
(7422, 40, 'Rueda', 'rueda', 47490, '41.413960', '-4.957302');INSERT INTO MUNICIPIOS VALUES
(7423, 40, 'Saelices de Mayorga', 'saelices-de-mayorga', 47689, '42.209384', '-5.205545');INSERT INTO MUNICIPIOS VALUES
(7424, 40, 'Salvador de Zapardiel', 'salvador-de-zapardiel', 47219, '41.119226', '-4.871943');INSERT INTO MUNICIPIOS VALUES
(7425, 40, 'San Cebri·n de Mazote', 'san-cebrian-de-mazote', 47129, '41.681190', '-5.149004');INSERT INTO MUNICIPIOS VALUES
(7426, 40, 'San Llorente', 'san-llorente', 47317, '41.686566', '-4.064662');INSERT INTO MUNICIPIOS VALUES
(7427, 40, 'San MartÌn de ValvenÌ', 'san-martin-de-valveni', 47209, '41.753978', '-4.563843');INSERT INTO MUNICIPIOS VALUES
(7428, 40, 'San Miguel del Arroyo', 'san-miguel-del-arroyo', 47164, '41.443000', '-4.458969');INSERT INTO MUNICIPIOS VALUES
(7429, 40, 'San Miguel del Pino', 'san-miguel-del-pino', 47132, '41.513044', '-4.910803');INSERT INTO MUNICIPIOS VALUES
(7430, 40, 'San Pablo de la Moraleja', 'san-pablo-de-la-moraleja', 47219, '41.161435', '-4.779525');INSERT INTO MUNICIPIOS VALUES
(7431, 40, 'San Pedro de Latarce', 'san-pedro-de-latarce', 47851, '41.736175', '-5.326288');INSERT INTO MUNICIPIOS VALUES
(7432, 40, 'San Pelayo', 'san-pelayo', 47129, '41.679050', '-5.039163');INSERT INTO MUNICIPIOS VALUES
(7433, 40, 'San Rom·n de Hornija', 'san-roman-de-hornija', 47530, '41.481785', '-5.282557');INSERT INTO MUNICIPIOS VALUES
(7434, 40, 'San Salvador', 'san-salvador', 47134, '41.620327', '-5.086917');INSERT INTO MUNICIPIOS VALUES
(7435, 40, 'San Vicente del Palacio', 'san-vicente-del-palacio', 47493, '41.220147', '-4.852738');INSERT INTO MUNICIPIOS VALUES
(7436, 40, 'Santa Eufemia del Arroyo', 'santa-eufemia-del-arroyo', 47811, '41.894786', '-5.267751');INSERT INTO MUNICIPIOS VALUES
(7437, 40, 'Santerv·s de Campos', 'santervas-de-campos', 47609, '42.218372', '-5.098869');INSERT INTO MUNICIPIOS VALUES
(7438, 40, 'Santib·Òez de Valcorba', 'santibanez-de-valcorba', 47331, '41.570300', '-4.446298');INSERT INTO MUNICIPIOS VALUES
(7439, 40, 'Santovenia de Pisuerga', 'santovenia-de-pisuerga', 47155, '41.697045', '-4.685057');INSERT INTO MUNICIPIOS VALUES
(7440, 40, 'SardÛn de Duero', 'sardon-de-duero', 47340, '41.607950', '-4.429121');INSERT INTO MUNICIPIOS VALUES
(7441, 40, 'Seca', 'seca', 47491, '41.414250', '-4.906833');INSERT INTO MUNICIPIOS VALUES
(7442, 40, 'La Serrada', 'laserrada', 47239, '41.459396', '-4.859723');INSERT INTO MUNICIPIOS VALUES
(7443, 40, 'Siete Iglesias de Trabancos', 'siete-iglesias-de-trabancos', 47511, '41.352660', '-5.184485');INSERT INTO MUNICIPIOS VALUES
(7444, 40, 'Simancas', 'simancas', 47130, '41.590412', '-4.827590');INSERT INTO MUNICIPIOS VALUES
(7445, 40, 'Tamariz de Campos', 'tamariz-de-campos', 47815, '41.978124', '-5.022855');INSERT INTO MUNICIPIOS VALUES
(7446, 40, 'Tiedra', 'tiedra', 47870, '41.651447', '-5.262151');INSERT INTO MUNICIPIOS VALUES
(7447, 40, 'Tordehumos', 'tordehumos', 47830, '41.815354', '-5.160162');INSERT INTO MUNICIPIOS VALUES
(7448, 40, 'Tordesillas', 'tordesillas', 47100, '41.501764', '-4.999133');INSERT INTO MUNICIPIOS VALUES
(7449, 40, 'Torre de Esgueva', 'torre-de-esgueva', 47183, '41.769279', '-4.203322');INSERT INTO MUNICIPIOS VALUES
(7450, 40, 'Torre de PeÒafiel', 'torre-de-penafiel', 47319, '41.537478', '-4.087579');INSERT INTO MUNICIPIOS VALUES
(7451, 40, 'Torrecilla de la Abadesa', 'torrecilla-de-la-abadesa', 47114, '41.663423', '-5.046995');INSERT INTO MUNICIPIOS VALUES
(7452, 40, 'Torrecilla de la Orden', 'torrecilla-de-la-orden', 47513, '41.219857', '-5.227239');INSERT INTO MUNICIPIOS VALUES
(7453, 40, 'Torrecilla de la Torre', 'torrecilla-de-la-torre', 47129, '41.667037', '-5.051361');INSERT INTO MUNICIPIOS VALUES
(7454, 40, 'TorrelobatÛn', 'torrelobaton', 47134, '41.647463', '-5.024893');INSERT INTO MUNICIPIOS VALUES
(7455, 40, 'Torresc·rcela', 'torrescarcela', 47313, '41.484647', '-4.319644');INSERT INTO MUNICIPIOS VALUES
(7456, 40, 'Traspinedo', 'traspinedo', 47330, '41.577427', '-4.471500');INSERT INTO MUNICIPIOS VALUES
(7457, 40, 'Trigueros del Valle', 'trigueros-del-valle', 47282, '41.829937', '-4.651573');INSERT INTO MUNICIPIOS VALUES
(7458, 40, 'Tudela de Duero', 'tudela-de-duero', 47320, '41.586271', '-4.580076');INSERT INTO MUNICIPIOS VALUES
(7459, 40, 'UniÛn de Campos', 'union-de-campos', 47670, '42.080499', '-5.319335');INSERT INTO MUNICIPIOS VALUES
(7460, 40, 'Urones de Castroponce', 'urones-de-castroponce', 47671, '42.099257', '-5.281484');INSERT INTO MUNICIPIOS VALUES
(7461, 40, 'UrueÒa', 'uruena', 47862, '41.727119', '-5.202831');INSERT INTO MUNICIPIOS VALUES
(7462, 40, 'Valbuena de Duero', 'valbuena-de-duero', 47359, '41.643414', '-4.293852');
INSERT INTO `poblacion` (`idpoblacion`, `idprovincia`, `poblacion`, `poblacionseo`, `postal`, `latitud`, `longitud`) VALUES
(7463, 40, 'Valdearcos de la Vega', 'valdearcos-de-la-vega', 47317, '41.644673', '-4.048011');INSERT INTO MUNICIPIOS VALUES
(7464, 40, 'Valdenebro de los Valles', 'valdenebro-de-los-valles', 47816, '41.856073', '-4.966164');INSERT INTO MUNICIPIOS VALUES
(7465, 40, 'Valdestillas', 'valdestillas', 47240, '41.475692', '-4.770148');INSERT INTO MUNICIPIOS VALUES
(7466, 40, 'Valdunquillo', 'valdunquillo', 47672, '42.041899', '-5.315259');INSERT INTO MUNICIPIOS VALUES
(7467, 40, 'Valladolid', 'valladolid', 47001, '41.653363', '-4.728874');INSERT INTO MUNICIPIOS VALUES
(7468, 40, 'Valoria la Buena', 'valoria-la-buena', 47200, '41.799575', '-4.530830');INSERT INTO MUNICIPIOS VALUES
(7469, 40, 'Valverde de Campos', 'valverde-de-campos', 47690, '41.834718', '-5.037081');INSERT INTO MUNICIPIOS VALUES
(7470, 40, 'Vega de Ruiponce', 'vega-de-ruiponce', 47609, '42.189331', '-5.112741');INSERT INTO MUNICIPIOS VALUES
(7471, 40, 'Vega de Valdetronco', 'vega-de-valdetronco', 47133, '41.595258', '-5.116625');INSERT INTO MUNICIPIOS VALUES
(7472, 40, 'Velasc·lvaro', 'velascalvaro', 47463, '41.229855', '-4.972638');INSERT INTO MUNICIPIOS VALUES
(7473, 40, 'Velilla', 'velilla', 47114, '41.558624', '-5.004584');INSERT INTO MUNICIPIOS VALUES
(7474, 40, 'Velliza', 'velliza', 47419, '41.579241', '-4.946852');INSERT INTO MUNICIPIOS VALUES
(7475, 40, 'Ventosa de la Cuesta', 'ventosa-de-la-cuesta', 47232, '41.411997', '-4.826903');INSERT INTO MUNICIPIOS VALUES
(7476, 40, 'Viana de Cega', 'viana-de-cega', 47150, '41.529528', '-4.751158');INSERT INTO MUNICIPIOS VALUES
(7477, 40, 'Villab·Òez', 'villabanez', 47329, '41.631482', '-4.521475');INSERT INTO MUNICIPIOS VALUES
(7478, 40, 'Villabaruz de Campos', 'villabaruz-de-campos', 47815, '42.010833', '-4.996505');INSERT INTO MUNICIPIOS VALUES
(7479, 40, 'Villabr·gima', 'villabragima', 47820, '41.823525', '-5.111818');INSERT INTO MUNICIPIOS VALUES
(7480, 40, 'VillacarralÛn', 'villacarralon', 47609, '42.189737', '-5.044484');INSERT INTO MUNICIPIOS VALUES
(7481, 40, 'Villacid de Campos', 'villacid-de-campos', 47607, '42.124137', '-4.952903');INSERT INTO MUNICIPIOS VALUES
(7482, 40, 'Villaco', 'villaco', 47181, '41.740354', '-4.269476');INSERT INTO MUNICIPIOS VALUES
(7483, 40, 'Villafrades de Campos', 'villafrades-de-campos', 47606, '42.077903', '-4.970670');INSERT INTO MUNICIPIOS VALUES
(7484, 40, 'Villafranca de Duero', 'villafranca-de-duero', 47529, '41.432753', '-5.301933');INSERT INTO MUNICIPIOS VALUES
(7485, 40, 'VillafrechÛs', 'villafrechos', 47810, '41.892247', '-5.213442');INSERT INTO MUNICIPIOS VALUES
(7486, 40, 'Villafuerte', 'villafuerte', 47180, '41.734878', '-4.322863');INSERT INTO MUNICIPIOS VALUES
(7487, 40, 'VillagarcÌa de Campos', 'villagarcia-de-campos', 47840, '41.781649', '-5.193100');INSERT INTO MUNICIPIOS VALUES
(7488, 40, 'VillagÛmez la Nueva', 'villagomez-la-nueva', 47608, '42.156182', '-5.142975');INSERT INTO MUNICIPIOS VALUES
(7489, 40, 'Villal·n de Campos', 'villalan-de-campos', 47675, '42.014579', '-5.236230');INSERT INTO MUNICIPIOS VALUES
(7490, 40, 'Villalar de los Comuneros', 'villalar-de-los-comuneros', 47111, '41.550599', '-5.138168');INSERT INTO MUNICIPIOS VALUES
(7491, 40, 'Villalba de la Loma', 'villalba-de-la-loma', 47689, '42.173518', '-5.190439');INSERT INTO MUNICIPIOS VALUES
(7492, 40, 'Villalba de los Alcores', 'villalba-de-los-alcores', 47639, '41.863840', '-4.860249');INSERT INTO MUNICIPIOS VALUES
(7493, 40, 'Villalbarba', 'villalbarba', 47113, '41.603345', '-5.214086');INSERT INTO MUNICIPIOS VALUES
(7494, 40, 'VillalÛn de Campos', 'villalon-de-campos', 47600, '42.099719', '-5.033798');INSERT INTO MUNICIPIOS VALUES
(7495, 40, 'Villamuriel de Campos', 'villamuriel-de-campos', 47814, '41.946532', '-5.206833');INSERT INTO MUNICIPIOS VALUES
(7496, 40, 'Vill·n de Tordesillas', 'villan-de-tordesillas', 47131, '41.593300', '-4.923162');INSERT INTO MUNICIPIOS VALUES
(7497, 40, 'Villanubla', 'villanubla', 47620, '41.699448', '-4.842567');INSERT INTO MUNICIPIOS VALUES
(7498, 40, 'Villanueva de Duero', 'villanueva-de-duero', 47239, '41.514458', '-4.866600');INSERT INTO MUNICIPIOS VALUES
(7499, 40, 'Villanueva de la Condesa', 'villanueva-de-la-condesa', 47608, '42.146271', '-5.098665');INSERT INTO MUNICIPIOS VALUES
(7500, 40, 'Villanueva de los Caballeros', 'villanueva-de-los-caballeros', 47850, '41.760444', '-5.249813');INSERT INTO MUNICIPIOS VALUES
(7501, 40, 'Villanueva de los Infantes', 'villanueva-de-losinfantes', 47174, '41.703005', '-4.480212');INSERT INTO MUNICIPIOS VALUES
(7502, 40, 'Villanueva de San Mancio', 'villanueva-de-san-mancio', 47813, '41.928879', '-5.012695');INSERT INTO MUNICIPIOS VALUES
(7503, 40, 'Villardefrades', 'villardefrades', 47860, '41.722579', '-5.255831');INSERT INTO MUNICIPIOS VALUES
(7504, 40, 'Villarmentero de Esgueva', 'villarmentero-de-esgueva', 47172, '41.685348', '-4.546237');INSERT INTO MUNICIPIOS VALUES
(7505, 40, 'Villasexmir', 'villasexmir', 47134, '41.638635', '-5.065341');INSERT INTO MUNICIPIOS VALUES
(7506, 40, 'VillavaquerÌn', 'villavaquerin', 47329, '41.665282', '-4.459655');INSERT INTO MUNICIPIOS VALUES
(7507, 40, 'Villavellid', 'villavellid', 47883, '41.691926', '-5.276560');INSERT INTO MUNICIPIOS VALUES
(7508, 40, 'Villaverde de Medina', 'villaverde-de-medina', 47465, '41.308035', '-5.023971');INSERT INTO MUNICIPIOS VALUES
(7509, 40, 'Villavicencio de los Caballeros', 'villavicencio-de-los-caballeros', 47676, '42.056932', '-5.235114');INSERT INTO MUNICIPIOS VALUES
(7510, 40, 'Viloria', 'viloria', 47166, '41.447037', '-4.384961');INSERT INTO MUNICIPIOS VALUES
(7511, 40, 'Wamba', 'wamba', 47190, '41.675869', '-4.916575');INSERT INTO MUNICIPIOS VALUES
(7512, 40, 'Zarat·n', 'zaratan', 47610, '41.660393', '-4.785361');INSERT INTO MUNICIPIOS VALUES
(7513, 40, 'La Zarza', 'lazarza', 47452, '41.261896', '-4.770910');INSERT INTO MUNICIPIOS VALUES
(7515, 44, 'AbadiÒo', 'abadino', 48220, '43.169260', '-2.607904');INSERT INTO MUNICIPIOS VALUES
(7516, 44, 'Abanto Zierbena', 'abanto-zierbena', 48500, '43.315205', '-3.075784');INSERT INTO MUNICIPIOS VALUES
(7517, 44, 'Ajangiz', 'ajangiz', 48320, '43.309303', '-2.661858');INSERT INTO MUNICIPIOS VALUES
(7518, 44, 'Alonsotegi', 'alonsotegi', 48810, '43.245111', '-2.989183');INSERT INTO MUNICIPIOS VALUES
(7519, 44, 'Amorebieta-Etxano', 'amorebieta-etxano', 48340, '43.221097', '-2.732159');INSERT INTO MUNICIPIOS VALUES
(7520, 44, 'Amoroto', 'amoroto', 48289, '43.326265', '-2.513550');INSERT INTO MUNICIPIOS VALUES
(7521, 44, 'Arakaldo', 'arakaldo', 48498, '43.149313', '-2.924938');INSERT INTO MUNICIPIOS VALUES
(7522, 44, 'Arantzazu', 'arantzazu', 48140, '43.157466', '-2.788791');INSERT INTO MUNICIPIOS VALUES
(7523, 44, 'Areatza', 'areatza', 48143, '43.122952', '-2.772183');INSERT INTO MUNICIPIOS VALUES
(7524, 44, 'Arrankudiaga', 'arrankudiaga', 48498, '43.173802', '-2.918376');INSERT INTO MUNICIPIOS VALUES
(7525, 44, 'Arratzu', 'arratzu', 48383, '43.305355', '-2.640539');INSERT INTO MUNICIPIOS VALUES
(7526, 44, 'Arrieta', 'arrieta', 48114, '43.342040', '-2.769109');INSERT INTO MUNICIPIOS VALUES
(7527, 44, 'Arrigorriaga', 'arrigorriaga', 48480, '43.205235', '-2.889609');INSERT INTO MUNICIPIOS VALUES
(7528, 44, 'Artea', 'artea', 48142, '43.133925', '-2.784404');INSERT INTO MUNICIPIOS VALUES
(7529, 44, 'Arcentales', 'arcentales', 48879, '43.251376', '-3.220417');INSERT INTO MUNICIPIOS VALUES
(7530, 44, 'Atxondo', 'atxondo', 48291, '43.131930', '-2.585744');INSERT INTO MUNICIPIOS VALUES
(7531, 44, 'Aulesti', 'aulesti', 48380, '43.297880', '-2.562084');INSERT INTO MUNICIPIOS VALUES
(7532, 44, 'Bakio', 'bakio', 48130, '43.426644', '-2.812850');INSERT INTO MUNICIPIOS VALUES
(7533, 44, 'Balmaseda', 'balmaseda', 48800, '43.193292', '-3.196200');INSERT INTO MUNICIPIOS VALUES
(7534, 44, 'Barakaldo', 'barakaldo', 48901, '43.297310', '-2.985839');INSERT INTO MUNICIPIOS VALUES
(7535, 44, 'Barrika', 'barrika', 48650, '43.406575', '-2.962149');INSERT INTO MUNICIPIOS VALUES
(7536, 44, 'Basauri', 'basauri', 48970, '43.237550', '-2.887044');INSERT INTO MUNICIPIOS VALUES
(7537, 44, 'Bedia', 'bedia', 48390, '43.209886', '-2.807070');INSERT INTO MUNICIPIOS VALUES
(7538, 44, 'Berango', 'berango', 48640, '43.364180', '-2.995594');INSERT INTO MUNICIPIOS VALUES
(7539, 44, 'Bermeo', 'bermeo', 48370, '43.419294', '-2.725101');INSERT INTO MUNICIPIOS VALUES
(7540, 44, 'Berriatua', 'berriatua', 48710, '43.310065', '-2.466089');INSERT INTO MUNICIPIOS VALUES
(7541, 44, 'Berriz', 'berriz', 48240, '43.168160', '-2.573474');INSERT INTO MUNICIPIOS VALUES
(7542, 44, 'Bilbao', 'bilbao', 48001, '43.268650', '-2.946119');INSERT INTO MUNICIPIOS VALUES
(7543, 44, 'Busturia', 'busturia', 48350, '43.383219', '-2.697144');INSERT INTO MUNICIPIOS VALUES
(7544, 44, 'Derio', 'derio', 48160, '43.302321', '-2.881894');INSERT INTO MUNICIPIOS VALUES
(7545, 44, 'Dima', 'dima', 48141, '43.147591', '-2.752075');INSERT INTO MUNICIPIOS VALUES
(7546, 44, 'Durango', 'durango', 48200, '43.169254', '-2.632685');INSERT INTO MUNICIPIOS VALUES
(7547, 44, 'Ea', 'ea', 48287, '43.380131', '-2.585735');INSERT INTO MUNICIPIOS VALUES
(7548, 44, 'Elantxobe', 'elantxobe', 48310, '43.403520', '-2.639723');INSERT INTO MUNICIPIOS VALUES
(7549, 44, 'Elorrio', 'elorrio', 48230, '43.130931', '-2.542305');INSERT INTO MUNICIPIOS VALUES
(7550, 44, 'Erandio', 'erandio', 48950, '43.307723', '-2.946782');INSERT INTO MUNICIPIOS VALUES
(7551, 44, 'EreÒo', 'ereno', 48313, '43.357294', '-2.621913');INSERT INTO MUNICIPIOS VALUES
(7552, 44, 'Ermua', 'ermua', 48260, '43.186717', '-2.503252');INSERT INTO MUNICIPIOS VALUES
(7553, 44, 'Errigoiti', 'errigoiti', 48309, '43.318840', '-2.725425');INSERT INTO MUNICIPIOS VALUES
(7554, 44, 'Etxebarri', 'etxebarri', 20550, '43.247422', '-2.889662');INSERT INTO MUNICIPIOS VALUES
(7555, 44, 'Etxebarria', 'etxebarria', 48277, '43.254268', '-2.477632');INSERT INTO MUNICIPIOS VALUES
(7556, 44, 'Forua', 'forua', 48393, '43.333919', '-2.678733');INSERT INTO MUNICIPIOS VALUES
(7557, 44, 'Fruiz', 'fruiz', 48116, '43.329142', '-2.783318');INSERT INTO MUNICIPIOS VALUES
(7558, 44, 'Galdakao', 'galdakao', 48960, '43.230790', '-2.846017');INSERT INTO MUNICIPIOS VALUES
(7559, 44, 'Galdames', 'galdames', 48191, '43.255205', '-3.096557');INSERT INTO MUNICIPIOS VALUES
(7560, 44, 'Gamiz-Fika', 'gamiz-fika', 48113, '43.311814', '-2.811298');INSERT INTO MUNICIPIOS VALUES
(7561, 44, 'Garai', 'garai', 48110, '43.363035', '-2.873955');INSERT INTO MUNICIPIOS VALUES
(7562, 44, 'Gatika', 'gatika', 48110, '43.364127', '-2.871852');INSERT INTO MUNICIPIOS VALUES
(7563, 44, 'Gautegiz Arteaga', 'gautegiz-arteaga', 48314, '43.353394', '-2.650752');INSERT INTO MUNICIPIOS VALUES
(7564, 44, 'Gernika-Lumo', 'gernika-lumo', 48300, '43.317279', '-2.679248');INSERT INTO MUNICIPIOS VALUES
(7565, 44, 'Getxo', 'getxo', 48992, '43.344500', '-3.005877');INSERT INTO MUNICIPIOS VALUES
(7566, 44, 'Gizaburuaga', 'gizaburuaga', 48289, '43.332108', '-2.536168');INSERT INTO MUNICIPIOS VALUES
(7567, 44, 'Gordexola', 'gordexola', 48192, '43.178737', '-3.072653');INSERT INTO MUNICIPIOS VALUES
(7568, 44, 'Gorliz', 'gorliz', 48630, '43.416832', '-2.933393');INSERT INTO MUNICIPIOS VALUES
(7569, 44, 'Gerea', 'gerea', 48269, '43.220408', '-2.552948');INSERT INTO MUNICIPIOS VALUES
(7570, 44, 'Ibarrangelu', 'ibarrangelu', 48311, '43.389924', '-2.633586');INSERT INTO MUNICIPIOS VALUES
(7571, 44, 'Igorre', 'igorre', 48140, '43.166030', '-2.775936');INSERT INTO MUNICIPIOS VALUES
(7572, 44, 'Ispaster', 'ispaster', 48288, '43.363129', '-2.544665');INSERT INTO MUNICIPIOS VALUES
(7573, 44, 'Iurreta', 'iurreta', 48215, '43.176828', '-2.634144');INSERT INTO MUNICIPIOS VALUES
(7574, 44, 'Izurtza', 'izurtza', 48213, '43.152475', '-2.642212');INSERT INTO MUNICIPIOS VALUES
(7575, 44, 'Karrantza Harana/Valle de Carranza', 'karrantza-harana-valle-de-carranza', 48891, '43.225787', '-3.359284');INSERT INTO MUNICIPIOS VALUES
(7576, 44, 'Kortezubi', 'kortezubi', 48315, '43.336135', '-2.654958');INSERT INTO MUNICIPIOS VALUES
(7577, 44, 'Lanestosa', 'lanestosa', 48895, '43.221284', '-3.439450');INSERT INTO MUNICIPIOS VALUES
(7578, 44, 'Larrabetzu', 'larrabetzu', 48195, '43.260737', '-2.796450');INSERT INTO MUNICIPIOS VALUES
(7579, 44, 'Laukiz', 'laukiz', 48111, '43.353581', '-2.905927');INSERT INTO MUNICIPIOS VALUES
(7580, 44, 'Leioa', 'leioa', 48940, '43.326083', '-2.988110');INSERT INTO MUNICIPIOS VALUES
(7581, 44, 'Lekeitio', 'lekeitio', 48280, '43.365781', '-2.503166');INSERT INTO MUNICIPIOS VALUES
(7582, 44, 'Lemoa', 'lemoa', 48330, '43.208898', '-2.774734');INSERT INTO MUNICIPIOS VALUES
(7583, 44, 'Lemoiz', 'lemoiz', 48620, '43.413309', '-2.902150');INSERT INTO MUNICIPIOS VALUES
(7584, 44, 'Lezama', 'lezama', 48196, '43.272550', '-2.832756');INSERT INTO MUNICIPIOS VALUES
(7585, 44, 'Loiu', 'loiu', 48180, '43.314749', '-2.938542');INSERT INTO MUNICIPIOS VALUES
(7586, 44, 'Mallabia', 'mallabia', 48269, '43.189877', '-2.530074');INSERT INTO MUNICIPIOS VALUES
(7587, 44, 'MaÒaria', 'manaria', 48212, '43.137665', '-2.661180');INSERT INTO MUNICIPIOS VALUES
(7588, 44, 'Markina-Xemein', 'markina-xemein', 48270, '43.270706', '-2.498231');INSERT INTO MUNICIPIOS VALUES
(7589, 44, 'Maruri-Jatabe', 'maruri-jatabe', 48112, '43.383063', '-2.875371');INSERT INTO MUNICIPIOS VALUES
(7590, 44, 'Mendata', 'mendata', 48382, '43.283610', '-2.633286');INSERT INTO MUNICIPIOS VALUES
(7591, 44, 'Mendexa', 'mendexa', 48289, '43.346622', '-2.483039');INSERT INTO MUNICIPIOS VALUES
(7592, 44, 'MeÒaka', 'menaka', 48120, '43.364658', '-2.801299');INSERT INTO MUNICIPIOS VALUES
(7593, 44, 'Morga', 'morga', 48115, '43.298104', '-2.752805');INSERT INTO MUNICIPIOS VALUES
(7594, 44, 'Mundaka', 'mundaka', 48360, '43.407542', '-2.698431');INSERT INTO MUNICIPIOS VALUES
(7595, 44, 'Mungia', 'mungia', 48100, '43.354704', '-2.846918');INSERT INTO MUNICIPIOS VALUES
(7596, 44, 'Munitibar-Arbatzegi Gerrikaitz', 'munitibar-arbatzegi-gerrikaitz', 48381, '43.265394', '-2.592173');INSERT INTO MUNICIPIOS VALUES
(7597, 44, 'Murueta', 'murueta', 48394, '43.354642', '-2.683797');INSERT INTO MUNICIPIOS VALUES
(7598, 44, 'Muskiz', 'muskiz', 48550, '43.323117', '-3.121791');INSERT INTO MUNICIPIOS VALUES
(7599, 44, 'Muxika', 'muxika', 48392, '43.290045', '-2.692895');INSERT INTO MUNICIPIOS VALUES
(7600, 44, 'Nabarniz', 'nabarniz', 48312, '43.321306', '-2.584105');INSERT INTO MUNICIPIOS VALUES
(7601, 44, 'Ondarroa', 'ondarroa', 48700, '43.321119', '-2.421627');INSERT INTO MUNICIPIOS VALUES
(7602, 44, 'Orozko', 'orozko', 48410, '43.108628', '-2.910991');INSERT INTO MUNICIPIOS VALUES
(7603, 44, 'Ortuella', 'ortuella', 48530, '43.311596', '-3.055787');INSERT INTO MUNICIPIOS VALUES
(7604, 44, 'Otxandio', 'otxandio', 48210, '43.040508', '-2.655387');INSERT INTO MUNICIPIOS VALUES
(7605, 44, 'Plentzia', 'plentzia', 48620, '43.404923', '-2.950602');INSERT INTO MUNICIPIOS VALUES
(7606, 44, 'Portugalete', 'portugalete', 48920, '43.320963', '-3.019695');INSERT INTO MUNICIPIOS VALUES
(7607, 44, 'Santurtzi', 'santurtzi', 48980, '43.328986', '-3.031712');INSERT INTO MUNICIPIOS VALUES
(7608, 44, 'Sestao', 'sestao', 48910, '43.307505', '-2.996006');INSERT INTO MUNICIPIOS VALUES
(7609, 44, 'Sondika', 'sondika', 48150, '43.300759', '-2.924852');INSERT INTO MUNICIPIOS VALUES
(7610, 44, 'Sopelana', 'sopelana', 48600, '43.379133', '-2.983088');INSERT INTO MUNICIPIOS VALUES
(7611, 44, 'Sopuerta', 'sopuerta', 48190, '43.262925', '-3.152819');INSERT INTO MUNICIPIOS VALUES
(7612, 44, 'Sukarrieta', 'sukarrieta', 48395, '43.395631', '-2.696714');INSERT INTO MUNICIPIOS VALUES
(7613, 44, 'Trucios-Turtzioz', 'trucios-turtzioz', 48880, '43.272862', '-3.289504');INSERT INTO MUNICIPIOS VALUES
(7614, 44, 'Ubide', 'ubide', 48145, '43.026832', '-2.687359');INSERT INTO MUNICIPIOS VALUES
(7615, 44, 'Ugao-Miraballes', 'ugao-miraballes', 48490, '43.179676', '-2.902279');INSERT INTO MUNICIPIOS VALUES
(7616, 44, 'Urduliz', 'urduliz', 48610, '43.379632', '-2.961502');INSERT INTO MUNICIPIOS VALUES
(7617, 44, 'UrduÒa-OrduÒa', 'urduna-orduna', 48460, '42.994447', '-3.009632');INSERT INTO MUNICIPIOS VALUES
(7618, 44, 'Valle de Tr·paga-Trapagaran', 'valle-de-trapaga-trapagaran', 48510, '43.302789', '-3.035574');INSERT INTO MUNICIPIOS VALUES
(7619, 44, 'Zaldibar', 'zaldibar', 48250, '43.170788', '-2.546167');INSERT INTO MUNICIPIOS VALUES
(7620, 44, 'Zalla', 'zalla', 48860, '43.213516', '-3.135105');INSERT INTO MUNICIPIOS VALUES
(7621, 44, 'Zamudio', 'zamudio', 48170, '43.283391', '-2.865415');INSERT INTO MUNICIPIOS VALUES
(7622, 44, 'Zaratamo', 'zaratamo', 48480, '43.211244', '-2.873697');INSERT INTO MUNICIPIOS VALUES
(7623, 44, 'Zeanuri', 'zeanuri', 48144, '43.099823', '-2.749629');INSERT INTO MUNICIPIOS VALUES
(7624, 44, 'Zeberio', 'zeberio', 48499, '43.153102', '-2.852583');INSERT INTO MUNICIPIOS VALUES
(7625, 44, 'Zierbena', 'zierbena', 48508, '43.347933', '-3.085613');INSERT INTO MUNICIPIOS VALUES
(7626, 44, 'Ziortza-Bolibar', 'ziortza-bolibar', 48278, '43.249798', '-2.549987');INSERT INTO MUNICIPIOS VALUES
(7628, 48, 'Abezames', 'abezames', 49834, '41.625410', '-5.426024');INSERT INTO MUNICIPIOS VALUES
(7629, 48, 'AlcaÒices', 'alcanices', 49500, '41.698893', '-6.347585');INSERT INTO MUNICIPIOS VALUES
(7630, 48, 'Alcubilla de Nogales', 'alcubilla-de-nogales', 49696, '42.127845', '-5.921889');INSERT INTO MUNICIPIOS VALUES
(7631, 48, 'Alfaraz de Sayago', 'alfaraz-de-sayago', 49177, '41.227538', '-5.981323');INSERT INTO MUNICIPIOS VALUES
(7632, 48, 'Algodre', 'algodre', 49539, '41.566958', '-5.602890');INSERT INTO MUNICIPIOS VALUES
(7633, 48, 'Almaraz de Duero', 'almaraz-de-duero', 49180, '41.474225', '-5.914464');INSERT INTO MUNICIPIOS VALUES
(7634, 48, 'Almeida de Sayago', 'almeida-de-sayago', 49210, '41.264205', '-6.072899');INSERT INTO MUNICIPIOS VALUES
(7635, 48, 'AndavÌas', 'andavias', 49162, '41.595915', '-5.862729');INSERT INTO MUNICIPIOS VALUES
(7636, 48, 'Arcenillas', 'arcenillas', 49151, '41.457226', '-5.684359');INSERT INTO MUNICIPIOS VALUES
(7637, 48, 'Arcos de la Polvorosa', 'arcos-de-la-polvorosa', 49699, '41.945250', '-5.698709');INSERT INTO MUNICIPIOS VALUES
(7638, 48, 'ArgaÒÌn', 'arganin', 49251, '41.438032', '-6.212450');INSERT INTO MUNICIPIOS VALUES
(7639, 48, 'Argujillo', 'argujillo', 49716, '41.311101', '-5.586628');INSERT INTO MUNICIPIOS VALUES
(7640, 48, 'Arquillinos', 'arquillinos', 49126, '41.708340', '-5.654794');INSERT INTO MUNICIPIOS VALUES
(7641, 48, 'Arrabalde', 'arrabalde', 49696, '42.107725', '-5.895434');INSERT INTO MUNICIPIOS VALUES
(7642, 48, 'Aspariegos', 'aspariegos', 49124, '41.673808', '-5.597566');INSERT INTO MUNICIPIOS VALUES
(7643, 48, 'Asturianos', 'asturianos', 49325, '42.051350', '-6.489138');INSERT INTO MUNICIPIOS VALUES
(7644, 48, 'AyoÛ de Vidriales', 'ayoo-de-vidriales', 49619, '42.129350', '-6.063659');INSERT INTO MUNICIPIOS VALUES
(7645, 48, 'Barcial del Barco', 'barcial-del-barco', 49760, '41.935220', '-5.662819');INSERT INTO MUNICIPIOS VALUES
(7646, 48, 'Belver de los Montes', 'belver-de-los-montes', 49830, '41.722867', '-5.450675');INSERT INTO MUNICIPIOS VALUES
(7647, 48, 'Benavente', 'benavente', 49600, '42.003352', '-5.677796');INSERT INTO MUNICIPIOS VALUES
(7648, 48, 'Benegiles', 'benegiles', 49123, '41.629035', '-5.634598');INSERT INTO MUNICIPIOS VALUES
(7649, 48, 'Bermillo de Sayago', 'bermillo-de-sayago', 49200, '41.366471', '-6.108967');INSERT INTO MUNICIPIOS VALUES
(7650, 48, 'BÛveda de Toro', 'boveda-de-toro', 49155, '41.343333', '-5.410110');INSERT INTO MUNICIPIOS VALUES
(7651, 48, 'BretÛ', 'breto', 49751, '41.882055', '-5.738339');INSERT INTO MUNICIPIOS VALUES
(7652, 48, 'Bretocino', 'bretocino', 49698, '41.883493', '-5.754476');INSERT INTO MUNICIPIOS VALUES
(7653, 48, 'Brime de Sog', 'brime-de-sog', 49629, '42.061784', '-6.047459');INSERT INTO MUNICIPIOS VALUES
(7654, 48, 'Brime de Urz', 'brime-de-urz', 49622, '42.038648', '-5.873137');INSERT INTO MUNICIPIOS VALUES
(7655, 48, 'Burganes de Valverde', 'burganes-de-valverde', 49698, '41.921343', '-5.780654');INSERT INTO MUNICIPIOS VALUES
(7656, 48, 'Bustillo del Oro', 'bustillo-del-oro', 49831, '41.674098', '-5.461192');INSERT INTO MUNICIPIOS VALUES
(7657, 48, 'CabaÒas de Sayago', 'cabanas-de-sayago', 49709, '41.334029', '-5.790310');INSERT INTO MUNICIPIOS VALUES
(7658, 48, 'Calzadilla de Tera', 'calzadilla-de-tera', 49331, '41.980996', '-6.082563');INSERT INTO MUNICIPIOS VALUES
(7659, 48, 'Camarzana de Tera', 'camarzana-de-tera', 49332, '41.995063', '-6.029563');INSERT INTO MUNICIPIOS VALUES
(7660, 48, 'CaÒizal', 'canizal', 49440, '41.167445', '-5.368366');INSERT INTO MUNICIPIOS VALUES
(7661, 48, 'CaÒizo', 'canizo', 49128, '41.768879', '-5.502605');INSERT INTO MUNICIPIOS VALUES
(7662, 48, 'Carbajales de Alba', 'carbajales-de-alba', 49160, '41.654092', '-5.996861');INSERT INTO MUNICIPIOS VALUES
(7663, 48, 'Carbellino', 'carbellino', 49211, '41.230896', '-6.147709');INSERT INTO MUNICIPIOS VALUES
(7664, 48, 'Casaseca de Campe·n', 'casaseca-de-campean', 49708, '41.374297', '-5.746665');INSERT INTO MUNICIPIOS VALUES
(7665, 48, 'Casaseca de las Chanas', 'casaseca-de-las-chanas', 49151, '41.438222', '-5.675597');INSERT INTO MUNICIPIOS VALUES
(7666, 48, 'Castrillo de la GuareÒa', 'castrillo-de-la-guarena', 49419, '41.230347', '-5.326180');INSERT INTO MUNICIPIOS VALUES
(7667, 48, 'Castrogonzalo', 'castrogonzalo', 49660, '41.991267', '-5.604057');INSERT INTO MUNICIPIOS VALUES
(7668, 48, 'Castronuevo', 'castronuevo', 49127, '41.721714', '-5.543289');INSERT INTO MUNICIPIOS VALUES
(7669, 48, 'Castroverde de Campos', 'castroverde-de-campos', 49110, '41.970659', '-5.313864');INSERT INTO MUNICIPIOS VALUES
(7670, 48, 'Cazurra', 'cazurra', 49191, '41.970435', '-5.315065');INSERT INTO MUNICIPIOS VALUES
(7671, 48, 'Cerecinos de Campos', 'cerecinos-de-campos', 49640, '41.900297', '-5.485268');INSERT INTO MUNICIPIOS VALUES
(7672, 48, 'Cerecinos del Carrizal', 'cerecinos-del-carrizal', 49125, '41.683553', '-5.652680');INSERT INTO MUNICIPIOS VALUES
(7673, 48, 'Cernadilla', 'cernadilla', 49325, '42.021243', '-6.412926');INSERT INTO MUNICIPIOS VALUES
(7674, 48, 'Cobreros', 'cobreros', 49396, '42.075546', '-6.700974');INSERT INTO MUNICIPIOS VALUES
(7675, 48, 'Coomonte', 'coomonte', 49783, '42.115479', '-5.813527');INSERT INTO MUNICIPIOS VALUES
(7676, 48, 'Coreses', 'coreses', 49530, '41.548319', '-5.622253');INSERT INTO MUNICIPIOS VALUES
(7677, 48, 'Corrales del Vino', 'corralesdelvino', 49700, '41.306827', '-5.721130');INSERT INTO MUNICIPIOS VALUES
(7678, 48, 'Cotanes del Monte', 'cotanes-del-monte', 49639, '41.817833', '-5.289831');INSERT INTO MUNICIPIOS VALUES
(7679, 48, 'Cubillos', 'cubillos', 49730, '41.575100', '-5.739412');INSERT INTO MUNICIPIOS VALUES
(7680, 48, 'Cubo de Benavente', 'cubo-de-benavente', 49327, '42.124074', '-6.161613');INSERT INTO MUNICIPIOS VALUES
(7681, 48, 'Cubo de Tierra del Vino', 'cubo-de-tierra-del-vino', 49710, '41.253936', '-5.713062');INSERT INTO MUNICIPIOS VALUES
(7682, 48, 'Cuelgamures', 'cuelgamures', 49717, '41.306311', '-5.657616');INSERT INTO MUNICIPIOS VALUES
(7683, 48, 'Entrala', 'entrala', 49721, '41.430372', '-5.754690');INSERT INTO MUNICIPIOS VALUES
(7684, 48, 'EspadaÒedo', 'espadanedo', 49342, '42.116434', '-6.394815');INSERT INTO MUNICIPIOS VALUES
(7685, 48, 'Faramontanos de T·bara', 'faramontanos-de-tabara', 49141, '41.837531', '-5.888243');INSERT INTO MUNICIPIOS VALUES
(7686, 48, 'Fariza', 'fariza', 49213, '41.416502', '-6.266327');INSERT INTO MUNICIPIOS VALUES
(7687, 48, 'Fermoselle', 'fermoselle', 49220, '41.317657', '-6.399708');INSERT INTO MUNICIPIOS VALUES
(7688, 48, 'Ferreras de Abajo', 'ferreras-de-abajo', 49335, '41.898444', '-6.077499');INSERT INTO MUNICIPIOS VALUES
(7689, 48, 'Ferreras de Arriba', 'ferreras-de-arriba', 49335, '41.899019', '-6.195087');INSERT INTO MUNICIPIOS VALUES
(7690, 48, 'Ferreruela', 'ferreruela', 49550, '41.767183', '-6.071577');INSERT INTO MUNICIPIOS VALUES
(7691, 48, 'Figueruela de Arriba', 'figueruela-de-arriba', 49520, '41.869433', '-6.440907');INSERT INTO MUNICIPIOS VALUES
(7692, 48, 'La Fonfria', 'lafonfria', 49510, '41.636743', '-6.136808');INSERT INTO MUNICIPIOS VALUES
(7693, 48, 'Fresno de la Polvorosa', 'fresno-de-la-polvorosa', 49693, '42.083573', '-5.770183');INSERT INTO MUNICIPIOS VALUES
(7694, 48, 'Fresno de la Ribera', 'fresno-de-la-ribera', 49590, '41.529303', '-5.568352');INSERT INTO MUNICIPIOS VALUES
(7695, 48, 'Fresno de Sayago', 'fresno-de-sayago', 49216, '41.319205', '-5.970640');INSERT INTO MUNICIPIOS VALUES
(7696, 48, 'Friera de Valverde', 'friera-de-valverde', 49698, '41.914222', '-5.837860');INSERT INTO MUNICIPIOS VALUES
(7697, 48, 'Fuente Encalada', 'fuente-encalada', 49618, '42.111022', '-5.996604');INSERT INTO MUNICIPIOS VALUES
(7698, 48, 'FuentelapeÒa', 'fuentelapena', 49410, '41.251871', '-5.384502');INSERT INTO MUNICIPIOS VALUES
(7699, 48, 'Fuentes de Ropel', 'fuentes-de-ropel', 49670, '42.004088', '-5.544662');INSERT INTO MUNICIPIOS VALUES
(7700, 48, 'Fuentesa˙co', 'fuentesauco', 49400, '41.229669', '-5.496340');INSERT INTO MUNICIPIOS VALUES
(7701, 48, 'Fuentesecas', 'fuentesecas', 49833, '41.630649', '-5.472350');INSERT INTO MUNICIPIOS VALUES
(7702, 48, 'Fuentespreadas', 'fuentespreadas', 49714, '41.325876', '-5.629034');INSERT INTO MUNICIPIOS VALUES
(7703, 48, 'Galende', 'galende', 49360, '42.104209', '-6.662178');INSERT INTO MUNICIPIOS VALUES
(7704, 48, 'Gallegos del Pan', 'gallegos-del-pan', 49539, '41.600521', '-5.581527');INSERT INTO MUNICIPIOS VALUES
(7706, 48, 'Gamones', 'gamones', 49251, '41.468232', '-6.179295');INSERT INTO MUNICIPIOS VALUES
(7707, 48, 'Gema', 'gema', 49151, '41.418659', '-5.648518');INSERT INTO MUNICIPIOS VALUES
(7708, 48, 'Granja de Moreruela', 'granja-de-moreruela', 49740, '41.811563', '-5.739326');INSERT INTO MUNICIPIOS VALUES
(7709, 48, 'Granucillo', 'granucillo', 49621, '42.052001', '-5.927296');INSERT INTO MUNICIPIOS VALUES
(7710, 48, 'Guarrate', 'guarrate', 49156, '41.290210', '-5.439644');INSERT INTO MUNICIPIOS VALUES
(7711, 48, 'Hermisende', 'hermisende', 49572, '41.969063', '-6.895981');INSERT INTO MUNICIPIOS VALUES
(7712, 48, 'Hiniesta', 'hiniesta', 49192, '41.552334', '-5.798893');INSERT INTO MUNICIPIOS VALUES
(7713, 48, 'Jambrina', 'jambrina', 49191, '41.393294', '-5.665298');INSERT INTO MUNICIPIOS VALUES
(7714, 48, 'Justel', 'justel', 49340, '42.148705', '-6.295638');INSERT INTO MUNICIPIOS VALUES
(7715, 48, 'Losacino', 'losacino', 49541, '41.681342', '-6.079173');INSERT INTO MUNICIPIOS VALUES
(7716, 48, 'Losacio', 'losacio', 49540, '41.711720', '-6.040764');INSERT INTO MUNICIPIOS VALUES
(7717, 48, 'Lubi·n', 'lubian', 49570, '42.034568', '-6.909285');INSERT INTO MUNICIPIOS VALUES
(7718, 48, 'Luelmo', 'luelmo', 49215, '41.439734', '-6.135113');INSERT INTO MUNICIPIOS VALUES
(7719, 48, 'Maderal', 'maderal', 49719, '41.282193', '-5.622468');INSERT INTO MUNICIPIOS VALUES
(7720, 48, 'Madridanos', 'madridanos', 49157, '41.479422', '-5.604615');INSERT INTO MUNICIPIOS VALUES
(7721, 48, 'Mahide', 'mahide', 49522, '41.868922', '-6.378508');INSERT INTO MUNICIPIOS VALUES
(7722, 48, 'Maire de Castroponce', 'maire-de-castroponce', 49783, '42.111850', '-5.784087');INSERT INTO MUNICIPIOS VALUES
(7723, 48, 'Malva', 'malva', 49832, '41.654221', '-5.487800');INSERT INTO MUNICIPIOS VALUES
(7724, 48, 'Manganeses de la Lampreana', 'manganeses-de-la-lampreana', 49130, '41.750600', '-5.708170');INSERT INTO MUNICIPIOS VALUES
(7725, 48, 'Manganeses de la Polvorosa', 'manganeses-de-la-polvorosa', 49694, '42.034791', '-5.747309');INSERT INTO MUNICIPIOS VALUES
(7726, 48, 'Manzanal de Arriba', 'manzanal-de-arriba', 49594, '41.992990', '-6.439447');INSERT INTO MUNICIPIOS VALUES
(7727, 48, 'Manzanal de los Infantes', 'manzanal-de-los-infantes', 49317, '42.054104', '-6.381083');INSERT INTO MUNICIPIOS VALUES
(7728, 48, 'Manzanal del Barco', 'manzanal-del-barco', 49163, '41.636679', '-5.947981');INSERT INTO MUNICIPIOS VALUES
(7729, 48, 'Matilla de ArzÛn', 'matilla-de-arzon', 49692, '42.105227', '-5.642767');INSERT INTO MUNICIPIOS VALUES
(7730, 48, 'Matilla la Seca', 'matilla-la-seca', 49590, '41.580204', '-5.500202');INSERT INTO MUNICIPIOS VALUES
(7731, 48, 'Mayalde', 'mayalde', 49718, '41.249935', '-5.797863');INSERT INTO MUNICIPIOS VALUES
(7732, 48, 'Melgar de Tera', 'melgar-de-tera', 49626, '41.967532', '-6.015015');INSERT INTO MUNICIPIOS VALUES
(7733, 48, 'Micereces de Tera', 'micereces-de-tera', 49624, '41.989226', '-5.870905');INSERT INTO MUNICIPIOS VALUES
(7734, 48, 'Milles de la Polvorosa', 'milles-de-la-polvorosa', 49699, '41.924568', '-5.732803');INSERT INTO MUNICIPIOS VALUES
(7735, 48, 'Molacillos', 'molacillos', 49120, '41.582901', '-5.659032');INSERT INTO MUNICIPIOS VALUES
(7736, 48, 'Molezuelas de la Carballeda', 'molezuelas-de-la-carballeda', 49327, '42.082809', '-6.185646');INSERT INTO MUNICIPIOS VALUES
(7737, 48, 'Mombuey', 'mombuey', 49310, '42.024240', '-6.330442');INSERT INTO MUNICIPIOS VALUES
(7738, 48, 'Monfarracinos', 'monfarracinos', 49121, '41.553763', '-5.707848');INSERT INTO MUNICIPIOS VALUES
(7739, 48, 'Montamarta', 'montamarta', 49149, '41.646941', '-5.802841');INSERT INTO MUNICIPIOS VALUES
(7740, 48, 'Moral de Sayago', 'moral-de-sayago', 49254, '41.473024', '-6.100845');INSERT INTO MUNICIPIOS VALUES
(7742, 48, 'Moraleja del Vino', 'moraleja-del-vino', 49150, '41.464984', '-5.654182');INSERT INTO MUNICIPIOS VALUES
(7743, 48, 'Morales de Rey', 'morales-de-rey', 49693, '42.067486', '-5.786705');INSERT INTO MUNICIPIOS VALUES
(7744, 48, 'Morales de Toro', 'morales-de-toro', 49810, '41.536852', '-5.309014');INSERT INTO MUNICIPIOS VALUES
(7745, 48, 'Morales de Valverde', 'morales-de-valverde', 49697, '41.940467', '-5.889702');INSERT INTO MUNICIPIOS VALUES
(7746, 48, 'Morales del Vino', 'morales-del-vino', 49190, '41.446522', '-5.730486');INSERT INTO MUNICIPIOS VALUES
(7747, 48, 'Moralina', 'moralina', 49253, '41.489710', '-6.137924');INSERT INTO MUNICIPIOS VALUES
(7748, 48, 'Moreruela de los Infanzones', 'moreruela-de-los-infanzones', 49731, '41.631643', '-5.706582');INSERT INTO MUNICIPIOS VALUES
(7749, 48, 'Moreruela de T·bara', 'moreruela-de-tabara', 49148, '41.799215', '-5.871291');INSERT INTO MUNICIPIOS VALUES
(7750, 48, 'Muelas de los Caballeros', 'muelas-de-los-caballeros', 49341, '42.127575', '-6.336536');INSERT INTO MUNICIPIOS VALUES
(7751, 48, 'Muelas del Pan', 'muelas-del-pan', 49167, '41.523552', '-5.970469');INSERT INTO MUNICIPIOS VALUES
(7752, 48, 'Muga de Sayago', 'muga-de-sayago', 49212, '41.390493', '-6.200838');INSERT INTO MUNICIPIOS VALUES
(7753, 48, 'Navianos de Valverde', 'navianos-de-valverde', 49697, '41.954097', '-5.816574');INSERT INTO MUNICIPIOS VALUES
(7754, 48, 'Olmillos de Castro', 'olmillos-de-castro', 49147, '41.732444', '-5.968065');INSERT INTO MUNICIPIOS VALUES
(7755, 48, 'Otero de Bodas', 'otero-de-bodas', 49336, '41.939510', '-6.150627');INSERT INTO MUNICIPIOS VALUES
(7756, 48, 'Pajares de la Lampreana', 'pajares-de-la-lampreana', 49142, '41.715980', '-5.692205');INSERT INTO MUNICIPIOS VALUES
(7757, 48, 'Palacios de Sanabria', 'palacios-de-sanabria', 49322, '42.055730', '-6.526909');INSERT INTO MUNICIPIOS VALUES
(7758, 48, 'Palacios del Pan', 'palacios-del-pan', 49162, '41.602511', '-5.877428');INSERT INTO MUNICIPIOS VALUES
(7759, 48, 'Pedralba de la PraderÌa', 'pedralba-de-la-praderia', 49392, '42.028639', '-6.692562');INSERT INTO MUNICIPIOS VALUES
(7760, 48, 'El Pego', 'elpego', 49154, '41.333256', '-5.468788');INSERT INTO MUNICIPIOS VALUES
(7761, 48, 'Peleagonzalo', 'peleagonzalo', 49880, '41.482091', '-5.481062');INSERT INTO MUNICIPIOS VALUES
(7762, 48, 'Peleas de Abajo', 'peleas-de-abajo', 49191, '41.393520', '-5.690060');INSERT INTO MUNICIPIOS VALUES
(7763, 48, 'PeÒausende', 'penausende', 49178, '41.286320', '-5.865154');INSERT INTO MUNICIPIOS VALUES
(7764, 48, 'Peque', 'peque', 49318, '42.073762', '-6.275339');INSERT INTO MUNICIPIOS VALUES
(7765, 48, 'PerdigÛn', 'perdigon', 49720, '41.411836', '-5.753360');INSERT INTO MUNICIPIOS VALUES
(7766, 48, 'Pereruela', 'pereruela', 49280, '41.416728', '-5.878973');INSERT INTO MUNICIPIOS VALUES
(7767, 48, 'Perilla de Castro', 'perilla-de-castro', 49145, '41.726359', '-5.876226');INSERT INTO MUNICIPIOS VALUES
(7768, 48, 'PÌas', 'pias', 49580, '42.086216', '-6.999364');INSERT INTO MUNICIPIOS VALUES
(7769, 48, 'Piedrahita de Castro', 'piedrahita-de-castro', 49143, '41.679515', '-5.728340');INSERT INTO MUNICIPIOS VALUES
(7770, 48, 'Pinilla de Toro', 'pinilla-de-toro', 49850, '41.627248', '-5.364933');INSERT INTO MUNICIPIOS VALUES
(7771, 48, 'Pino del Oro', 'pino-del-oro', 49514, '41.574811', '-6.120501');INSERT INTO MUNICIPIOS VALUES
(7772, 48, 'PiÒero', 'pinero', 49715, '41.352910', '-5.588050');INSERT INTO MUNICIPIOS VALUES
(7773, 48, 'Pobladura de Valderaduey', 'pobladura-de-valderaduey', 49127, '41.700922', '-5.541444');INSERT INTO MUNICIPIOS VALUES
(7774, 48, 'Pobladura del Valle', 'pobladura-del-valle', 49780, '42.103031', '-5.734262');INSERT INTO MUNICIPIOS VALUES
(7775, 48, 'Porto', 'porto', 49583, '42.167984', '-6.897869');INSERT INTO MUNICIPIOS VALUES
(7776, 48, 'Pozoantiguo', 'pozoantiguo', 49835, '41.597473', '-5.435743');INSERT INTO MUNICIPIOS VALUES
(7777, 48, 'Pozuelo de T·bara', 'pozuelo-de-tabara', 49148, '41.785457', '-5.895452');INSERT INTO MUNICIPIOS VALUES
(7778, 48, 'Prado', 'prado', 49638, '41.920960', '-5.419049');INSERT INTO MUNICIPIOS VALUES
(7779, 48, 'Puebla de Sanabria', 'puebla-de-sanabria', 49300, '42.055283', '-6.633854');INSERT INTO MUNICIPIOS VALUES
(7780, 48, 'Pueblica de Valverde', 'pueblica-de-valverde', 49697, '41.919747', '-5.898070');INSERT INTO MUNICIPIOS VALUES
(7781, 48, 'Quintanilla de Urz', 'quintanilla-de-urz', 49622, '42.033548', '-5.848503');INSERT INTO MUNICIPIOS VALUES
(7782, 48, 'Quintanilla del Monte', 'quintanilla-del-monte', 49639, '41.818856', '-5.289831');INSERT INTO MUNICIPIOS VALUES
(7783, 48, 'Quintanilla del Olmo', 'quintanilla-del-olmo', 49638, '41.906302', '-5.407977');INSERT INTO MUNICIPIOS VALUES
(7784, 48, 'Quiruelas de Vidriales', 'quiruelas-de-vidriales', 49622, '42.019011', '-5.828805');INSERT INTO MUNICIPIOS VALUES
(7785, 48, 'Rabanales', 'rabanales', 49519, '41.742211', '-6.278558');INSERT INTO MUNICIPIOS VALUES
(7786, 48, 'R·bano de Aliste', 'rabano-de-aliste', 49515, '41.745509', '-6.434126');INSERT INTO MUNICIPIOS VALUES
(7787, 48, 'Requejo', 'requejo', 49394, '42.030902', '-6.741571');INSERT INTO MUNICIPIOS VALUES
(7788, 48, 'Revellinos', 'revellinos', 49135, '41.890585', '-5.569382');INSERT INTO MUNICIPIOS VALUES
(7789, 48, 'RiofrÌo de Aliste', 'riofrio-de-aliste', 49591, '41.817385', '-6.177578');INSERT INTO MUNICIPIOS VALUES
(7790, 48, 'Rionegro del Puente', 'rionegro-del-puente', 49326, '42.007277', '-6.226845');INSERT INTO MUNICIPIOS VALUES
(7791, 48, 'Roales', 'roales', 49192, '41.552655', '-5.771255');INSERT INTO MUNICIPIOS VALUES
(7792, 48, 'Robleda-Cervantes', 'robleda-cervantes', 49004, '42.095094', '-6.590016');INSERT INTO MUNICIPIOS VALUES
(7793, 48, 'Roelos de Sayago', 'roelos-de-sayago', 49211, '41.254968', '-6.171055');INSERT INTO MUNICIPIOS VALUES
(7794, 48, 'Rosinos de la Requejada', 'rosinos-de-la-requejada', 49322, '42.085484', '-6.533089');INSERT INTO MUNICIPIOS VALUES
(7795, 48, 'Salce', 'salce', 49211, '41.270049', '-6.219656');INSERT INTO MUNICIPIOS VALUES
(7796, 48, 'Samir de los CaÒos', 'samir-de-los-canos', 49513, '41.673809', '-6.165390');INSERT INTO MUNICIPIOS VALUES
(7797, 48, 'San AgustÌn del Pozo', 'san-agustin-del-pozo', 49135, '41.885665', '-5.594230');INSERT INTO MUNICIPIOS VALUES
(7798, 48, 'San Cebri·n de Castro', 'san-cebrian-de-castro', 49144, '41.706241', '-5.753059');INSERT INTO MUNICIPIOS VALUES
(7799, 48, 'San CristÛbal de EntreviÒas', 'san-cristobal-de-entrevinas', 49690, '42.047699', '-5.633926');INSERT INTO MUNICIPIOS VALUES
(7800, 48, 'San Esteban del Molar', 'san-esteban-del-molar', 49650, '41.937530', '-5.552087');INSERT INTO MUNICIPIOS VALUES
(7801, 48, 'San Justo', 'san-justo', 49358, '42.169638', '-6.633682');INSERT INTO MUNICIPIOS VALUES
(7802, 48, 'San MartÌn de Valderaduey', 'san-martin-de-valderaduey', 49129, '41.814442', '-5.473595');INSERT INTO MUNICIPIOS VALUES
(7803, 48, 'San Miguel de la Ribera', 'san-miguel-de-la-ribera', 49717, '41.331935', '-5.577235');INSERT INTO MUNICIPIOS VALUES
(7804, 48, 'San Miguel del Valle', 'san-miguel-del-valle', 49680, '42.029850', '-5.496254');INSERT INTO MUNICIPIOS VALUES
(7805, 48, 'San Pedro de Ceque', 'san-pedro-de-ceque', 49628, '42.043461', '-6.073380');INSERT INTO MUNICIPIOS VALUES
(7806, 48, 'San Pedro de la Nave-Almendra', 'san-pedro-de-la-nave-almendra', 49183, '41.591182', '-5.921373');INSERT INTO MUNICIPIOS VALUES
(7807, 48, 'San Vicente de la Cabeza', 'san-vicente-de-la-cabeza', 49592, '41.805710', '-6.251392');INSERT INTO MUNICIPIOS VALUES
(7808, 48, 'San Vitero', 'san-vitero', 49523, '41.778865', '-6.347265');INSERT INTO MUNICIPIOS VALUES
(7809, 48, 'Santa Clara de Avedillo', 'santa-clara-de-avedillo', 49707, '41.339797', '-5.676284');INSERT INTO MUNICIPIOS VALUES
(7810, 48, 'Santa Colomba de las Monjas', 'santa-colomba-de-las-monjas', 49699, '41.958756', '-5.685124');INSERT INTO MUNICIPIOS VALUES
(7811, 48, 'Santa Cristina de la Polvorosa', 'santa-cristina-de-la-polvorosa', 49620, '41.999847', '-5.711474');INSERT INTO MUNICIPIOS VALUES
(7812, 48, 'Santa Croya de Tera', 'santa-croya-de-tera', 49626, '41.987503', '-5.975447');INSERT INTO MUNICIPIOS VALUES
(7813, 48, 'Santa Eufemia del Barco', 'santa-eufemia-del-barco', 49161, '41.677928', '-5.899385');INSERT INTO MUNICIPIOS VALUES
(7814, 48, 'Santa MarÌa de la Vega', 'santa-maria-de-la-vega', 49696, '42.085866', '-5.811338');INSERT INTO MUNICIPIOS VALUES
(7815, 48, 'Santa MarÌa de Valverde', 'santa-maria-de-valverde', 49333, '41.935583', '-5.934162');INSERT INTO MUNICIPIOS VALUES
(7816, 48, 'Santib·Òez de Tera', 'santibanez-de-tera', 49625, '41.987312', '-5.923004');INSERT INTO MUNICIPIOS VALUES
(7817, 48, 'Santib·Òez de Vidriales', 'santibanez-de-vidriales', 49610, '42.074527', '-6.013985');INSERT INTO MUNICIPIOS VALUES
(7818, 48, 'Santovenia', 'santovenia', 49750, '41.878572', '-5.708771');INSERT INTO MUNICIPIOS VALUES
(7819, 48, 'Sanzoles', 'sanzoles', 49152, '41.434072', '-5.565434');INSERT INTO MUNICIPIOS VALUES
(7820, 48, 'T·bara', 'tabara', 49140, '41.825572', '-5.959568');INSERT INTO MUNICIPIOS VALUES
(7821, 48, 'Tapioles', 'tapioles', 49639, '41.851534', '-5.490761');INSERT INTO MUNICIPIOS VALUES
(7822, 48, 'La Toro', 'latoro', 49155, '41.346080', '-5.408964');INSERT INTO MUNICIPIOS VALUES
(7823, 48, 'Torre del Valle', 'torre-del-valle', 49781, '42.089783', '-5.722160');INSERT INTO MUNICIPIOS VALUES
(7824, 48, 'Torregamones', 'torregamones', 49252, '41.484791', '-6.176634');INSERT INTO MUNICIPIOS VALUES
(7825, 48, 'Torres del Carrizal', 'torres-del-carrizal', 49122, '41.618394', '-5.668945');INSERT INTO MUNICIPIOS VALUES
(7826, 48, 'Trabazos', 'trabazos', 49516, '41.748007', '-6.492405');INSERT INTO MUNICIPIOS VALUES
(7827, 48, 'Trefacio', 'trefacio', 49359, '42.122291', '-6.652050');INSERT INTO MUNICIPIOS VALUES
(7828, 48, 'UÒa de Quintana', 'una-de-quintana', 49327, '42.087204', '-6.144104');INSERT INTO MUNICIPIOS VALUES
(7829, 48, 'Vadillo de la GuareÒa', 'vadillo-de-la-guarena', 49420, '41.283870', '-5.353088');INSERT INTO MUNICIPIOS VALUES
(7830, 48, 'Valcabado', 'valcabado', 49192, '41.548319', '-5.748897');INSERT INTO MUNICIPIOS VALUES
(7831, 48, 'Valdefinjas', 'valdefinjas', 49882, '41.450382', '-5.452051');INSERT INTO MUNICIPIOS VALUES
(7832, 48, 'Valdescorriel', 'valdescorriel', 49680, '42.022486', '-5.510116');INSERT INTO MUNICIPIOS VALUES
(7833, 48, 'Vallesa de la GuareÒa', 'vallesa-de-la-guarena', 49450, '41.134581', '-5.326009');INSERT INTO MUNICIPIOS VALUES
(7834, 48, 'Vega de Tera', 'vega-de-tera', 49331, '41.999751', '-6.124363');INSERT INTO MUNICIPIOS VALUES
(7835, 48, 'Vega de Villalobos', 'vega-de-villalobos', 49133, '41.970690', '-5.463037');INSERT INTO MUNICIPIOS VALUES
(7836, 48, 'Vegalatrave', 'vegalatrave', 49542, '41.700153', '-6.103678');INSERT INTO MUNICIPIOS VALUES
(7837, 48, 'Venialbo', 'venialbo', 49153, '41.389624', '-5.537024');INSERT INTO MUNICIPIOS VALUES
(7838, 48, 'Vezdemarb·n', 'vezdemarban', 49840, '41.654445', '-5.367336');INSERT INTO MUNICIPIOS VALUES
(7839, 48, 'Vidayanes', 'vidayanes', 49135, '41.908633', '-5.575476');INSERT INTO MUNICIPIOS VALUES
(7840, 48, 'Videmala', 'videmala', 49164, '41.613132', '-6.041708');INSERT INTO MUNICIPIOS VALUES
(7841, 48, 'Villabr·zaro', 'villabrazaro', 49770, '42.053850', '-5.728469');INSERT INTO MUNICIPIOS VALUES
(7842, 48, 'Villabuena del Puente', 'villabuena-del-puente', 49820, '41.381574', '-5.406432');INSERT INTO MUNICIPIOS VALUES
(7843, 48, 'Villadepera', 'villadepera', 49250, '41.548994', '-6.133718');INSERT INTO MUNICIPIOS VALUES
(7844, 48, 'Villaescusa', 'villaescusa', 49430, '41.206620', '-5.464883');INSERT INTO MUNICIPIOS VALUES
(7845, 48, 'Villaf·fila', 'villafafila', 49136, '41.848593', '-5.615129');INSERT INTO MUNICIPIOS VALUES
(7846, 48, 'VillaferrueÒa', 'villaferruena', 49695, '42.097745', '-5.858631');INSERT INTO MUNICIPIOS VALUES
(7847, 48, 'Villageriz', 'villageriz', 49618, '42.118503', '-5.955362');INSERT INTO MUNICIPIOS VALUES
(7848, 48, 'Villalaz·n', 'villalazan', 49158, '41.494435', '-5.589552');INSERT INTO MUNICIPIOS VALUES
(7849, 48, 'Villalba de la Lampreana', 'villalba-de-la-lampreana', 49126, '41.743908', '-5.641437');INSERT INTO MUNICIPIOS VALUES
(7850, 48, 'Villalcampo', 'villalcampo', 49166, '41.523391', '-6.047544');INSERT INTO MUNICIPIOS VALUES
(7851, 48, 'Villalobos', 'villalobos', 49133, '41.946022', '-5.474796');INSERT INTO MUNICIPIOS VALUES
(7852, 48, 'Villalonso', 'villalonso', 49860, '41.597553', '-5.297427');INSERT INTO MUNICIPIOS VALUES
(7853, 48, 'Villalpando', 'villalpando', 49630, '41.865087', '-5.408707');INSERT INTO MUNICIPIOS VALUES
(7854, 48, 'Villalube', 'villalube', 49539, '41.611271', '-5.545177');INSERT INTO MUNICIPIOS VALUES
(7855, 48, 'Villamayor de Campos', 'villamayor-de-campos', 49131, '41.899051', '-5.358109');INSERT INTO MUNICIPIOS VALUES
(7856, 48, 'Villamor de los Escuderos', 'villamor-de-los-escuderos', 49719, '41.252903', '-5.574703');INSERT INTO MUNICIPIOS VALUES
(7857, 48, 'Villan·zar', 'villanazar', 49697, '41.975317', '-5.780740');INSERT INTO MUNICIPIOS VALUES
(7858, 48, 'Villanueva de Azoague', 'villanueva-de-azoague', 49699, '41.974934', '-5.664525');INSERT INTO MUNICIPIOS VALUES
(7859, 48, 'Villanueva de Campe·n', 'villanueva-de-campean', 49708, '41.354359', '-5.769110');INSERT INTO MUNICIPIOS VALUES
(7860, 48, 'Villanueva de las Peras', 'villanueva-de-las-peras', 49333, '41.936222', '-5.978966');INSERT INTO MUNICIPIOS VALUES
(7861, 48, 'Villanueva del Campo', 'villanueva-del-campo', 49100, '41.986227', '-5.405552');INSERT INTO MUNICIPIOS VALUES
(7862, 48, 'Villar de Fallaves', 'villar-de-fallaves', 49132, '41.924153', '-5.340257');INSERT INTO MUNICIPIOS VALUES
(7863, 48, 'Villar del Buey', 'villar-del-buey', 49240, '41.328615', '-6.193886');INSERT INTO MUNICIPIOS VALUES
(7864, 48, 'Villaralbo', 'villaralbo', 49159, '41.492764', '-5.682979');INSERT INTO MUNICIPIOS VALUES
(7865, 48, 'Villardeciervos', 'villardeciervos', 49562, '41.941106', '-6.284437');INSERT INTO MUNICIPIOS VALUES
(7866, 48, 'Villardiegua de la Ribera', 'villardiegua-de-la-ribera', 49250, '41.536981', '-6.179895');INSERT INTO MUNICIPIOS VALUES
(7867, 48, 'Vill·rdiga', 'villardiga', 49129, '41.819240', '-5.463595');INSERT INTO MUNICIPIOS VALUES
(7868, 48, 'Villardondiego', 'villardondiego', 49871, '41.584634', '-5.377593');INSERT INTO MUNICIPIOS VALUES
(7869, 48, 'VillarrÌn de Campos', 'villarrin-de-campos', 49137, '41.796272', '-5.639935');INSERT INTO MUNICIPIOS VALUES
(7870, 48, 'Villaseco del Pan', 'villaseco-del-pan', 49181, '41.470033', '-5.962744');INSERT INTO MUNICIPIOS VALUES
(7871, 48, 'Villavendimio', 'villavendimio', 49870, '41.578503', '-5.343518');INSERT INTO MUNICIPIOS VALUES
(7872, 48, 'Villaveza de Valverde', 'villaveza-de-valverde', 49697, '41.944330', '-5.850563');INSERT INTO MUNICIPIOS VALUES
(7873, 48, 'Villaveza del Agua', 'villaveza-del-agua', 49760, '41.918725', '-5.679717');INSERT INTO MUNICIPIOS VALUES
(7874, 48, 'ViÒas', 'vinas', 49517, '41.773360', '-6.471205');INSERT INTO MUNICIPIOS VALUES
(7875, 48, 'Zamora', 'zamora', 49030, '41.503917', '-5.743918');INSERT INTO MUNICIPIOS VALUES
(7877, 52, 'Abanto', 'abanto', 50375, '41.135456', '-1.700694');INSERT INTO MUNICIPIOS VALUES
(7878, 52, 'Acered', 'acered', 50347, '41.171562', '-1.603498');INSERT INTO MUNICIPIOS VALUES
(7879, 52, 'AgÛn', 'agon', 50560, '41.857285', '-1.452818');INSERT INTO MUNICIPIOS VALUES
(7880, 52, 'AguarÛn', 'aguaron', 50408, '41.340451', '-1.267669');INSERT INTO MUNICIPIOS VALUES
(7881, 52, 'AguilÛn', 'aguilon', 50155, '41.295996', '-1.046224');INSERT INTO MUNICIPIOS VALUES
(7882, 52, 'AinzÛn', 'ainzon', 50570, '41.816095', '-1.518319');INSERT INTO MUNICIPIOS VALUES
(7883, 52, 'AladrÈn', 'aladren', 50481, '41.251055', '-1.156944');INSERT INTO MUNICIPIOS VALUES
(7884, 52, 'AlagÛn', 'alagon', 50630, '41.768195', '-1.126724');INSERT INTO MUNICIPIOS VALUES
(7885, 52, 'Alarba', 'alarba', 50345, '41.206345', '-1.614516');INSERT INTO MUNICIPIOS VALUES
(7886, 52, 'Alberite de San Juan', 'alberite-de-san-juan', 50529, '41.820310', '-1.470758');INSERT INTO MUNICIPIOS VALUES
(7887, 52, 'Albeta', 'albeta', 50549, '41.826947', '-1.499634');INSERT INTO MUNICIPIOS VALUES
(7888, 52, 'Alborge', 'alborge', 50781, '41.334609', '-0.356712');INSERT INTO MUNICIPIOS VALUES
(7889, 52, 'Alcal· de Ebro', 'alcala-de-ebro', 50691, '41.814810', '-1.195549');INSERT INTO MUNICIPIOS VALUES
(7890, 52, 'Alcal· de Moncayo', 'alcala-de-moncayo', 50591, '41.786449', '-1.695929');INSERT INTO MUNICIPIOS VALUES
(7891, 52, 'Alconchel de Ariza', 'alconchel-de-ariza', 42269, '41.203953', '-2.122248');INSERT INTO MUNICIPIOS VALUES
(7892, 52, 'Aldehuela de Liestos', 'aldehuela-de-liestos', 50374, '41.063440', '-1.699694');INSERT INTO MUNICIPIOS VALUES
(7893, 52, 'AlfajarÌn', 'alfajarin', 50172, '41.614045', '-0.703114');INSERT INTO MUNICIPIOS VALUES
(7894, 52, 'AlfamÈn', 'alfamen', 50461, '41.440025', '-1.247824');INSERT INTO MUNICIPIOS VALUES
(7895, 52, 'Alforque', 'alforque', 50783, '41.329745', '-0.385524');INSERT INTO MUNICIPIOS VALUES
(7896, 52, 'Alhama de AragÛn', 'alhama-de-aragon', 50230, '41.296655', '-1.900604');INSERT INTO MUNICIPIOS VALUES
(7897, 52, 'Almochuel', 'almochuel', 44591, '41.280685', '-0.550974');INSERT INTO MUNICIPIOS VALUES
(7898, 52, 'Almolda', 'almolda', 50178, '41.552398', '-0.208397');INSERT INTO MUNICIPIOS VALUES
(7899, 52, 'Almonacid de la Cuba', 'almonacid-de-la-cuba', 50133, '41.278669', '-0.791834');INSERT INTO MUNICIPIOS VALUES
(7900, 52, 'Almonacid de la Sierra', 'almonacid-de-la-sierra', 50108, '41.397596', '-1.323269');INSERT INTO MUNICIPIOS VALUES
(7901, 52, 'Almunia de DoÒa Godina', 'almunia-de-dona-godina', 50100, '41.477200', '-1.377920');INSERT INTO MUNICIPIOS VALUES
(7902, 52, 'Alpartir', 'alpartir', 50109, '41.425496', '-1.380322');INSERT INTO MUNICIPIOS VALUES
(7903, 52, 'Ambel', 'ambel', 50546, '41.796467', '-1.613410');INSERT INTO MUNICIPIOS VALUES
(7904, 52, 'Anento', 'anento', 50369, '41.071375', '-1.334647');INSERT INTO MUNICIPIOS VALUES
(7905, 52, 'AniÛn', 'aninon', 50313, '41.445125', '-1.705345');INSERT INTO MUNICIPIOS VALUES
(7906, 52, 'AÛn de Moncayo', 'anon-de-moncayo', 50590, '41.778485', '-1.720429');INSERT INTO MUNICIPIOS VALUES
(7907, 52, 'Aranda de Moncayo', 'aranda-de-moncayo', 50259, '41.577435', '-1.791554');INSERT INTO MUNICIPIOS VALUES
(7908, 52, 'Ar·ndiga', 'arandiga', 50266, '41.508895', '-1.497514');INSERT INTO MUNICIPIOS VALUES
(7909, 52, 'Ardisa', 'ardisa', 50614, '42.201170', '-0.757862');INSERT INTO MUNICIPIOS VALUES
(7910, 52, 'Ariza', 'ariza', 50220, '41.313095', '-2.053009');INSERT INTO MUNICIPIOS VALUES
(7911, 52, 'Artieda', 'artieda', 50683, '42.585128', '-0.983105');INSERT INTO MUNICIPIOS VALUES
(7912, 52, 'AsÌn', 'asin', 50619, '42.280865', '-1.047821');INSERT INTO MUNICIPIOS VALUES
(7913, 52, 'Atea', 'atea', 50348, '41.159558', '-1.556829');INSERT INTO MUNICIPIOS VALUES
(7914, 52, 'Ateca', 'ateca', 50200, '41.329980', '-1.788909');INSERT INTO MUNICIPIOS VALUES
(7915, 52, 'Azuara', 'azuara', 50140, '41.258599', '-0.872868');INSERT INTO MUNICIPIOS VALUES
(7916, 52, 'Badules', 'badules', 50491, '41.139495', '-1.253419');INSERT INTO MUNICIPIOS VALUES
(7917, 52, 'Bag¸Ès', 'bagues', 50685, '42.547769', '-0.949631');INSERT INTO MUNICIPIOS VALUES
(7918, 52, 'Balconch·n', 'balconchan', 50366, '41.087321', '-1.460258');INSERT INTO MUNICIPIOS VALUES
(7919, 52, 'B·rboles', 'barboles', 50297, '41.709740', '-1.193339');INSERT INTO MUNICIPIOS VALUES
(7920, 52, 'Bardallur', 'bardallur', 50296, '41.684122', '-1.213487');INSERT INTO MUNICIPIOS VALUES
(7921, 52, 'Belchite', 'belchite', 50130, '41.303192', '-0.753003');INSERT INTO MUNICIPIOS VALUES
(7922, 52, 'Belmonte de Graci·n', 'belmonte-de-gracian', 50332, '41.312545', '-1.535754');INSERT INTO MUNICIPIOS VALUES
(7923, 52, 'Berdejo', 'berdejo', 50316, '41.560974', '-1.944465');INSERT INTO MUNICIPIOS VALUES
(7924, 52, 'Berrueco', 'berrueco-zaragoza', 50373, '40.989965', '-1.468104');INSERT INTO MUNICIPIOS VALUES
(7925, 52, 'Biel', 'biel', 50619, '42.386070', '-0.936950');INSERT INTO MUNICIPIOS VALUES
(7926, 52, 'Bijuesca', 'bijuesca', 50316, '41.541738', '-1.922863');INSERT INTO MUNICIPIOS VALUES
(7927, 52, 'Biota', 'biota', 50695, '42.262270', '-1.190784');INSERT INTO MUNICIPIOS VALUES
(7928, 52, 'Bisimbre', 'bisimbre', 50561, '41.855983', '-1.443194');INSERT INTO MUNICIPIOS VALUES
(7929, 52, 'BoquiÒeni', 'boquineni', 50641, '41.847075', '-1.253772');INSERT INTO MUNICIPIOS VALUES
(7930, 52, 'Bordalba', 'bordalba', 50229, '41.416897', '-2.078540');INSERT INTO MUNICIPIOS VALUES
(7931, 52, 'Borja', 'borja', 50540, '41.837275', '-1.532614');INSERT INTO MUNICIPIOS VALUES
(7932, 52, 'Botorrita', 'botorrita', 50441, '41.507228', '-1.030848');INSERT INTO MUNICIPIOS VALUES
(7933, 52, 'Brea de AragÛn', 'brea-de-aragon', 50246, '41.525415', '-1.597459');INSERT INTO MUNICIPIOS VALUES
(7934, 52, 'Bubierca', 'bubierca', 50239, '41.314394', '-1.856614');INSERT INTO MUNICIPIOS VALUES
(7935, 52, 'Bujaraloz', 'bujaraloz', 50177, '41.496541', '-0.148154');INSERT INTO MUNICIPIOS VALUES
(7936, 52, 'Bulbuente', 'bulbuente', 50546, '41.816657', '-1.602818');INSERT INTO MUNICIPIOS VALUES
(7937, 52, 'Bureta', 'bureta', 50547, '41.818056', '-1.487961');INSERT INTO MUNICIPIOS VALUES
(7938, 52, 'Burgo de Ebro', 'burgo-de-ebro', 50730, '41.572194', '-0.737286');INSERT INTO MUNICIPIOS VALUES
(7939, 52, 'Buste', 'buste', 50548, '41.886664', '-1.603135');INSERT INTO MUNICIPIOS VALUES
(7940, 52, 'CabaÒas de Ebro', 'cabanas-de-ebro', 50638, '41.796264', '-1.163888');INSERT INTO MUNICIPIOS VALUES
(7941, 52, 'Cabolafuente', 'cabolafuente', 50228, '41.211939', '-2.037417');INSERT INTO MUNICIPIOS VALUES
(7942, 52, 'Cadrete', 'cadrete', 50420, '41.555658', '-0.959866');INSERT INTO MUNICIPIOS VALUES
(7943, 52, 'Calatayud', 'calatayud', 50300, '41.355841', '-1.644688');INSERT INTO MUNICIPIOS VALUES
(7944, 52, 'Calatorao', 'calatorao', 50280, '41.525158', '-1.338315');INSERT INTO MUNICIPIOS VALUES
(7945, 52, 'Calcena', 'calcena', 50268, '41.656048', '-1.717064');INSERT INTO MUNICIPIOS VALUES
(7946, 52, 'Calmarza', 'calmarza', 50238, '41.159529', '-1.914539');INSERT INTO MUNICIPIOS VALUES
(7947, 52, 'Campillo de AragÛn', 'campillo-de-aragon', 50214, '41.127308', '-1.844137');INSERT INTO MUNICIPIOS VALUES
(7948, 52, 'Carenas', 'carenas', 50212, '41.275904', '-1.798174');INSERT INTO MUNICIPIOS VALUES
(7949, 52, 'CariÒena', 'carinena', 50400, '41.337235', '-1.221285');INSERT INTO MUNICIPIOS VALUES
(7950, 52, 'Caspe', 'caspe', 50700, '41.237996', '-0.044804');INSERT INTO MUNICIPIOS VALUES
(7951, 52, 'CastejÛn de Alarba', 'castejon-de-alarba', 50346, '41.183531', '-1.637156');INSERT INTO MUNICIPIOS VALUES
(7952, 52, 'CastejÛn de las Armas', 'castejon-de-las-armas', 50211, '41.309647', '-1.812572');INSERT INTO MUNICIPIOS VALUES
(7953, 52, 'CastejÛn de Valdejasa', 'castejon-de-valdejasa', 50612, '41.982702', '-0.994992');INSERT INTO MUNICIPIOS VALUES
(7954, 52, 'Castiliscar', 'castiliscar', 50696, '42.375571', '-1.274135');INSERT INTO MUNICIPIOS VALUES
(7955, 52, 'Cervera de la CaÒada', 'cervera-de-la-canada', 50312, '41.431788', '-1.737342');INSERT INTO MUNICIPIOS VALUES
(7956, 52, 'Cerveruela', 'cerveruela', 50368, '41.193607', '-1.303489');INSERT INTO MUNICIPIOS VALUES
(7957, 52, 'Cetina', 'cetina', 50292, '41.287659', '-1.966102');INSERT INTO MUNICIPIOS VALUES
(7958, 52, 'Chiprana', 'chiprana', 50792, '41.263074', '-0.125978');INSERT INTO MUNICIPIOS VALUES
(7959, 52, 'Chodes', 'chodes', 50269, '41.486704', '-1.480236');INSERT INTO MUNICIPIOS VALUES
(7960, 52, 'Cimballa', 'cimballa', 50213, '41.102251', '-1.774571');INSERT INTO MUNICIPIOS VALUES
(7961, 52, 'Cinco Olivas', 'cinco-olivas', 50782, '41.338339', '-0.370928');INSERT INTO MUNICIPIOS VALUES
(7962, 52, 'ClarÈs de Ribota', 'clares-de-ribota', 50314, '41.530371', '-1.839169');INSERT INTO MUNICIPIOS VALUES
(7963, 52, 'Codo', 'codo', 50132, '41.334899', '-0.697868');INSERT INTO MUNICIPIOS VALUES
(7964, 52, 'Codos', 'codos', 50326, '41.291818', '-1.374686');INSERT INTO MUNICIPIOS VALUES
(7965, 52, 'Contamina', 'contamina', 50239, '41.306536', '-1.915505');INSERT INTO MUNICIPIOS VALUES
(7966, 52, 'Cosuenda', 'cosuenda', 50409, '41.364973', '-1.300464');INSERT INTO MUNICIPIOS VALUES
(7967, 52, 'Cuarte de Huerva', 'cuarte-de-huerva', 50410, '41.593798', '-0.931091');INSERT INTO MUNICIPIOS VALUES
(7968, 52, 'Cubel', 'cubel', 50376, '41.096583', '-1.637102');INSERT INTO MUNICIPIOS VALUES
(7969, 52, 'Cuerlas', 'cuerlas', 50373, '40.960164', '-1.549051');INSERT INTO MUNICIPIOS VALUES
(7970, 52, 'Daroca', 'daroca', 50360, '41.116284', '-1.414189');INSERT INTO MUNICIPIOS VALUES
(7971, 52, 'Ejea de los Caballeros', 'ejea-de-los-caballeros', 50600, '42.128498', '-1.137235');INSERT INTO MUNICIPIOS VALUES
(7972, 52, 'Embid de Ariza', 'embid-de-ariza', 50239, '41.380391', '-1.969664');INSERT INTO MUNICIPIOS VALUES
(7973, 52, 'Encinacorba', 'encinacorba', 50470, '41.284885', '-1.276560');INSERT INTO MUNICIPIOS VALUES
(7974, 52, '¡?pila', 'epila', 50290, '41.600810', '-1.282654');INSERT INTO MUNICIPIOS VALUES
(7975, 52, 'Erla', 'erla', 50611, '42.116339', '-0.950017');INSERT INTO MUNICIPIOS VALUES
(7976, 52, 'EscatrÛn', 'escatron', 50790, '41.289964', '-0.320921');INSERT INTO MUNICIPIOS VALUES
(7977, 52, 'Fabara', 'fabara', 50793, '41.180229', '0.166855');INSERT INTO MUNICIPIOS VALUES
(7978, 52, 'Farlete', 'farlete', 50163, '41.682384', '-0.508955');INSERT INTO MUNICIPIOS VALUES
(7979, 52, 'FayÛn', 'fayon', 50795, '41.242175', '0.332057');INSERT INTO MUNICIPIOS VALUES
(7980, 52, 'Fayos', 'fayos', 50513, '41.878061', '-1.779764');INSERT INTO MUNICIPIOS VALUES
(7981, 52, 'Figueruelas', 'figueruelas', 50639, '41.766494', '-1.176116');INSERT INTO MUNICIPIOS VALUES
(7982, 52, 'Fombuena', 'fombuena', 50491, '41.127106', '-1.273695');INSERT INTO MUNICIPIOS VALUES
(7983, 52, 'Frago', 'frago', 50610, '41.651730', '-0.881319');INSERT INTO MUNICIPIOS VALUES
(7984, 52, 'Frasno', 'frasno', 50320, '41.414282', '-1.492810');INSERT INTO MUNICIPIOS VALUES
(7985, 52, 'FrÈscano', 'frescano', 50562, '41.877646', '-1.451848');INSERT INTO MUNICIPIOS VALUES
(7986, 52, 'FuendejalÛn', 'fuendejalon', 50529, '41.760925', '-1.466718');INSERT INTO MUNICIPIOS VALUES
(7987, 52, 'Fuendetodos', 'fuendetodos', 50142, '41.346048', '-0.959845');INSERT INTO MUNICIPIOS VALUES
(7988, 52, 'Fuentes de Ebro', 'fuentes-de-ebro', 50740, '41.506263', '-0.636005');INSERT INTO MUNICIPIOS VALUES
(7989, 52, 'Fuentes de Jiloca', 'fuentes-de-jiloca', 50390, '41.228878', '-1.536841');INSERT INTO MUNICIPIOS VALUES
(7990, 52, 'Gallocanta', 'gallocanta', 50373, '40.995771', '-1.509483');INSERT INTO MUNICIPIOS VALUES
(7991, 52, 'Gallur', 'gallur', 50650, '41.869864', '-1.317844');INSERT INTO MUNICIPIOS VALUES
(7992, 52, 'Gelsa', 'gelsa', 50786, '41.408440', '-0.458057');INSERT INTO MUNICIPIOS VALUES
(7993, 52, 'Godojos', 'godojos', 50238, '41.265808', '-1.865230');INSERT INTO MUNICIPIOS VALUES
(7994, 52, 'Gotor', 'gotor', 50257, '41.545525', '-1.650460');INSERT INTO MUNICIPIOS VALUES
(7995, 52, 'Grisel', 'grisel', 50513, '41.872133', '-1.729102');INSERT INTO MUNICIPIOS VALUES
(7996, 52, 'GrisÈn', 'grisen', 50297, '41.742579', '-1.164197');INSERT INTO MUNICIPIOS VALUES
(7997, 52, 'Herrera de los Navarros', 'herrera-de-los-navarros', 50150, '41.211140', '-1.082400');INSERT INTO MUNICIPIOS VALUES
(7998, 52, 'Ibdes', 'ibdes', 50236, '41.219050', '-1.834803');INSERT INTO MUNICIPIOS VALUES
(7999, 52, 'Illueca', 'illueca', 50250, '41.536659', '-1.625204');INSERT INTO MUNICIPIOS VALUES
(8000, 52, 'Isuerre', 'isuerre', 50687, '42.487147', '-1.052070');INSERT INTO MUNICIPIOS VALUES
(8001, 52, 'Jaraba', 'jaraba', 50237, '41.190515', '-1.883769');INSERT INTO MUNICIPIOS VALUES
(8002, 52, 'Jarque', 'jarque', 50258, '41.556782', '-1.679556');INSERT INTO MUNICIPIOS VALUES
(8003, 52, 'JaulÌn', 'jaulin', 50141, '41.451854', '-0.993437');INSERT INTO MUNICIPIOS VALUES
(8004, 52, 'Joyosa', 'joyosa', 50692, '41.744693', '-1.071639');INSERT INTO MUNICIPIOS VALUES
(8005, 52, 'Lagata', 'lagata', 50134, '41.239258', '-0.804378');INSERT INTO MUNICIPIOS VALUES
(8006, 52, 'Langa del Castillo', 'langa-del-castillo', 50367, '41.212755', '-1.398911');INSERT INTO MUNICIPIOS VALUES
(8007, 52, 'Layana', 'layana', 50679, '42.298111', '-1.244942');INSERT INTO MUNICIPIOS VALUES
(8008, 52, 'LÈcera', 'lecera', 50131, '41.205506', '-0.709605');INSERT INTO MUNICIPIOS VALUES
(8009, 52, 'LechÛn', 'lechon', 50369, '41.085708', '-1.286559');INSERT INTO MUNICIPIOS VALUES
(8010, 52, 'LeciÒena', 'lecinena', 50160, '41.803246', '-0.609784');INSERT INTO MUNICIPIOS VALUES
(8011, 52, 'Letux', 'letux', 50136, '41.253533', '-0.802002');INSERT INTO MUNICIPIOS VALUES
(8012, 52, 'Litago', 'litago', 50582, '41.813371', '-1.752405');INSERT INTO MUNICIPIOS VALUES
(8013, 52, 'LituÈnigo', 'lituenigo', 50581, '41.834118', '-1.762909');INSERT INTO MUNICIPIOS VALUES
(8014, 52, 'Lobera de Onsella', 'lobera-de-onsella', 50687, '42.477383', '-1.023359');INSERT INTO MUNICIPIOS VALUES
(8015, 52, 'Longares', 'longares', 50460, '41.400409', '-1.166782');INSERT INTO MUNICIPIOS VALUES
(8016, 52, 'Long·s', 'longas', 50688, '42.480643', '-0.935833');INSERT INTO MUNICIPIOS VALUES
(8017, 52, 'Lucena de JalÛn', 'lucena-de-jalon', 50294, '41.554373', '-1.306150');INSERT INTO MUNICIPIOS VALUES
(8018, 52, 'Luceni', 'luceni', 50640, '41.827930', '-1.240039');INSERT INTO MUNICIPIOS VALUES
(8019, 52, 'Luesia', 'luesia', 50619, '42.369832', '-1.022029');INSERT INTO MUNICIPIOS VALUES
(8020, 52, 'Luesma', 'luesma', 50151, '41.166419', '-1.146569');INSERT INTO MUNICIPIOS VALUES
(8021, 52, 'Lumpiaque', 'lumpiaque', 50295, '41.630472', '-1.299992');INSERT INTO MUNICIPIOS VALUES
(8022, 52, 'Luna', 'luna', 50610, '42.170481', '-0.931478');INSERT INTO MUNICIPIOS VALUES
(8023, 52, 'Maella', 'maella', 50710, '41.123687', '0.137265');INSERT INTO MUNICIPIOS VALUES
(8024, 52, 'MagallÛn', 'magallon', 50520, '41.831120', '-1.457512');INSERT INTO MUNICIPIOS VALUES
(8025, 52, 'Mainar', 'mainar', 50368, '41.194140', '-1.303596');INSERT INTO MUNICIPIOS VALUES
(8026, 52, 'Malanquilla', 'malanquilla', 50315, '41.570485', '-1.875529');INSERT INTO MUNICIPIOS VALUES
(8027, 52, 'Malej·n', 'malejan', 50549, '41.828010', '-1.548584');INSERT INTO MUNICIPIOS VALUES
(8028, 52, 'MallÈn', 'mallen', 50550, '41.900516', '-1.418213');INSERT INTO MUNICIPIOS VALUES
(8029, 52, 'MalÛn', 'malon', 50511, '41.953426', '-1.670802');INSERT INTO MUNICIPIOS VALUES
(8030, 52, 'Maluenda', 'maluenda', 50340, '41.287143', '-1.614776');INSERT INTO MUNICIPIOS VALUES
(8031, 52, 'Manchones', 'manchones', 50366, '41.146636', '-1.467662');INSERT INTO MUNICIPIOS VALUES
(8032, 52, 'Mara', 'mara', 50331, '41.289182', '-1.517583');INSERT INTO MUNICIPIOS VALUES
(8033, 52, 'MarÌa de Huerva', 'maria-de-huerva', 50430, '41.537615', '-0.993254');INSERT INTO MUNICIPIOS VALUES
(8034, 52, 'Marracos', 'marracos', 50616, '42.091917', '-0.777197');INSERT INTO MUNICIPIOS VALUES
(8035, 52, 'Mediana de AragÛn', 'mediana-de-aragon', 50135, '41.466817', '-0.710034');INSERT INTO MUNICIPIOS VALUES
(8036, 52, 'Mequinenza', 'mequinenza', 50170, '41.375923', '0.299785');INSERT INTO MUNICIPIOS VALUES
(8037, 52, 'Mesones de Isuela', 'mesones-de-isuela', 50267, '41.554116', '-1.538129');INSERT INTO MUNICIPIOS VALUES
(8038, 52, 'Mezalocha', 'mezalocha', 50152, '41.423486', '-1.084020');INSERT INTO MUNICIPIOS VALUES
(8039, 52, 'Mianos', 'mianos', 50683, '42.584307', '-0.957527');INSERT INTO MUNICIPIOS VALUES
(8040, 52, 'Miedes de AragÛn', 'miedes-de-aragon', 50330, '41.257614', '-1.488036');INSERT INTO MUNICIPIOS VALUES
(8041, 52, 'Monegrillo', 'monegrillo', 50164, '41.641971', '-0.414906');INSERT INTO MUNICIPIOS VALUES
(8042, 52, 'Moneva', 'moneva', 50144, '41.129288', '-0.834274');INSERT INTO MUNICIPIOS VALUES
(8043, 52, 'Monreal de Ariza', 'monreal-de-ariza', 50291, '41.291641', '-2.110448');INSERT INTO MUNICIPIOS VALUES
(8044, 52, 'Monterde', 'monterde', 50213, '41.171741', '-1.736934');INSERT INTO MUNICIPIOS VALUES
(8045, 52, 'MontÛn', 'monton', 50391, '41.206596', '-1.513098');INSERT INTO MUNICIPIOS VALUES
(8046, 52, 'Morata de JalÛn', 'morata-de-jalon', 50260, '41.469502', '-1.472983');INSERT INTO MUNICIPIOS VALUES
(8047, 52, 'Morata de Jiloca', 'morata-de-jiloca', 50344, '41.247547', '-1.587803');INSERT INTO MUNICIPIOS VALUES
(8048, 52, 'MorÈs', 'mores', 50240, '41.474856', '-1.564243');INSERT INTO MUNICIPIOS VALUES
(8049, 52, 'Moros', 'moros', 50215, '41.397552', '-1.831584');INSERT INTO MUNICIPIOS VALUES
(8050, 52, 'Moyuela', 'moyuela', 50143, '41.128763', '-0.923431');INSERT INTO MUNICIPIOS VALUES
(8051, 52, 'Mozota', 'mozota', 50440, '41.482412', '-1.068935');INSERT INTO MUNICIPIOS VALUES
(8052, 52, 'Muel', 'muel', 50450, '41.464084', '-1.085908');INSERT INTO MUNICIPIOS VALUES
(8053, 52, 'Muela', 'muela', 50196, '41.581231', '-1.121936');INSERT INTO MUNICIPIOS VALUES
(8054, 52, 'MunÈbrega', 'munebrega', 50219, '41.251347', '-1.705853');INSERT INTO MUNICIPIOS VALUES
(8055, 52, 'Murero', 'murero', 50366, '41.156880', '-1.482747');INSERT INTO MUNICIPIOS VALUES
(8056, 52, 'Murillo de G·llego', 'murillo-de-gallego', 22808, '42.337230', '-0.754838');INSERT INTO MUNICIPIOS VALUES
(8057, 52, 'Navard˙n', 'navardun', 50686, '42.509786', '-1.142793');INSERT INTO MUNICIPIOS VALUES
(8059, 52, 'Nombrevilla', 'nombrevilla', 50369, '41.108961', '-1.357348');INSERT INTO MUNICIPIOS VALUES
(8060, 52, 'Nonaspe', 'nonaspe', 50794, '41.211528', '0.250068');INSERT INTO MUNICIPIOS VALUES
(8061, 52, 'Novallas', 'novallas', 50510, '41.945479', '-1.698718');INSERT INTO MUNICIPIOS VALUES
(8062, 52, 'Novillas', 'novillas', 50530, '41.932989', '-1.390918');INSERT INTO MUNICIPIOS VALUES
(8063, 52, 'NuÈvalos', 'nuevalos', 50210, '41.210818', '-1.789312');INSERT INTO MUNICIPIOS VALUES
(8064, 52, 'Nuez de Ebro', 'nuez-de-ebro', 50173, '41.593132', '-0.681045');INSERT INTO MUNICIPIOS VALUES
(8065, 52, 'OlvÈs', 'olves', 50341, '41.237334', '-1.649623');INSERT INTO MUNICIPIOS VALUES
(8066, 52, 'Orcajo', 'orcajo', 50366, '41.110513', '-1.489205');INSERT INTO MUNICIPIOS VALUES
(8067, 52, 'Orera', 'orera', 50331, '41.299541', '-1.480590');INSERT INTO MUNICIPIOS VALUES
(8068, 52, 'OrÈs', 'ores', 50619, '42.279452', '-0.999520');INSERT INTO MUNICIPIOS VALUES
(8069, 52, 'Oseja', 'oseja', 50258, '41.595354', '-1.699834');INSERT INTO MUNICIPIOS VALUES
(8070, 52, 'Osera de Ebro', 'osera-de-ebro', 50175, '41.534346', '-0.579915');INSERT INTO MUNICIPIOS VALUES
(8071, 52, 'Paniza', 'paniza', 50480, '41.282434', '-1.212423');INSERT INTO MUNICIPIOS VALUES
(8072, 52, 'Paracuellos de Jiloca', 'paracuellos-de-jiloca', 50342, '41.313902', '-1.642241');INSERT INTO MUNICIPIOS VALUES
(8073, 52, 'Paracuellos de la Ribera', 'paracuellos-de-la-ribera', 50299, '41.422504', '-1.562204');INSERT INTO MUNICIPIOS VALUES
(8074, 52, 'Pastriz', 'pastriz', 50195, '41.617624', '-0.782014');INSERT INTO MUNICIPIOS VALUES
(8075, 52, 'Pedrola', 'pedrola', 50690, '41.790737', '-1.214783');INSERT INTO MUNICIPIOS VALUES
(8076, 52, 'Pedrosas', 'pedrosas', 50612, '42.036991', '-0.883198');INSERT INTO MUNICIPIOS VALUES
(8077, 52, 'Perdiguera', 'perdiguera', 50161, '41.754826', '-0.631800');INSERT INTO MUNICIPIOS VALUES
(8078, 52, 'Piedratajada', 'piedratajada', 50616, '42.118837', '-0.804083');INSERT INTO MUNICIPIOS VALUES
(8079, 52, 'Pina de Ebro', 'pina-de-ebro', 50750, '41.490771', '-0.511808');INSERT INTO MUNICIPIOS VALUES
(8080, 52, 'Pinseque', 'pinseque', 50298, '41.736095', '-1.101637');INSERT INTO MUNICIPIOS VALUES
(8081, 52, 'Pintanos', 'pintanos', 50685, '42.530710', '-1.022222');INSERT INTO MUNICIPIOS VALUES
(8082, 52, 'Plasencia de Jalon', 'plasencia-de-jalÛn', 50296, '41.682977', '-1.229310');INSERT INTO MUNICIPIOS VALUES
(8083, 52, 'Pleitas', 'pleitas', 50297, '41.713289', '-1.199098');INSERT INTO MUNICIPIOS VALUES
(8084, 52, 'Plenas', 'plenas', 50143, '41.113471', '-0.962312');INSERT INTO MUNICIPIOS VALUES
(8085, 52, 'Pomer', 'pomer', 50259, '41.638042', '-1.841261');INSERT INTO MUNICIPIOS VALUES
(8086, 52, 'Pozuel de Ariza', 'pozuel-de-ariza', 42269, '41.348061', '-2.153513');INSERT INTO MUNICIPIOS VALUES
(8087, 52, 'Pozuelo de AragÛn', 'pozuelo-de-aragon', 50529, '41.766230', '-1.421549');INSERT INTO MUNICIPIOS VALUES
(8088, 52, 'Pradilla de Ebro', 'pradilla-de-ebro', 50668, '41.860740', '-1.259394');INSERT INTO MUNICIPIOS VALUES
(8089, 52, 'Puebla de AlbortÛn', 'puebla-de-alborton', 50137, '41.383909', '-0.852063');INSERT INTO MUNICIPIOS VALUES
(8090, 52, 'Puebla de AlfindÈn', 'puebla-de-alfinden', 50171, '41.632284', '-0.753100');INSERT INTO MUNICIPIOS VALUES
(8091, 52, 'Puendeluna', 'puendeluna', 50614, '42.153128', '-0.757499');INSERT INTO MUNICIPIOS VALUES
(8092, 52, 'Purujosa', 'purujosa', 50268, '41.682560', '-1.764765');INSERT INTO MUNICIPIOS VALUES
(8093, 52, 'Quinto', 'quinto', 50770, '41.425095', '-0.498848');INSERT INTO MUNICIPIOS VALUES
(8094, 52, 'Remolinos', 'remolinos', 50637, '41.838746', '-1.176696');INSERT INTO MUNICIPIOS VALUES
(8095, 52, 'RetascÛn', 'retascon', 50367, '41.144729', '-1.381145');INSERT INTO MUNICIPIOS VALUES
(8096, 52, 'Ricla', 'ricla', 50270, '41.508963', '-1.403332');INSERT INTO MUNICIPIOS VALUES
(8097, 52, 'Romanos', 'romanos', 50491, '41.126629', '-1.276174');INSERT INTO MUNICIPIOS VALUES
(8098, 52, 'Rueda de JalÛn', 'rueda-de-jalon', 50295, '41.633279', '-1.273212');INSERT INTO MUNICIPIOS VALUES
(8099, 52, 'Ruesca', 'ruesca', 50331, '41.282547', '-1.482553');INSERT INTO MUNICIPIOS VALUES
(8100, 52, 'SabiÒ·n', 'sabinan', 50299, '41.443338', '-1.568041');INSERT INTO MUNICIPIOS VALUES
(8101, 52, 'S·daba', 'sadaba', 50670, '42.282008', '-1.272697');INSERT INTO MUNICIPIOS VALUES
(8102, 52, 'Salillas de JalÛn', 'salillas-de-jalon', 50294, '41.567298', '-1.324625');INSERT INTO MUNICIPIOS VALUES
(8103, 52, 'Salvatierra de Esca', 'salvatierra-de-esca', 50684, '42.669184', '-1.004820');INSERT INTO MUNICIPIOS VALUES
(8104, 52, 'Samper del Salz', 'samper-del-salz', 50134, '41.234898', '-0.823073');INSERT INTO MUNICIPIOS VALUES
(8105, 52, 'San MartÌn de la Virgen de Moncayo', 'san-martin-de-la-virgen-de-moncayo', 50584, '41.838075', '-1.792274');INSERT INTO MUNICIPIOS VALUES
(8106, 52, 'San Mateo de G·llego', 'san-mateo-de-gallego', 50840, '41.831136', '-0.768270');INSERT INTO MUNICIPIOS VALUES
(8107, 52, 'Santa Cruz de GrÌo', 'santa-cruz-de-grio', 50324, '41.371269', '-1.429853');INSERT INTO MUNICIPIOS VALUES
(8108, 52, 'Santa Cruz de Moncayo', 'santa-cruz-de-moncayo', 50513, '41.882311', '-1.757126');INSERT INTO MUNICIPIOS VALUES
(8109, 52, 'Santa Eulalia de G·llego', 'santa-eulalia-de-gallego', 22806, '42.287088', '-0.760846');INSERT INTO MUNICIPIOS VALUES
(8110, 52, 'Santed', 'santed', 50373, '41.032460', '-1.507144');INSERT INTO MUNICIPIOS VALUES
(8111, 52, 'S·stago', 'sastago', 50780, '41.321461', '-0.349417');INSERT INTO MUNICIPIOS VALUES
(8112, 52, 'Sediles', 'sediles', 50334, '41.346563', '-1.529288');INSERT INTO MUNICIPIOS VALUES
(8113, 52, 'Sestrica', 'sestrica', 50248, '41.486945', '-1.596794');INSERT INTO MUNICIPIOS VALUES
(8114, 52, 'Sierra de Luna', 'sierra-de-luna', 50612, '42.046552', '-0.910664');INSERT INTO MUNICIPIOS VALUES
(8115, 52, 'Siges', 'siges', 50682, '42.630644', '-1.012588');INSERT INTO MUNICIPIOS VALUES
(8116, 52, 'SisamÛn', 'sisamon', 50227, '41.170643', '-2.006164');INSERT INTO MUNICIPIOS VALUES
(8117, 52, 'Sobradiel', 'sobradiel', 50629, '41.740738', '-1.036019');INSERT INTO MUNICIPIOS VALUES
(8118, 52, 'Sos del Rey CatÛlico', 'sos-del-rey-catolico', 50680, '42.497637', '-1.215363');INSERT INTO MUNICIPIOS VALUES
(8119, 52, 'Tabuenca', 'tabuenca', 50547, '41.695411', '-1.543965');INSERT INTO MUNICIPIOS VALUES
(8120, 52, 'Talamantes', 'talamantes', 50546, '41.730298', '-1.677775');INSERT INTO MUNICIPIOS VALUES
(8121, 52, 'Tarazona', 'tarazona', 50500, '41.903044', '-1.725025');INSERT INTO MUNICIPIOS VALUES
(8122, 52, 'Tauste', 'tauste', 50660, '41.921183', '-1.252098');INSERT INTO MUNICIPIOS VALUES
(8123, 52, 'Terrer', 'terrer', 50293, '41.327971', '-1.714468');INSERT INTO MUNICIPIOS VALUES
(8124, 52, 'Tierga', 'tierga', 50269, '41.607613', '-1.605377');INSERT INTO MUNICIPIOS VALUES
(8125, 52, 'Tobed', 'tobed', 50325, '41.337960', '-1.400542');INSERT INTO MUNICIPIOS VALUES
(8126, 52, 'Torralba de los Frailes', 'torralba-de-los-frailes', 50374, '41.037089', '-1.661725');INSERT INTO MUNICIPIOS VALUES
(8127, 52, 'Torralba de Ribota', 'torralba-de-ribota', 50311, '41.418144', '-1.683826');INSERT INTO MUNICIPIOS VALUES
(8128, 52, 'Torralbilla', 'torralbilla', 50368, '41.210624', '-1.338358');INSERT INTO MUNICIPIOS VALUES
(8129, 52, 'Torrehermosa', 'torrehermosa', 42269, '41.238867', '-2.130103');INSERT INTO MUNICIPIOS VALUES
(8130, 52, 'Torrelapaja', 'torrelapaja', 50316, '41.581841', '-1.950459');INSERT INTO MUNICIPIOS VALUES
(8131, 52, 'Torrellas', 'torrellas', 50512, '41.895888', '-1.769571');INSERT INTO MUNICIPIOS VALUES
(8132, 52, 'Torres de BerrellÈn', 'torres-de-berrellen', 50693, '41.758188', '-1.065245');INSERT INTO MUNICIPIOS VALUES
(8133, 52, 'Torrijo de la CaÒada', 'torrijo-de-la-canada', 50217, '41.474245', '-1.876988');INSERT INTO MUNICIPIOS VALUES
(8134, 52, 'Tosos', 'tosos', 50154, '41.315788', '-1.071939');INSERT INTO MUNICIPIOS VALUES
(8135, 52, 'Trasmoz', 'trasmoz', 50583, '41.825892', '-1.723094');INSERT INTO MUNICIPIOS VALUES
(8136, 52, 'Trasobares', 'trasobares', 50268, '41.643863', '-1.641083');INSERT INTO MUNICIPIOS VALUES
(8137, 52, 'Uncastillo', 'uncastillo', 50678, '42.361778', '-1.131163');
INSERT INTO `poblacion` (`idpoblacion`, `idprovincia`, `poblacion`, `poblacionseo`, `postal`, `latitud`, `longitud`) VALUES
(8138, 52, 'UnduÈs de Lerda', 'undues-de-lerda', 50689, '42.566262', '-1.169443');INSERT INTO MUNICIPIOS VALUES
(8139, 52, 'Urrea de JalÛn', 'urrea-de-jalon', 50296, '41.634562', '-1.273298');INSERT INTO MUNICIPIOS VALUES
(8140, 52, 'UrriÈs', 'urries', 50685, '42.518960', '-1.129532');INSERT INTO MUNICIPIOS VALUES
(8141, 52, 'Used', 'used', 50374, '41.054146', '-1.558599');INSERT INTO MUNICIPIOS VALUES
(8142, 52, 'Utebo', 'utebo', 50180, '41.715308', '-0.994735');INSERT INTO MUNICIPIOS VALUES
(8143, 52, 'Val de San MartÌn', 'val-de-san-martin', 50372, '41.056638', '-1.446462');INSERT INTO MUNICIPIOS VALUES
(8144, 52, 'Valdehorna', 'valdehorna', 50371, '41.072396', '-1.422300');INSERT INTO MUNICIPIOS VALUES
(8145, 52, 'Valmadrid', 'valmadrid', 50138, '41.443691', '-0.884786');INSERT INTO MUNICIPIOS VALUES
(8146, 52, 'Valpalmas', 'valpalmas', 50615, '42.158186', '-0.852127');INSERT INTO MUNICIPIOS VALUES
(8147, 52, 'Valtorres', 'valtorres', 50219, '41.299121', '-1.740818');INSERT INTO MUNICIPIOS VALUES
(8148, 52, 'Velilla de Ebro', 'velilla-de-ebro', 50760, '41.375424', '-0.437865');INSERT INTO MUNICIPIOS VALUES
(8149, 52, 'Velilla de Jiloca', 'velilla-de-jiloca', 50343, '41.275001', '-1.604691');INSERT INTO MUNICIPIOS VALUES
(8150, 52, 'Vera de Moncayo', 'vera-de-moncayo', 50580, '41.824165', '-1.688075');INSERT INTO MUNICIPIOS VALUES
(8151, 52, 'Vierlas', 'vierlas', 50513, '41.928176', '-1.680908');INSERT INTO MUNICIPIOS VALUES
(8152, 52, 'Villadoz', 'villadoz', 50490, '41.162663', '-1.287804');INSERT INTO MUNICIPIOS VALUES
(8153, 52, 'Villafeliche', 'villafeliche', 50391, '41.196482', '-1.510749');INSERT INTO MUNICIPIOS VALUES
(8154, 52, 'Villafranca de Ebro', 'villafranca-de-ebro', 50174, '41.574104', '-0.650253');INSERT INTO MUNICIPIOS VALUES
(8155, 52, 'Villalba de Perejil', 'villalba-de-perejil', 50333, '41.327520', '-1.548257');INSERT INTO MUNICIPIOS VALUES
(8156, 52, 'Villalengua', 'villalengua', 50216, '41.435005', '-1.839352');INSERT INTO MUNICIPIOS VALUES
(8157, 52, 'Villamayor de G·llego', 'villamayor-de-gallego', 50162, '41.685156', '-0.774879');INSERT INTO MUNICIPIOS VALUES
(8158, 52, 'Villanueva de G·llego', 'villanueva-de-gallego', 50830, '41.768271', '-0.827923');INSERT INTO MUNICIPIOS VALUES
(8159, 52, 'Villanueva de Huerva', 'villanueva-de-huerva', 50153, '41.352394', '-1.037307');INSERT INTO MUNICIPIOS VALUES
(8160, 52, 'Villanueva de Jiloca', 'villanueva-de-jiloca', 50370, '41.076213', '-1.392860');INSERT INTO MUNICIPIOS VALUES
(8161, 52, 'Villar de los Navarros', 'villar-de-los-navarros', 50156, '41.158786', '-1.042500');INSERT INTO MUNICIPIOS VALUES
(8162, 52, 'Villarreal de Huerva', 'villarreal-de-huerva', 50490, '41.191541', '-1.288018');INSERT INTO MUNICIPIOS VALUES
(8163, 52, 'Villarroya de la Sierra', 'villarroya-de-la-sierra', 50310, '41.464502', '-1.786051');INSERT INTO MUNICIPIOS VALUES
(8164, 52, 'Villarroya del Campo', 'villarroya-del-campo', 50368, '41.143469', '-1.323724');INSERT INTO MUNICIPIOS VALUES
(8165, 52, 'VilueÒa', 'la viluena', 50219, '41.272065', '-1.724811');INSERT INTO MUNICIPIOS VALUES
(8166, 52, 'Vistabella', 'vistabella', 50482, '41.218888', '-1.152706');INSERT INTO MUNICIPIOS VALUES
(8167, 52, 'Zaida', 'la zaida', 50784, '41.326585', '-0.426707');INSERT INTO MUNICIPIOS VALUES
(8168, 52, 'Zaragoza', 'zaragoza', 50003, '41.656112', '-0.875516');INSERT INTO MUNICIPIOS VALUES
(8169, 52, 'Zuera', 'zuera', 50800, '41.869497', '-0.788097');INSERT INTO MUNICIPIOS VALUES
(8171, 6, 'Ceuta', 'ceuta', 51001, '35.889160', '-5.315730');INSERT INTO MUNICIPIOS VALUES
(8173, 23, 'Melilla', 'melilla', 52001, '35.291248', '-2.937910');INSERT INTO MUNICIPIOS VALUES
(8174, 46, 'Ag¸ero', 'aguero', 22808, '42.354290', '-0.795170');