_global.searchResultsArray = new Array();
_global.nodeToProcessArray = new Array();
/*******************************************************************************************
SEARCH FUNCTIONS
These are the functions used for the search process
*******************************************************************************************/
// this function attaches a search field for the user to enter a name to search for.
// it then searches the names xml file to find the program that person is in and calls
// LoadXML to load the program xml file (ie. Architecture, Digital).
function FindDetail(){
//	trace("xmlFile is :" + xmlFile);
//	trace("now in parseData function");
	var spacing = 30;
	var mainNode = namesXML.firstChild;
	listBox.namesBox_MC.attachMovie("nameSearchBox", "searchBox", 700);
	
	// Listen for the return key to be pressed. if it is go search.
	myListener = new Object();
	myListener.onKeyDown = function () {
//  		trace ("You pressed a key.");
		if(Key.isDown(Key.ENTER)){
			Search();			  
		}		  
	}
	Key.addListener(myListener);
	
	//this is so that if they scrolled the list it will start at the top.
	listBox.namesBox_MC._y = listBoxStartingY;
	listBox.namesBox_MC.searchBox.goSearch.onRelease = function(){
		Search();
}

function Search(){
		searchResultsArray = [];
		nodeToProcessArray = [];
//		ResetButtons("", names);
		removeMovieClip(detailBox[detailInstanceName]);
//		trace("number of names is: " + numberOfNames);
//		trace("number of searchNames is: " + numberOfSearchNames);
		ResetSearchNames();
		numberOfSearchNames = 0;
		var nameToSearch = listBox.namesBox_MC.searchBox.SearchBoxMC.searchText.text;
//		trace("name to search is: " + nameToSearch);
		var numberOfNames = mainNode.childNodes.length;
//		trace("number of names is: " + numberOfNames);
		for (i=0; i<numberOfNames; i++){
			nodeToProcess = mainNode.childNodes[i];
			nameConcat = nodeToProcess.childNodes[0].childNodes.toString() + " " + nodeToProcess.childNodes[1].childNodes.toString();
//			trace("nameConcat is: " + nameConcat);
//			trace("nameToSearch is: " + nameToSearch);
//			if (nameConcat == nameToSearch){
			if (nameConcat.indexOf(nameToSearch) != -1){
				searchResultsArray.push(nameConcat);
				nodeToProcessArray.push(nodeToProcess);
//				trace("searchResultsArray is: " + searchResultsArray);
//				trace("nodeToProcessArray is: " + nodeToProcessArray);
			}
		}
		listBox.namesBox_MC._y = listBoxStartingY;
		trace("search array results: " + searchResultsArray.length);
		if (searchResultsArray.length == 0){
			trace("there are no results");
			ResetSearchNames();
			detailBox.attachMovie("searchErrorMC", "searchErrorMC", 800);
			detailBox.searchErrorMC.errorOK.onRelease = function(){
				removeMovieClip(detailBox.searchErrorMC);	
			}
			/*
			listBox.namesBox_MC.attachMovie("buttonBox", noResults, 200);
			listBox.namesBox_MC.noResults.textBoxMC.menuText.text = "nothing found";
			listBox.namesBox_MC.noResults.textBoxMC.menuText.setTextFormat(listBoxTextDisplay);
			listBox.namesBox_MC.noResults._y = 60;
			*/
		}else{
			for (z=0; z < searchResultsArray.length; z++){
	//			trace("in the populate listbox for loop");
				var name = "nameBox" + z;
	//			y = z * listBox.namesBox_MC.searchBox._y;
				y = z * spacing + 30; //plus 30 so that the names get displayed below the search box
	//			trace("searchBox y is: " + listBox.namesBox_MC.searchBox._y);
	//			trace("y is: " + y);
				listBox.namesBox_MC.attachMovie("buttonBox", name, z);
				listBox.namesBox_MC[name]._y = y;
				listBox.namesBox_MC[name].textBoxMC.menuText.text = searchResultsArray[z];
				listBox.namesBox_MC[name].textBoxMC.menuText.setTextFormat(listBoxTextDisplay);
				listBox.namesBox_MC[name].node = nodeToProcessArray[z];
		//		trace("listBox name is: " + listBox.namesbox_MC[name]);
				listBox.namesBox_MC[name].name = name;
								
				listBox.namesBox_MC[name].onRollOver = function(){
					this.rollover(listBoxRolloverDisplay);
				}
				listBox.namesBox_MC[name].onRollOut = function(){
					this.rollout(listBoxTextDisplay);
				}
				listBox.namesBox_MC[name].onRelease = function(){
					this.searchNameRelease(this.node);
				}
				
	//				LoadXML(xmlFile, "searchProgram");
	//				this.searchNameRelease(this.node);
			}
		}
			// keep a number of names count for the clearing function (ResetNames)
			listBox.bkgd._yscale +=  spacing;
			numberOfSearchNames += z;
//			trace("number of search names is: " + numberOfSearchNames);
	}
}

function ResetSearchNames(){
	var t = 0;
	while (++t < numberOfSearchNames){
		name = "nameBox" + t;
		listBox.namesBox_MC[name].removeMovieClip();
	}
		
}


// This function searches the program (school) xml file for the searched name and calles the 
// DisplayDetail function to display the details.
function LoadDetail(finalName){
//	trace("in the load detail function");
//	trace("finalName is: " + finalName);
//	trace("name concat is: " + nameConcat);
	var mainNode = namesXML.firstChild;
//	trace("main node is: " + mainNode.toString());
	var numberOfNames = mainNode.childNodes.length;
	trace ("number of names is: " + numberOfNames);
	for (i=0; i<numberOfNames; i++){
		NewNodeToProcess = mainNode.childNodes[i];
		NewNameConcat = NewNodeToProcess.childNodes[1].childNodes.toString() + " " + NewNodeToProcess.childNodes[2].childNodes.toString();
//		trace("nameConcat is: " + nameConcat);
//		trace("NewNameConcat is: " + NewNameConcat);
		if (finalName == NewNameConcat){
			DisplayDetail(NewNodeToProcess);	
		}
	}
	
}

/*******************************************************************************************
OTHER XML PARSE FUNCTIONS
These are the functions used for the search process
*******************************************************************************************/
// This function is called when the user clicks on a school name. It reads all of the 
// student names from the xml file and dispays them in the list box.
function DisplayNames(){
		var mainNode = namesXML.firstChild;
		spacing = 30;
		numberOfStudents = mainNode.childNodes.length;
		schoolName = mainNode.attributes.name;
		listBox.namesBox_MC._y = listBoxStartingY;
		
		for (i=0; i<numberOfStudents; i++){
			nodeToProcess = mainNode.childNodes[i];
			nameConcat = nodeToProcess.childNodes[1].childNodes.toString() + " " + nodeToProcess.childNodes[2].childNodes.toString();
			name = "nameBox" + i;
			y = i * spacing;
			listBox.namesBox_MC.attachMovie("buttonBox", name, i);
			listBox.namesBox_MC[name]._y = y;
			listBox.namesBox_MC[name].textBoxMC.menuText.text = nameConcat;
			listBox.namesBox_MC[name].textBoxMC.menuText.setTextFormat(listBoxTextDisplay);
			listBox.namesBox_MC[name].node = nodeToProcess;
	//		trace("listBox name is: " + listBox.namesbox_MC[name]);
			listBox.namesBox_MC[name].name = name;
			
			listBox.namesBox_MC[name].onRollOver = function(){
				this.rollover(listBoxRolloverDisplay);
			}
			listBox.namesBox_MC[name].onRollOut = function(){
				this.rollout(listBoxTextDisplay);
			}
			listBox.namesBox_MC[name].onRelease = function(){
				this.nameRelease(this.node);
			}
			// keep a number of names count for the clearing function (ResetNames)
			numberOfNames += 1
			listBox.bkgd._yscale +=  spacing;
		}	
}

// This function reads the student node from the xml file (object) and displays the detail content
// for that student.
function DisplayDetail(node){
//	trace ("display detail node is: " + node);
	detailInstanceName = "detailBox" + node.childNodes[0].childNodes.toString()
	detailBox.attachMovie("detailBoxMC", detailInstanceName, 900);
//	trace("detailBoxMC name is: " + detailInstanceName);
//	this.detailInstanceName._x = 481.9;
//	this.detailInstanceName._y = 64.0;
//	trace("detail box frame : " + detailBox[detailInstanceName]._currentframe);
	detailBox[detailInstanceName].onEnterFrame = function (){
//		trace("in the enterFrame function");
//		trace("detail Box Frame is: " + detailBox[detailInstanceName]._currentframe);
		if (detailBox[detailInstanceName]._currentframe == detailBoxEndingFrame){
//			trace("in the if");
//			trace("frame is: " + detailBox[detailInstanceName]._currentframe);
//			detailBox[detailInstanceName].detail_bkgd.setRGB(DETAIL_BKGD_COLOR);
//			detailBox[detailInstanceName].detail_bkgd._alpha = DETAIL_BKGD_ALPHA;
//			detailBox[detailInstanceName].detail_bkgd_2.setRGB(DETAIL_BKGD_COLOR);
//			detailBox[detailInstanceName].detail_bkgd_2._alpha = DETAIL_BKGD_ALPHA;
			detailStartingY = detailBox[detailInstanceName].detail_bkgd._y + 120;
			
			firstName = node.childNodes[1].childNodes.toString();
			lastName = node.childNodes[2].childNodes.toString();
			project = node.childNodes[3].childNodes.toString();
			media = node.childNodes[4].childNodes.toString();
			statement = node.childNodes[5].childNodes.toString();
			email = node.childNodes[6].childNodes.toString();
			phone = node.childNodes[7].childNodes.toString();
			
			
			photoURL = lastName + "_" + firstName;
		//	trace("photoURL is :" + photoURL);
			detailBox[detailInstanceName].dynamicName.text = firstName + " " + lastName;
			detailBox[detailInstanceName].dynamicEmail.text = "e:  " + email;
			detailBox[detailInstanceName].dynamicPhone.text = "p:  " + phone;
			detailBox[detailInstanceName].dynamicStatement.htmlText = statement;
			detailBox[detailInstanceName].dynamicMedia.htmlText = media;
			detailBox[detailInstanceName].dynamicProject.htmlText = project;
			
		//	trace(PICTURE_FOLDER + "/" + photoURL + "/" + photoURL + ".jpg");
//			var picOneBytesTotal = detailBox[detailInstanceName].pictureBox1.getBytesTotal();
//			var picTwoBytesTotal = detailBox[detailInstanceName].pictureBox2.getBytesTotal();
//			trace("pic one bytes total before is: " + picOneBytesTotal);
//			trace("pic two bytes total before is: " + picTwoBytesTotal);
//			trace("photo URL is: " + photoURL);
			detailBox[detailInstanceName].pictureBox1.loadMovie(PICTURE_FOLDER + "/" + photoURL + "/" + photoURL + ".jpg");
			detailBox[detailInstanceName].pictureBox2.loadMovie(PICTURE_FOLDER + "/" + photoURL + "/" + photoURL + "-w.jpg");
//			var picOneBytesLoaded = detailBox[detailInstanceName].pictureBox1.getBytesLoaded();
//			var picTwoBytesLoaded = detailBox[detailInstanceName].pictureBox2.getBytesLoaded();
//			trace("pic one bytes loaded after is: " + picOneBytesLoaded);
//			trace("pic two bytes loaded after is: " + picTwoBytesLoaded);
			
		//	trace(detailBox[detailInstanceName].pictureBox1.loadMovie(PICTURE_FOLDER + "/" + photoURL + "/" + photoURL + ".jpg"));
		
		//	if (!detailBox[detailInstanceName].pictureBox1.loadMovie(PICTURE_FOLDER + "/" + photoURL + "/" + photoURL + ".jpg")){
		//		detailBox[detailInstanceName].pictureBox1.loadMovie(PICTURE_FOLDER + "/none/BOY.jpg")
		//	}
//			if (!detailBox[detailInstanceName].pictureBox2.loadMovie(PICTURE_FOLDER + "/" + photoURL + "/" + photoURL + "-w.jpg")){
//				; 
//			}
		
			detailBox[detailInstanceName].pictureBox1._width = 50;
			detailBox[detailInstanceName].pictureBox1._height = 50;
			detailBox[detailInstanceName].pictureBox2._width = 50;
			detailBox[detailInstanceName].pictureBox2._height = 50;
			
		//	detailBox[detailInstanceName].pictureBox1.onRollOver = function(){
		//		detailBox[detailInstanceName].pictureBox1._xscale = 200;
		//		detailBox[detailInstanceName].pictureBox1._yscale = 200;
		//	}
			delete this.onEnterFrame;
		}
		
	}
	
	
}

