{ stdenv, tomcat6, mysql_jdbc }:

stdenv.mkDerivation {
  name = "tomcat-mysql-jdbc";
  builder = ./builder.sh;
  buildInputs = [ mysql_jdbc ];
  
  inherit mysql_jdbc;
}
