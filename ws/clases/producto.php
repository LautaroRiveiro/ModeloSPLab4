<?php
class Producto
{
//--------------------------------------------------------------------------------//
//--ATRIBUTOS (No sé por qué tuve que ponerlos public)
	public $id;
 	public $nombre;
  	public $seccion;
  	public $precio;
  	public $importado;
  	public $fecha;
  	public $pais;
  	public $foto;
//--------------------------------------------------------------------------------//

//--------------------------------------------------------------------------------//
//--GETTERS Y SETTERS
	public function GetId()
	{
		return $this->id;
	}
	public function GetNombre()
	{
		return $this->nombre;
	}
	public function GetSeccion()
	{
		return $this->seccion;
	}
	public function GetPrecio()
	{
		return $this->precio;
	}
	public function GetImportado()
	{
		return $this->importado;
	}
	public function GetFecha()
	{
		return $this->fecha;
	}
	public function GetPais()
	{
		return $this->pais;
	}
	public function GetFoto()
	{
		return $this->foto;
	}

	public function SetId($valor)
	{
		$this->id = $valor;
	}
	public function SetNombre($valor)
	{
		$this->nombre = $valor;
	}
	public function SetSeccion($valor)
	{
		$this->seccion = $valor;
	}
	public function SetPrecio($valor)
	{
		$this->precio = $valor;
	}
	public function SetImportado($valor)
	{
		$this->importado = $valor;
	}
	public function SetFecha($valor)
	{
		$this->fecha = $valor;
	}
	public function SetPais($valor)
	{
		$this->pais = $valor;
	}
	public function SetFoto($valor)
	{
		$this->foto = $valor;
	}

//--------------------------------------------------------------------------------//
//--CONSTRUCTOR
	public function __construct($id=NULL)
	{
		if($id !== NULL){
			$obj = self::TraerUnProductoPorId($id);
			$this->id = $obj->GetId();
			$this->nombre = $obj->GetNombre();
			$this->seccion = $obj->GetSeccion();
			$this->precio = $obj->GetPrecio();
			$this->importado = $obj->GetImportado();
			$this->fecha = $obj->GetFecha();
			$this->pais = $obj->GetPais();
			$this->foto = $obj->GetFoto();
		}
	}

//--------------------------------------------------------------------------------//
//--TOSTRING	
  	public function ToString()
	{
	  	return $this->id." - ".$this->nombre." - ".$this->seccion." - ".$this->precio." - ".$this->importado." - ".$this->fecha." - ".$this->pais." - ".$this->foto."\r\n";
	}
//--------------------------------------------------------------------------------//
//--------------------------------------------------------------------------------//
//--METODO DE CLASE
	public static function TraerUnProductoPorId($id){
		$conexion = self::CrearConexion();

		$sql = "SELECT P.id, P.nombre, P.seccion, P.precio, P.pais, P.importado, P.fecha, P.foto
				FROM productos P
				WHERE P.id = :id";

		$consulta = $conexion->prepare($sql);
		$consulta->bindValue(":id", $id, PDO::PARAM_INT);
		$consulta->execute();

		$producto = $consulta->fetchObject('Producto');
		return $producto;
	}

	public static function TraerTodosLosProductos(){
		$conexion = self::CrearConexion();

		$sql = "SELECT P.id, P.nombre, P.seccion, P.precio, P.pais, P.importado, P.fecha
				FROM productos P";

		$consulta = $conexion->prepare($sql);
		$consulta->execute();

		$productos = $consulta->fetchall(PDO::FETCH_CLASS, 'Producto');
		return $productos;
	}

	public static function Agregar($producto){
		$conexion = self::CrearConexion();

		$sql = "INSERT INTO productos (nombre, seccion, precio, importado, fecha, pais, foto)
				VALUES (:nombre, :seccion, :precio, :importado, :fecha, :pais, :foto)";

		$consulta = $conexion->prepare($sql);
		$consulta->bindValue(":nombre", $producto->nombre, PDO::PARAM_STR);
		$consulta->bindValue(":seccion", $producto->seccion, PDO::PARAM_STR);
		$consulta->bindValue(":precio", $producto->precio, PDO::PARAM_STR);
		$consulta->bindValue(":importado", $producto->importado, PDO::PARAM_STR);
		$consulta->bindValue(":fecha", $producto->fecha, PDO::PARAM_STR);
		$consulta->bindValue(":pais", $producto->pais, PDO::PARAM_STR);
		$consulta->bindValue(":foto", $producto->foto, PDO::PARAM_STR);
		$consulta->execute();

		$idAgregado = $conexion->lastInsertId();
		return $idAgregado;
	}

	public static function Modificar($producto){
		$conexion = self::CrearConexion();

		$sql = "UPDATE productos
				SET nombre = :nombre, seccion = :seccion, precio = :precio, importado = :importado, fecha = :fecha, pais = :pais, foto = :foto
				WHERE id = :id";

		$consulta = $conexion->prepare($sql);
		$consulta->bindValue(":nombre", $producto->nombre, PDO::PARAM_STR);
		$consulta->bindValue(":seccion", $producto->seccion, PDO::PARAM_STR);
		$consulta->bindValue(":precio", $producto->precio, PDO::PARAM_STR);
		$consulta->bindValue(":importado", $producto->importado, PDO::PARAM_STR);
		$consulta->bindValue(":fecha", $producto->fecha, PDO::PARAM_STR);
		$consulta->bindValue(":pais", $producto->pais, PDO::PARAM_STR);
		$consulta->bindValue(":foto", $producto->foto, PDO::PARAM_STR);
		$consulta->bindValue(":id", $producto->id, PDO::PARAM_INT);
		$consulta->execute();

		$cantidad = $consulta->rowCount();
		return $cantidad;
	}

	public static function Eliminar($id){
		$conexion = self::CrearConexion();

		$sql = "DELETE FROM productos
				WHERE id = :id";

		$consulta = $conexion->prepare($sql);
		$consulta->bindValue(":id", $id, PDO::PARAM_INT);
		$consulta->execute();

		$cantidad = $consulta->rowCount();
		return $cantidad;
	}

	public static function CrearConexion(){
		try
		{
			$conexion = new PDO("mysql:host=localhost;dbname=utn;charset=utf8;",'root','');
			return $conexion;
		}
		catch (Exception $e) {
			print_r("Error: " . $e->GetMessage());
			die();
			return;
		}
	}
//--------------------------------------------------------------------------------//
}
?>