//%attributes = {}


$expenses:=ds:C1482.Expenses.new()
$expenses.name:="Mariette"
$expenses.messagesCost:=1
$expenses.minutesCost:=1
$expenses.dataCost:=1
$expenses.longDistanceCost:=1
$expenses.save()


If ((ds:C1482.Expenses.all().length=0) | Shift down:C543)
	
	$messagesCosts:=New collection:C1472(20; 47; 30; 23; 34; 13; 15; 42; 53; 12; 43; 12; 34; 45; 65)
	$minutesCosts:=New collection:C1472(5; 41; 40; 22; 74; 43; 15; 122; 23; 14; 0; 2; 0; 93; 11)
	$dataCosts:=New collection:C1472(4; 0; 340; 23; 31; 13; 25; 32; 6; 33; 90; 22; 8; 0; 10)
	$longDistanceCosts:=New collection:C1472(14; 24; 43; 2; 21; 23; 54; 43; 54; 2; 0; 0; 4; 5; 0)
	
	$names:=New collection:C1472("Charley"; "Dan"; "Jacob"; "Olivia"; "David"; "Heather"; "Beth"; "John"; "Jazz"; "Simon"; "Don"; "Ronald"; "Jay"; "Carl"; "Luke")
	
	$index:=0
	
	For each ($name; $names)
		
		$expenses:=ds:C1482.Expenses.new()
		$expenses.name:=$name
		$expenses.messagesCost:=$messagesCosts[$index]
		$expenses.minutesCost:=$minutesCosts[$index]
		$expenses.dataCost:=$dataCosts[$index]
		$expenses.longDistanceCost:=$longDistanceCosts[$index]
		$expenses.save()
		
		$index:=$index+1
		
	End for each 
	
End if 