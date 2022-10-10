<?php
	// include connection function getData()
	include 'conn.php';
	
	// PDO SQL
	$sql = "SELECT * FROM `app_view`" ;
	// PDO Params
	$params = array();
	
	// Put results into $data
	$data = getData($sql,$params);
	// uncomment to see results
	
	//var_dump($data);
?>

{
	"appointments":[],
	"ownerDetails": [{
		"ID":"<?php echo $data[0]["Owner_ID"]?>",
		"FName":"<?php echo $data[0]["Owner_FName"]?>",
		"Surname":"<?php echo $data[0]["Owner_Surname"]?>",
		"Add1":"<?php echo $data[0]["Owner_Address_1"]?>",
		"Add2":"<?php echo $data[0]["Owner_Address_2"]?>",
		"City":"<?php echo $data[0]["Owner_City"]?>",
		
		"Post_Code":"<?php echo $data[0]["Owner_PostCode"]?>",
		"Country":"<?php echo $data[0]["Owner_Country"]?>"
    }],
	"pets":[
	<?php for ($x = 0; $x < count($data); $x++) { ?>
	{
		"Pet_ID":"<?php echo $data[$x]['Pet_ID']; ?>",
		"Pet_Name":"<?php echo $data[$x]['Pet_Name']; ?>",
		"Pet_Age":<?php echo $data[$x]['Pet_Age']; ?>,
		"Pet_Sex":<?php echo $data[$x]['Pet_Sex']; ?>,
		"Pet_Type":"<?php echo $data[$x]['Pet_Type']; ?>",
		"is_Alergic_Penicillin":<?php echo $data[$x]['is_Allergic_to_Penicillin']; ?>
	}<?php if ($x != (count($data)-1)) echo ","; ?>
	<?php } ?>
	]
}

