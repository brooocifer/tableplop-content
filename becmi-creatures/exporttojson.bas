Sub exporttojson
'First export to CSV which we will later use as the source for the export to json
Dim Propval(1) as New com.sun.star.beans.PropertyValue
Propval(0).Name = "FilterName"
Propval(0).Value = "Text - txt - csv (StarCalc)"
Propval(1).Name = "FilterOptions"
Propval(1).Value ="94,34,0,1,1"
Doc = ThisComponent
Dim FileName as String
FileName = Doc.getURL()
splitName = split(FileName, ".")
FileName = splitName(0) + ".csv"
Doc.StoreToURL(FileName, Propval())

'Export to JSON

'Get the number of keys in the header of the csv
Dim csv As Integer
Dim klen As Integer
csv = FreeFile
Open FileName For Input As csv
Line Input #csv, first
keys = split(first, "^")
klen = 0
For Each i in keys
	klen = klen + 1
Next i

'Need to count the number of lines in the csv (after header line)
Dim lines as Integer
lines = 0
Do While not eof(csv)
	Line Input #csv, line   
	If line <>"" Then
		lines = lines + 1
	End If
Loop
Close #csv

'Need to re-open the csv again for a fresh read from just after the header
Open FileName For Input As csv
Line Input #csv, line

'Open each JSON file for writing
Dim json As Integer
Dim CurrentLine As String
Dim fn As String
Dim temp As String

For line = 0 to lines-1
	Line Input #csv, CurrentLine   
	If CurrentLine <>"" Then
    	values = split(CurrentLine, "^")
		fn = splitName(0) + "." + values(0) + ".json" 
		json = Freefile
		Open fn For Output As json
		Print #json, "{"	
		Print #json, "  ""properties"": ["
		Print #json, "    {"
		Print #json, "      ""id"": 4119054,"
		Print #json, "      ""parentId"": 4119051,"
		Print #json, "      ""type"": ""health"","
		Print #json, "      ""data"": {},"
		Print #json, "      ""name"": ""hit-points"","
		Print #json, "      ""local"": true,"
		Print #json, "      ""value"": 0,"
		Print #json, "      ""rank"": -1,"
		Print #json, "      ""characterId"": 262132"
		Print #json, "    },"
		Print #json, "    {"
		Print #json, "      ""id"": 4119055,"
		Print #json, "      ""parentId"": 4119054,"
		Print #json, "      ""type"": ""number"","
		Print #json, "      ""data"": {},"
		Print #json, "      ""name"": ""hit-points-temporary"","
		Print #json, "      ""local"": true,"
		Print #json, "      ""value"": 0,"
		Print #json, "      ""rank"": 87,"
		Print #json, "      ""characterId"": 262132"
		Print #json, "    },"
		Print #json, "    {"
		Print #json, "      ""id"": 4119056,"
		Print #json, "      ""parentId"": 4119054,"
		Print #json, "      ""type"": ""number"","
		Print #json, "      ""data"": {},"
		Print #json, "      ""name"": ""hit-points-maximum"","
		Print #json, "      ""local"": true,"
		Print #json, "      ""value"": 0,"
		Print #json, "      ""rank"": 85,"
		Print #json, "      ""characterId"": 262132"
		Print #json, "    },"
		Print #json, "    {"
		Print #json, "      ""id"": 4119057,"
		Print #json, "      ""parentId"": 4119051,"
		Print #json, "      ""type"": ""title-section"","
		Print #json, "      ""data"": {},"
		Print #json, "      ""value"": ""Info"","
		Print #json, "      ""rank"": 0,"
		Print #json, "      ""characterId"": 262132"
		Print #json, "    },"
		Print #json, "    {"
		Print #json, "      ""id"": 4119043,"
		Print #json, "      ""parentId"": null,"
		Print #json, "      ""type"": ""tab-section"","
		Print #json, "      ""data"": {},"
		Print #json, "      ""value"": ""Character"","
		Print #json, "      ""rank"": -1,"
		Print #json, "      ""characterId"": 262132"
		Print #json, "    },"
		Print #json, "    {"
		Print #json, "      ""id"": 4119044,"
		Print #json, "      ""parentId"": 4119043,"
		Print #json, "      ""type"": ""horizontal-section"","
		Print #json, "      ""data"": {},"
		Print #json, "      ""value"": """","
		Print #json, "      ""rank"": -2,"
		Print #json, "      ""characterId"": 262132"
		Print #json, "    },"
		Print #json, "    {"
		Print #json, "      ""id"": 4119045,"
		Print #json, "      ""parentId"": 4119044,"
		Print #json, "      ""type"": ""section"","
		Print #json, "      ""data"": {},"
		Print #json, "      ""value"": """","
		Print #json, "      ""rank"": 1,"
		Print #json, "      ""size"": 49.25,"
		Print #json, "      ""characterId"": 262132"
		Print #json, "    },"
		Print #json, "    {"
		Print #json, "      ""id"": 4119050,"
		Print #json, "      ""parentId"": 4119045,"
		Print #json, "      ""type"": ""appearance"","
		Print #json, "      ""data"": {"
		Print #json, "        ""appearances"": []"
		Print #json, "      },"
		Print #json, "      ""value"": """","
		Print #json, "      ""rank"": -1,"
		Print #json, "      ""characterId"": 262132"
		Print #json, "    },"
		Print #json, "    {"
		Print #json, "      ""id"": 4119051,"
		Print #json, "      ""parentId"": 4119044,"
		Print #json, "      ""type"": ""section"","
		Print #json, "      ""data"": {},"
		Print #json, "      ""value"": """","
		Print #json, "      ""rank"": 0,"
		Print #json, "      ""size"": 50.75,"
		Print #json, "      ""characterId"": 262132"
		Print #json, "    },"
		Print #json, "    {"
		Print #json, "      ""id"": 4119075,"
		Print #json, "      ""parentId"": null,"
		Print #json, "      ""type"": ""tab-section"","
		Print #json, "      ""data"": {},"
		Print #json, "      ""value"": ""Actions"","
		Print #json, "      ""rank"": 1,"
		Print #json, "      ""characterId"": 262132"
		Print #json, "    },"
		Print #json, "    {"
		Print #json, "      ""id"": 4119759,"
		Print #json, "      ""parentId"": 4119051,"
		Print #json, "      ""type"": ""horizontal-section"","
		Print #json, "      ""data"": {},"
		Print #json, "      ""value"": """","
		Print #json, "      ""rank"": -2,"
		Print #json, "      ""characterId"": 262132"
		Print #json, "    },"
		Print #json, "    {"
		Print #json, "      ""id"": 4119760,"
		Print #json, "      ""parentId"": 4119759,"
		Print #json, "      ""type"": ""section"","
		Print #json, "      ""data"": {},"
		Print #json, "      ""value"": """","
		Print #json, "      ""rank"": 0,"
		Print #json, "      ""size"": 50,"
		Print #json, "      ""characterId"": 262132"
		Print #json, "    },"
		Print #json, "    {"
		Print #json, "      ""id"": 4119761,"
		Print #json, "      ""parentId"": 4119759,"
		Print #json, "      ""type"": ""section"","
		Print #json, "      ""data"": {},"
		Print #json, "      ""value"": """","
		Print #json, "      ""rank"": 1,"
		Print #json, "      ""size"": 50,"
		Print #json, "      ""characterId"": 262132"
		Print #json, "    },"
		Print #json, "    {"
		Print #json, "      ""id"": 4119769,"
		Print #json, "      ""parentId"": 4119045,"
		Print #json, "      ""type"": ""text"","
		Print #json, "      ""data"": {},"
		Print #json, "      ""name"": ""Treasure"","
		Print #json, "      ""value"": ""0 gp"","
		Print #json, "      ""rank"": 7,"
		Print #json, "      ""characterId"": 262132"
		Print #json, "    },"
		Print #json, "    {"
		Print #json, "      ""id"": 4119779,"
		Print #json, "      ""parentId"": 4119043,"
		Print #json, "      ""type"": ""heading"","
		Print #json, "      ""data"": {},"
		Print #json, "      ""value"": ""Other Information"","
		Print #json, "      ""rank"": -1,"
		Print #json, "      ""characterId"": 262132"
		Print #json, "    },"
		Print #json, "    {"
		Print #json, "      ""id"": 4119763,"
		Print #json, "      ""parentId"": 4119043,"
		Print #json, "      ""type"": ""number"","
		Print #json, "      ""data"": {},"
		Print #json, "      ""name"": ""HD For THACO calc"","
		Print #json, "      ""value"": 1,"
		Print #json, "      ""rank"": 3,"
		Print #json, "      ""formula"": ""hd_modifier > 0 ? hit_dice+1 : hit_dice"","
		Print #json, "      ""characterId"": 262132"
		Print #json, "    },"
		Print #json, "    {"
		Print #json, "      ""id"": 4119757,"
		Print #json, "      ""parentId"": 4119057,"
		Print #json, "      ""type"": ""number"","
		Print #json, "      ""data"": {},"
		Print #json, "      ""name"": ""THACO"","
		Print #json, "      ""value"": 19,"
		Print #json, "      ""rank"": 90,"
		Print #json, "      ""formula"": ""round (0.0000000007360403*hd_for_thaco_calc^8-0.0000001131926854*hd_for_thaco_calc^7+0.0000067486249053*hd_for_thaco_calc^6-0.0001958667110075*hd_for_thaco_calc^5+0.0028018455396813*hd_for_thaco_calc^4-0.0166731418019406*hd_for_thaco_calc^3+0.0268407902579332*hd_for_thaco_calc^2-0.970892261437263*hd_for_thaco_calc+19.9733537305618)"","
		Print #json, "      ""characterId"": 262132"
		Print #json, "    },"
		Print #json, "    {"
		Print #json, "      ""id"": 4172568,"
		Print #json, "      ""parentId"": null,"
		Print #json, "      ""type"": ""tab-section"","
		Print #json, "      ""data"": {},"
		Print #json, "      ""value"": ""Special Abilities"","
		Print #json, "      ""rank"": 0,"
		Print #json, "      ""characterId"": 262132"
		Print #json, "    },"
		Print #json, "    {"
		Print #json, "      ""id"": 4172577,"
		Print #json, "      ""parentId"": 4172568,"
		Print #json, "      ""type"": ""number"","
		Print #json, "      ""data"": {},"
		Print #json, "      ""name"": ""Target AC"","
		Print #json, "      ""value"": """","
		Print #json, "      ""rank"": 3,"
		Print #json, "      ""characterId"": 262132"
		Print #json, "    },"
		Print #json, "    {"
		Print #json, "      ""id"": 4172569,"
		Print #json, "      ""parentId"": 4172568,"
		Print #json, "      ""type"": ""heading"","
		Print #json, "      ""data"": {},"
		Print #json, "      ""value"": ""Combat Variables"","
		Print #json, "      ""rank"": 0,"
		Print #json, "      ""characterId"": 262132"
		Print #json, "    },"
		Print #json, "    {"
		Print #json, "      ""id"": 4172575,"
		Print #json, "      ""parentId"": 4172568,"
		Print #json, "      ""type"": ""number"","
		Print #json, "      ""data"": {},"
		Print #json, "      ""name"": ""temp"","
		Print #json, "      ""value"": 20,"
		Print #json, "      ""rank"": 1,"
		Print #json, "      ""characterId"": 262132"
		Print #json, "    },"
		Print #json, "    {"
		Print #json, "      ""id"": 4172576,"
		Print #json, "      ""parentId"": 4172568,"
		Print #json, "      ""type"": ""number"","
		Print #json, "      ""data"": {},"
		Print #json, "      ""name"": ""orary"","
		Print #json, "      ""value"": 17,"
		Print #json, "      ""rank"": 2,"
		Print #json, "      ""characterId"": 262132"
		Print #json, "    },"
		Print #json, "    {"
		Print #json, "      ""id"": 4172583,"
		Print #json, "      ""parentId"": 4119075,"
		Print #json, "      ""type"": ""number"","
		Print #json, "      ""data"": {},"
		Print #json, "      ""name"": ""Misc Modifier (Missile Range, Magic, Curse, etc.)"","
		Print #json, "      ""rank"": -3,"
		Print #json, "      ""characterId"": 262132"
		Print #json, "    },"
	    	
    	'Find the last non-empty or non-zero line for each entry
    	lastValidLine = 0
    	For j = 0 to klen-1
    		If values(j) = "" OR values(j) = "0" Then
    			'NOT
    		Else
    			lastValidLine = j
    		End If
    	Next j
    		
    	For i = 0 To klen-1
    		keyValString = "        {" & CHR(34) & LCase(keys(i)) & CHR(34) & ": " & CHR(34) & values(i) & CHR(34) & " !!!!!!!!!!!!!!!!!!!!!!! },"
    		keyValLastEntry = "        {" & CHR(34) & LCase(keys(i)) & CHR(34) & ": " & CHR(34) & values(i) & CHR(34) & " !!!!!!!!!!!!!!!!!!!!!!! }"
    		
    		Select Case keys(i)
    		
    		Case "Monster":
    			temp = "" ' Do nothing
    		
    		Case "Movement":
				Print #json,"    {"
				Print #json,"      ""id"": 4119060,"
				Print #json,"      ""parentId"": 4119057,"
				Print #json,"      ""type"": ""number"","
				Print #json,"      ""data"": {},"
				Print #json,"      ""name"": ""Speed"","
				Print #json,"      ""value"": " & val(left(values(i),3)) & ","
				Print #json,"      ""rank"": 88,"
				Print #json,"      ""characterId"": 262132"
				Print #json,"    },"
				
			Case "Attacks":
				Print #json,"    {"
				Print #json,"      ""id"": 4119756,"
				Print #json,"      ""parentId"": 4119057,"
				Print #json,"      ""type"": ""text"","
				Print #json,"      ""data"": {},"
				Print #json,"      ""name"": ""Number of Attacks"","
				Print #json,"      ""value"": """ & values(i) & ""","
				Print #json,"      ""rank"": 92,"
				Print #json,"      ""characterId"": 262132"
				Print #json,"    },"
				
			Case "AC":
				Print #json,"    {"
				Print #json,"      ""id"": 4119061,"
				Print #json,"      ""parentId"": 4119057,"
				Print #json,"      ""type"": ""number"","
				Print #json,"      ""data"": {},"
				Print #json,"      ""name"": ""Armor Class"","
				Print #json,"      ""value"": " & values(i) & ","
				Print #json,"      ""rank"": 87,"
				Print #json,"      ""characterId"": 262132"
				Print #json,"    },"
			
			Case "Hit Dice":
				Print #json,"    {"
				Print #json,"      ""id"": 4119758,"
				Print #json,"      ""parentId"": 4119760,"
				Print #json,"      ""type"": ""number"","
				Print #json,"      ""data"": {},"
				Print #json,"      ""name"": ""Hit Dice"","
				Print #json,"      ""value"": " & values(i) & ","
				Print #json,"      ""rank"": 0,"
				Print #json,"      ""characterId"": 262132"
				Print #json,"    },"
				
			Case "Alignment":
				Print #json,"    {"
				Print #json,"      ""id"": 4119768,"
				Print #json,"      ""parentId"": 4119045,"
				Print #json,"      ""type"": ""text"","
				Print #json,"      ""data"": {},"
				Print #json,"      ""name"": ""Alignment"","
				Print #json,"      ""value"": """ & values(i) & ""","
				Print #json,"      ""rank"": 2,"
				Print #json,"      ""characterId"": 262132"
				Print #json,"    },"
    
    		Case "Hit Dice Modifier":
				Print #json,"    {"
				Print #json,"      ""id"": 4119762,"
				Print #json,"      ""parentId"": 4119761,"
				Print #json,"      ""type"": ""number"","
				Print #json,"      ""data"": {},"
				Print #json,"      ""name"": ""HD Modifier"","
				Print #json,"      ""value"": " & values(i) & ","
				Print #json,"      ""rank"": 0,"
				Print #json,"      ""characterId"": 262132"
				Print #json,"    },"

			Case "XP":
				Print #json,"    {"
				Print #json,"      ""id"": 4119770,"
				Print #json,"      ""parentId"": 4119057,"
				Print #json,"      ""type"": ""number"","
				Print #json,"      ""data"": {},"
				Print #json,"      ""name"": ""XP"","
				Print #json,"      ""value"": " & values(i) & ","
				Print #json,"      ""rank"": 97,"
				Print #json,"      ""characterId"": 262132"
				Print #json,"    },"
			
    		Case "Damage":
				Print #json,"    {"
				Print #json,"      ""id"": 4119766,"
				Print #json,"      ""parentId"": 4119057,"
				Print #json,"      ""type"": ""text"","
				Print #json,"      ""data"": {},"
				Print #json,"      ""name"": ""Damage"","
				Print #json,"      ""value"": """ & values(i) & ""","
				Print #json,"      ""rank"": 93,"
				Print #json,"      ""characterId"": 262132"
				Print #json,"    },"
				Print #json,"    {"
				Print #json,"      ""id"": 4119078,"
				Print #json,"      ""parentId"": 4119075,"
				Print #json,"      ""type"": ""message"","
				Print #json,"      ""data"": {},"
				Print #json,"      ""name"": ""attack1"","
				Print #json,"      ""icon"": ""/images/message.png"","
				Print #json,"      ""value"": """","
				Print #json,"      ""rank"": -1,"
				Print #json,"      ""message"": ""Attack: Roll 1d20 + {misc_modifier} > {target_ac = thaco - ?:Target AC:}?, Damage: Roll " & values(i) & " + {misc_modifier}"","
				Print #json,"      ""characterId"": 262132"
				Print #json,"    },"
				Print #json,"    {"
				Print #json,"      ""id"": 4119076,"
				Print #json,"      ""parentId"": 4119075,"
				Print #json,"      ""type"": ""message"","
				Print #json,"      ""data"": {},"
				Print #json,"      ""name"": ""attack1full"","
				Print #json,"      ""icon"": ""/images/message.png"","
				Print #json,"      ""value"": """","
				Print #json,"      ""rank"": 1,"
				Print #json,"      ""message"": ""Attack: {temp = 1d20} + {misc_modifier} > {orary = thaco - ?:Target AC:}?, Damage {if(temp + misc_modifier > orary and temp !=1 or temp == 20, " & values(i) & " + misc_modifier, 1 == 0 )}"","
				Print #json,"      ""characterId"": 262132"
				Print #json,"    },"
 
 			Case "Morale":
				Print #json,"    {"
				Print #json,"      ""id"": 4119767,"
				Print #json,"      ""parentId"": 4119045,"
				Print #json,"      ""type"": ""number"","
				Print #json,"      ""data"": {},"
				Print #json,"      ""name"": ""Morale"","
				Print #json,"      ""value"": " & val(left(values(i),3)) & ","
				Print #json,"      ""rank"": 4,"
				Print #json,"      ""characterId"": 262132"
				Print #json,"    },"
				Print #json,"    {"
				Print #json,"      ""id"": 4119774,"
				Print #json,"      ""parentId"": 4119045,"
				Print #json,"      ""type"": ""number"","
				Print #json,"      ""data"": {},"
				Print #json,"      ""name"": ""Alternate Morale"","
				If val(left(values(i),3)) = val(right(values(i),3)) Then
					Print #json,"      ""value"": """","
				Else
					Print #json,"      ""value"": " & val(right(values(i),3)) & ","
				End If
				Print #json,"      ""rank"": 5,"
				Print #json,"      ""characterId"": 262132"
				Print #json,"    },"
 			   		
    		Case "Number appearing":
				Print #json,"    {"
				Print #json,"      ""id"": 4119772,"
				Print #json,"      ""parentId"": 4119057,"
				Print #json,"      ""type"": ""number"","
				Print #json,"      ""data"": {},"
				Print #json,"      ""name"": ""Number Appearing"","
				Print #json,"      ""value"": " & values(i) & ","
				Print #json,"      ""rank"": 96,"
				Print #json,"      ""characterId"": 262132"
				Print #json,"    },"

    		Case "Special Damage":
				Print #json,"    {"
				Print #json,"      ""id"": 4119771,"
				Print #json,"      ""parentId"": 4119057,"
				Print #json,"      ""type"": ""text"","
				Print #json,"      ""data"": {},"
				Print #json,"      ""name"": ""Special Damage"","
				Print #json,"      ""value"": """ & values(i) & ""","
				Print #json,"      ""rank"": 94,"
				Print #json,"      ""characterId"": 262132"
				Print #json,"    },"
    		
    		Case "Lair Treasure Type":
				Print #json,"    {"
				Print #json,"      ""id"": 4119775,"
				Print #json,"      ""parentId"": 4119045,"
				Print #json,"      ""type"": ""text"","
				Print #json,"      ""data"": {},"
				Print #json,"      ""name"": ""Lair Treasure Type"","
				Print #json,"      ""value"": """ & values(i) & ""","
				Print #json,"      ""rank"": 8,"
				Print #json,"      ""characterId"": 262132"
				Print #json,"    },"

			Case "Carried Treasure Type":
				Print #json,"    {"
				Print #json,"      ""id"": 4119776,"
				Print #json,"      ""parentId"": 4119045,"
				Print #json,"      ""type"": ""text"","
				Print #json,"      ""data"": {},"
				Print #json,"      ""name"": ""Carried Treasure Type"","
				Print #json,"      ""value"": """ & values(i) & ""","
				Print #json,"      ""rank"": 9,"
				Print #json,"      ""characterId"": 262132"
				Print #json,"    },"
			
			Case "Intelligence":
				Print #json,"    {"
				Print #json,"      ""id"": 4119778,"
				Print #json,"      ""parentId"": 4119045,"
				Print #json,"      ""type"": ""text"","
				Print #json,"      ""data"": {},"
				Print #json,"      ""name"": ""Intelligence"","
				Print #json,"      ""value"": """ & values(i) & ""","
				Print #json,"      ""rank"": 6,"
				Print #json,"      ""characterId"": 262132"
				Print #json,"    },"

			Case "Rule Book":
				Print #json,"    {"
				Print #json,"      ""id"": 4119780,"
				Print #json,"      ""parentId"": 4119043,"
				Print #json,"      ""type"": ""text"","
				Print #json,"      ""data"": {},"
				Print #json,"      ""name"": ""Rule Book"","
				Print #json,"      ""value"": """ & values(i) & ""","
				Print #json,"      ""rank"": 0,"
				Print #json,"      ""characterId"": 262132"
				Print #json,"    },"
			
			Case "Page":
				Print #json,"    {"
				Print #json,"      ""id"": 4119781,"
				Print #json,"      ""parentId"": 4119043,"
				Print #json,"      ""type"": ""number"","
				Print #json,"      ""data"": {},"
				Print #json,"      ""name"": ""Page Number"","
				Print #json,"      ""value"": """ & values(i) & ""","
				Print #json,"      ""rank"": 1,"
				Print #json,"      ""characterId"": 262132"
				Print #json,"    },"
			
			Case "Picture":
				Print #json,"    {"
				Print #json,"      ""id"": 4119782,"
				Print #json,"      ""parentId"": 4119043,"
				Print #json,"      ""type"": ""text"","
				Print #json,"      ""data"": {},"
				Print #json,"      ""name"": ""Picture URL"","
				Print #json,"      ""value"": """ & values(i) & ""","
				Print #json,"      ""rank"": 2,"
				Print #json,"      ""characterId"": 262132"
				Print #json,"    }"

			Case "Save As":
				Print #json,"    {"
				Print #json,"      ""id"": 4119773,"
				Print #json,"      ""parentId"": 4119045,"
				Print #json,"      ""type"": ""text"","
				Print #json,"      ""data"": {},"
				Print #json,"      ""name"": ""Save As"","
				If val(right(values(i),2)) = 0 Then
					Print #json,"      ""value"": """ & values(i) & ""","
				Else
					Print #json,"      ""value"": """ & trim(left(values(i),len(values(i))-2)) & ""","
				End If
				Print #json,"      ""rank"": 0,"
				Print #json,"      ""characterId"": 262132"
				Print #json,"    },"
				Print #json,"    {"
				Print #json,"      ""id"": 4124873,"
				Print #json,"      ""parentId"": 4119045,"
				Print #json,"      ""type"": ""number"","
				Print #json,"      ""data"": {},"
				Print #json,"      ""name"": ""Save Level"","
				If val(right(values(i),2)) = 0 Then
					Print #json,"      ""value"": """","
				Else
					Print #json,"      ""value"": " & val(right(values(i),2)) & ","
				End If
				Print #json,"      ""rank"": 1,"
				Print #json,"      ""characterId"": 262132"
				Print #json,"    },"

						
    		Case Else

	    	If i = klen-1 Then
	    		'Don't include comma after last entry
	    		Print #json, keyValLastEntry
	    	Else
	    		If i = lastValidLine Then
	    			Print #json, keyValLastEntry
	    		Else
	    			Print #json, keyValString
	    		End If
	    		
	    	End If
	    	
	    	End Select
    	Next i
    	
	End If

	' Close file 
	Print #json, "  ],"
	Print #json, "  ""private"": false,"
	Print #json, "  ""type"": ""tableplop-character-v2"" "
	Print #json, "}"
	Close #json

Next line
 
 
Close #csv          

End Sub
