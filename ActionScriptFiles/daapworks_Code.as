
/**************************************************************************
CONSTANTS
***************************************************************************/

// use this instead of _root
_global.daapWorksExperiment = this;

// menu colors
//_global.STATIC_COLOR = 0xCCCCCC;
_global.STATIC_COLOR = 0x999999;	// color it is when it just sits there.
_global.ROLLOVER_COLOR = 0x000000;	// rollover color
_global.SELECT_COLOR = 0xCC3333;	// color when it is selected (you click on it)
_global.DETAIL_HEADINGS_COLOR = 0x999999;
_global.DETAIL_TEXT_COLOR = 0x999999;
//_global.MASTER_SELECT_COLOR = 0x2A83A2;
_global.MASTER_SELECT_COLOR = 0xCC3333;

// constants (settings) for the listbox - the box that contains the names
//_global.LISTBOX_COLOR = 0x000000;
_global.LISTBOX_COLOR = 0x666666;
//_global.LISTBOX_BKGD_COLOR = 0x66CC66; // green
_global.LISTBOX_BKGD_COLOR = 0x2A83A2;  // blue
_global.LISTBOX_BKGD_ALPHA = 9;
_global.LISTBOX_BKGD_WIDTH = 343.0;
_global.LISTBOX_BKGD_HEIGHT = 205.9;

_global.CLOSEBOX_ROLLOVER_COLOR = 0x999999;

// constants (settings) for the detail box - the box that holds the student details
//_global.DETAIL_BKGD_COLOR = 0x0033CC; // blue
//_global.DETAIL_BKGD_COLOR = 0xFA9801; // orange
_global.DETAIL_BKGD_COLOR = 0x69B920; // green
_global.DETAIL_BKGD_ALPHA = 10;
//_global.DETAIL_BKGD_WIDTH = 343.0;
//_global.DETAIL_BKGD_HEIGHT = 205.9;

_global.XML_FOLDER = "xmlFiles";
//the names of the files for the school lists
//these files must be present for this script to work
_global.ARCHITECTURE = XML_FOLDER + "/Architecture.xml";
//_global.ART_HISTORY = "ArtHistory.xml";
_global.DIGITAL = XML_FOLDER + "/Digital.xml";
_global.FASHION = XML_FOLDER + "/FashionDesign.xml";
_global.FASHION_PRODUCT = XML_FOLDER + "/FashionProduct.xml";
_global.FINE_ARTS = XML_FOLDER + "/FineArts.xml";
_global.GRAPHIC = XML_FOLDER + "/Graphic.xml";
_global.INDUSTRIAL = XML_FOLDER + "/Industrial.xml";
_global.INTERIOR = XML_FOLDER + "/Interior.xml";
_global.MASTERS = XML_FOLDER + "/Masters.xml";
_global.URBAN_PLANNING = XML_FOLDER + "/UrbanPlanning.xml";
_global.URBAN_STUDIES = XML_FOLDER + "/UrbanStudies.xml";
_global.SCHOOLS_NAMES = XML_FOLDER + "/namesAndSchools.xml";

_global.MASTER_ARCHITECT = XML_FOLDER + "/MasterArchitect.xml";
_global.MASTER_ED = XML_FOLDER + "/MasterArtEd.xml";
_global.MASTER_HISTORY = XML_FOLDER + "/MasterArtHistory.xml";
_global.COMMUNITY_PLANNING = XML_FOLDER + "/MasterCommPlanning.xml";
_global.MASTER_DESIGN = XML_FOLDER + "/MasterDesign.xml";
_global.MASTER_FINE_ART = XML_FOLDER + "/MasterFineArts.xml";

// top folder where the student pictures are
_global.PICTURE_FOLDER = "seniorpics";

/**************************************************************************
TEXT FORMATS
***************************************************************************/

// previous font Arial
// format object for all menu text (schools)
// TextFormat(font, size, color, bold, italic, underline, url, target, align, leftMargin, rightMargin,indent, leading)
menuTextStatic = new TextFormat("MetaPlusBoldCaps", 14, STATIC_COLOR);
menuTextRollover = new TextFormat("MetaPlusBoldCaps", 14, ROLLOVER_COLOR);
menuTextSelect = new TextFormat("MetaPlusBoldCaps", 14, SELECT_COLOR);

nameSearchTextStatic = new TextFormat("MetaPlusNormal", 14, STATIC_COLOR);
nameSearchTextRollover = new TextFormat("MetaPlusNormal", 14, ROLLOVER_COLOR);
nameSearchTextSelect = new TextFormat("MetaPlusNormal", 14, SELECT_COLOR);

// format object for all menu text (schools)
//masterTextStatic = new TextFormat("MetaPlusBoldCaps", 12, STATIC_COLOR, null, null, null, null, null, "right");
//masterTextRollover = new TextFormat("MetaPlusBoldCaps", 12, ROLLOVER_COLOR);
//masterTextSelect = new TextFormat("MetaPlusBoldCaps", 12, MASTER_SELECT_COLOR);

masterTextStatic = new TextFormat("MetaPlusNormal", 12, STATIC_COLOR, null, null, null, null, null, "right");
masterTextRollover = new TextFormat("MetaPlusNormal", 12, ROLLOVER_COLOR);
masterTextSelect = new TextFormat("MetaPlusNormal", 12, MASTER_SELECT_COLOR);


// format object for all names menu text (student names)
listBoxTextDisplay = new TextFormat("MetaPlusNormal", 14, LISTBOX_COLOR);
//listBoxTextDisplay = new TextFormat("MetaPlusNormalItalic", 12, LISTBOX_COLOR);
listBoxRolloverDisplay = new TextFormat("MetaPlusNormal", 14, ROLLOVER_COLOR);
listBoxSelectDisplay = new TextFormat("MetaPlusNormal", 14, SELECT_COLOR);

// format object for the detail display
detailHeadingsDisplay = new TextFormat("MetaPlusNormal", 12, DETAIL_HEADINGS_COLOR);
detailTextDisplay = new TextFormat("MetaPlusNormal", 12, DETAIL_TEXT_COLOR);

/**************************************************************************
MISC VARIABLES
***************************************************************************/

//why won't autoSize work?
school_btn_master.menuText.autoSize = true;

// menu array
//_global.schoolArray = ["Architecture", "Digital Design", "Fashion Design", "Fashion Product", "Fine Arts", "Graphic Design", "Industrial Design", "Interior Design", "M of Architecture", "MA in Art Education", "MA in Art History", "M of Community Planning", "M of Design", "M of Fine Arts", "Urban Planning", "Urban Studies", "Name Search"];
//_global.schoolArray = ["Architecture", "Art History", "Community Planning", "Digital Design", "Fashion Design", "Fashion Product", "Fine Arts", "Graphic Design", "Industrial Design", "Interior Design", "Masters Programs", "Urban Planning", "Urban Studies", "Name Search"];
_global.schoolArray = ["Architecture", "Digital Design", "Fashion Design", "Fashion Product", "Fine Arts", "Graphic Design", "Industrial Design", "Interior Design", "Urban Planning", "Urban Studies", "Masters Programs", "name search"];
_global.mastersArray = ["Master of Architecture", "Master of Arts in Art Education", "Master of Arts in Art History", "Master of Community Planning", "Master of Design", "Master of Fine Arts"];

// button x,y coordinates places the buttons along the swoosh.
//xCoordinatesArray = [45, 59.7, 72.7, 83.8, 89.3, 94.8, 97.6, 98.5, 96.7, 92.0, 85.6, 74.5, 62.5, 44.0];
//yCoordinatesArray = [21.8, 44.9, 68.0, 95.8, 121.7, 148.4, 175.2, 198.3, 225.2, 251.1, 275.1, 299.1, 319.4, 341.6];
//xCoordinatesArray = [45, 59.7, 71.7, 83.8, 89.3, 94.8, 97.6, 98.5, 96.7, 92.0, 85.6, 74.5, 60.5];
//yCoordinatesArray = [21.8, 44.9, 69.0, 95.8, 121.7, 148.4, 175.2, 198.3, 225.2, 251.1, 275.1, 299.1, 321.4];
xCoordinatesArray = [45, 59.7, 71.7, 83.8, 89.3, 94.8, 97.6, 98.5, 96.7, 92.0, 85.6, 60.5];
yCoordinatesArray = [21.8, 44.9, 69.0, 95.8, 121.7, 148.4, 175.2, 198.3, 225.2, 251.1, 275.1, 321.4];

// counter to keep track of how many names are displayed in the listbox. 
// used in getNames and resetNames functions
_global.numberOfNames = 0;
_global.listBoxInstanceName = "";
_global.detailBoxInstanceName = "";

listBox._alpha = 0;
_global.detail_open = false;
_global.detailBoxEndingFrame = 20;
_global.mastersBoxEndingFrame = 11;
_global.listBoxStartingY = 37.0;


/**************************************************************************
start everything
***************************************************************************/
initalize();

/**************************************************************************
FUNCTIONS
***************************************************************************/
// init called at beginning only. populates the first menu (school list)
function initalize(){
	// populate the stage with the buttons
	this.onEnterFrame = function(){
		listBox.listTextBox.setTextFormat(listBoxTextDisplay);
		// if the swoosh is finished drawing fade up the buttons
		if (swoosh_mc._currentframe == swooshFinishFrame){     // swooshFinishFrame is defined on the first frame of the swoosh_mc clip.
			for (i=0; i < schoolArray.length; i++){
				duplicateMovieClip("school_btn_master", schoolArray[i] + "_btn", i+100);
				var button = schoolArray[i] + "_btn";
				this[button]._x = xCoordinatesArray[i];
				this[button]._y = yCoordinatesArray[i];
				this[button].textBoxMC.menuText.text = schoolArray[i];
				if (schoolArray[i] == "name search"){
					this[button].textBoxMC.menuText.setTextFormat(nameSearchTextStatic);
				}else{
					this[button].textBoxMC.menuText.setTextFormat(menuTextStatic);
				}
				//why won't autoSize work?
				this[button].textBoxMC.menuText.autoSize = true;
				this[button].name = schoolArray[i];
//				this[button].startingX = this[button]._x;
//				this[button].startingY = this[button]._y;
			 
				this[button].onRollOver = function(){
					if (this.name == "name search"){
						trace("name search roll over");
						this.rollover(nameSearchTextRollover);
					}else{
						this.rollover(menuTextRollover);
					}
				}
				this[button].onRollOut = function(){
					if (this.name == "name search"){
						this.rollout(nameSearchTextStatic);
					}else{
						this.rollout(menuTextStatic);
					}
				}
				this[button].onRelease = function(){
					trace("this.name is: " + this.name);
					if (this.name == "name search"){
						this.boxRelease(nameSearchTextSelect);
					}else{
						this.boxRelease(menuTextSelect);
					}
				}
			}
			delete this.onEnterFrame;
		}
	}
}


// ResetButtons - called by boxRelease (onRelease method) and nameRelease to reset any previously clicked menu buttons
// "thing" is the button object that was pushed.
// also called by the close box on the names list. closeBox function.
function ResetButtons(thing, menu){
	if (menu == "schools"){
//		trace ("in the else");
		for (i=0; i < schoolArray.length; i++){
			var button = schoolArray[i] + "_btn";
			if (button.indexOf(thing.name) == -1 || thing == ""){  // the null thing is for the close box to reset all of the school buttons
				this[button].beenClicked = false;
				this[button].gotoAndStop("static");
				if (schoolArray[i] == "name search"){
					this[button].textBoxMC.menuText.setTextFormat(nameSearchTextStatic);
				}else{
					this[button].textBoxMC.menuText.setTextFormat(menuTextStatic);
					listBox.namesBox_MC.searchBox.removeMovieClip();
					ResetSearchNames()
				}
			}
		}
		for (x=0; x < mastersArray.length; x++){
			var name = "masterMenu" + (x + 50);
//			listBox.namesBox_MC.attachMovie("buttonBox", name, i);
			MasterMenu[name].removeMovieClip();
//			listBox.namesBox_MC.searchBox.removeMovieClip();
		}	
	}else if (menu == "names"){
//		trace ("in the else if");
		for (i=0; i<numberOfStudents; i++){
			var button = "nameBox" + i;
//			trace("button is: " + button);
//			trace("thing name is: " + thing.name);
			if (button.indexOf(thing.name) == -1){
//				trace("if test result is: " + button.indexOf(thing.name) );
				listBox.namesBox_MC[button].beenClicked = false;
				listBox.namesBox_MC[button].gotoAndStop("static");
				listBox.namesBox_MC[button].textBoxMC.menuText.setTextFormat(listBoxTextDisplay);
				listBox.namesBox_MC.searchBox.removeMovieClip();
			}
		}
	}else if (menu == "searchNames"){
		trace("number of searchNames is: " + numberOfSearchNames);
//		trace ("in the else if");
		for (i=0; i<=numberOfSearchNames + 1; i++){
			var button = "nameBox" + i;
//			trace("button is: " + button);
//			trace("thing name is: " + thing.name);
			if (button.indexOf(thing.name) == -1){
//				trace("if test result is: " + button.indexOf(thing.name) );
				listBox.namesBox_MC[button].beenClicked = false;
				listBox.namesBox_MC[button].gotoAndStop("static");
				listBox.namesBox_MC[button].textBoxMC.menuText.setTextFormat(listBoxTextDisplay);
//				listBox.namesBox_MC.searchBox.removeMovieClip();
			}
		}
	}else if (menu == "masters"){
		trace("in the reset button masters");
		for (i=0; i< mastersArray.length; i++){
			trace("in the reset button masters for loop");
			var name = "masterMenu" + (i + 50);
			var mName = mastersArray[i];
			trace("mName is: " + mName);
			trace("thing name is: " + thing.name);
			if (mName.indexOf(thing.name) == -1){
				trace("in the if indexOf test");
//				trace("if test result is: " + mName.indexOf(thing.name) );
				MasterMenu[name].beenClicked = false;
				MasterMenu[name].gotoAndStop("static");
				MasterMenu[name].textBoxMC.menuText.setTextFormat(masterTextStatic);
				listBox.namesBox_MC.searchBox.removeMovieClip();
			}
		}	
	}
}

// GetNames - called by the boxRelease (onRelease method) of the school names menu items.
// "thing" is the button object that was pushed.
function GetNames(thing){
	// get rid of any previous names that might be hanging around.
	ResetNames();
	
	if(thing.name == "Masters Programs"){
		ProcessMasters();	
	}else{
		InitListBox(thing);
		MasterMenu.MastersBox_MC.removeMovieClip();
		listBox.namesBox_MC.searchBox.removeMovieClip();
		xmlFile = FindXML(thing.name)
		if (xmlFile == SCHOOLS_NAMES){
			LoadXML(xmlFile, "Search");
		}else {
			LoadXML(xmlFile, "Names");
		}
	}
}

// GetMasterNames - called by the masterRelease (onRelease method) of the master program names menu items.
// "thing" is the button object that was pushed.
function GetMasterNames(thing){
	trace("in the getMastersNames function");
	// get rid of any previous names that might be hanging around.
	ResetNames();
	InitListBox(thing);
//	MasterMenu.MastersBox_MC.removeMovieClip();
	xmlFile = FindXML(thing.name)
	LoadXML(xmlFile, "Names");
}

function InitListBox(thing){
	listBox.bkgd._height = LISTBOX_BKGD_WIDTH;
	listBox.bkgd._width = LISTBOX_BKGD_HEIGHT;
	listBox.bkgd.setRGB(LISTBOX_BKGD_COLOR);
	listBox.bkgd._alpha = LISTBOX_BKGD_ALPHA;
	numberOfNames = 0;
	listBox._alpha = 100;
	if (thing.name == "Master of Arts in Art Education"){
		listBox.titleVariable = "  MA in Art Education";
	}else if (thing.name == "Master of Arts in Art History"){
		listBox.titleVariable = "  MA in Art History";
	}else if (thing.name == "Master of Community Planning"){
		listBox.titleVariable = "M of Community Planning";
	}else{
		listBox.titleVariable = "  " + thing.name;
	}
	listBox.listTextBox.setTextFormat(listBoxTextDisplay);
}


function ProcessMasters(){
	MasterMenu.attachMovie("MastersBox_MC", "MastersBox_MC", 300);
	removeMovieClip(detailBox[detailInstanceName]);
	listBox._alpha = 0;
	listBox.titleVariable = "";
//	var spacing = 25;
	var spacing = 19;
	this.onEnterFrame = function(){
		if (MasterMenu.MastersBox_MC._currentframe == mastersBoxEndingFrame){
			for (i=0; i < mastersArray.length; i++){
				var name = "masterMenu" + (i + 50);
				var y = i * spacing;
				MasterMenu.attachMovie("masterButtonBox", name, i);
				MasterMenu[name]._y = y;
				MasterMenu[name].textBoxMC.menuText.text = mastersArray[i];
				MasterMenu[name].textBoxMC.menuText.setTextFormat(masterTextStatic);
				MasterMenu[name].textBoxMC.menuText.autoSize = "right";
				MasterMenu[name].name = mastersArray[i];
				
				MasterMenu[name].onRollOver = function(){
					this.rollover(masterTextRollover);
				}
				MasterMenu[name].onRollOut = function(){
					this.rollout(masterTextStatic);
				}
				MasterMenu[name].onRelease = function(){
					this.masterRelease(masterTextSelect);
				}
			}
			delete this.onEnterFrame;
		}
	}
}

// ResetNames - called from GetNames and from the closeBox release method
// clears the names from the listbox.
function ResetNames(){
	var i = -1;
	while (++i < numberOfNames){
		name = "nameBox" + i;
		y = i * spacing;
		listBox.namesBox_MC.attachMovie("buttonBox", name, i);
		listBox.namesBox_MC[name].removeMovieClip();
		listBox.namesBox_MC.searchBox.removeMovieClip();
	}
}

function FindXML(name){
	// this determines which xml names file we use.
	switch(name){
		case("Architecture"):
			xmlFile = ARCHITECTURE;
			break;
		case("Art History"):
			xmlFile = ART_HISTORY;
			break;
		case("Community Planning"):
			xmlFile = COMMUNITY_PLANNING;
			break;
		case("Digital Design"):
			xmlFile = DIGITAL;
			break;
		case("Fashion Design"):
			xmlFile = FASHION;
			break;
		case("Fashion Product"):
			xmlFile = FASHION_PRODUCT;
			break;
		case("Fine Arts"):
			xmlFile = FINE_ARTS;
			break;
		case("Graphic Design"):
			xmlFile = GRAPHIC;
			break;
		case("Industrial Design"):
			xmlFile = INDUSTRIAL;
			break;
		case("Interior Design"):
			xmlFile = INTERIOR;
			break;
		case("Masters Programs"):
			xmlFile = MASTERS;
			break;
		case("Urban Planning"):
			xmlFile = URBAN_PLANNING;
			break;
		case("Urban Studies"):
			xmlFile = URBAN_STUDIES;
			break;
		case("name search"):
			xmlFile = SCHOOLS_NAMES;
			break;
		case("Master of Architecture"):
			xmlFile = MASTER_ARCHITECT;
			break;
		case("Master of Arts in Art Education"):
			xmlFile = MASTER_ED;
			break;
		case("Master of Arts in Art History"):
			xmlFile = MASTER_HISTORY;
			break;
		case("Master of Community Planning"):
			xmlFile = COMMUNITY_PLANNING;
			break;
		case("Master of Design"):
			xmlFile = MASTER_DESIGN;
			break;
		case("Master of Fine Arts"):
			xmlFile = MASTER_FINE_ART;
			break;
	}
	return xmlFile;
}

function LoadXML(xmlFile, which){
	namesXML = new XML();
	namesXML.ignoreWhite = true;
	if (which == "Names"){
	// xml object to hold the loaded data
		namesXML.onLoad = function(success){
			if (success){
				DisplayNames();
			}else{
				trace("failed to load XML");
			}
		}
	}else if (which == "Search"){
		namesXML.onLoad = function(success){
			if (success){
				FindDetail();
			}else{
				trace("failed to load XML");
			}
		}
	}else if (which == "SearchDetail"){
		namesXML.onLoad = function(success){
			if (success){
				LoadDetail();
			}else{
				trace("failed to load XML");
			}
		}
	}else if (which == "searchProgram"){
		namesXML.onLoad = function(success){
			if (success){
				LoadSearchNameDetail();
			}else{
				trace("failed to load XML");
			}
		}
	}
	namesXML.load(xmlFile); //xmlFile is a variable set by the preceeding case statement	
}


/**************************************************************************
MOVIECLIP PROTOTYPE ADDITIONS
***************************************************************************/
// give all movie clips set and get color methods
MovieClip.prototype.setRGB = function(colorValue){
	new Color(this).setRGB(colorValue);
}
MovieClip.prototype.getRGB = function(){
	mc_color = new Color(this).getRGB();
	return mc_color;
}

MovieClip.prototype.beenClicked = false;

// give all movie clips custom rollover and rollout and release functions
MovieClip.prototype.rollover = function(textFormat){
	if (!this.beenClicked){
//		this.textBoxMC.menuText.setTextFormat(menuTextRollover);
		this.textBoxMC.menuText.setTextFormat(textFormat);
		this.gotoAndPlay("out");
	}
}

MovieClip.prototype.rollout = function(textFormat){
	if (!this.beenClicked){
		this.gotoAndPlay("back");
//		this.textBoxMC.menuText.setTextFormat(menuTextStatic);
		this.textBoxMC.menuText.setTextFormat(textFormat);
	}
}

// this one is for the school menu release
MovieClip.prototype.boxRelease = function(textFormat){
	this.beenClicked = true;
//	this.textBoxMC.menuText.setTextFormat(menuTextSelect);
	this.textBoxMC.menuText.setTextFormat(textFormat);
	ResetButtons(this, "schools");
	removeMovieClip(detailBox.searchErrorMC);
	GetNames(this);
	removeMovieClip(detailBox[detailInstanceName]);
}

// this one is for the school menu release
MovieClip.prototype.masterRelease = function(textFormat){
	this.beenClicked = true;
//	this.textBoxMC.menuText.setTextFormat(menuTextSelect);
	this.textBoxMC.menuText.setTextFormat(textFormat);
	ResetButtons(this, "masters");
	removeMovieClip(detailBox.searchErrorMC);
	GetMasterNames(this);
	removeMovieClip(detailBox[detailInstanceName]);
}


// this one is for the names menu release
MovieClip.prototype.nameRelease = function(node){
	this.beenClicked = true;
//	this.textBoxMC.menuText.setTextFormat(menuTextSelect);
	this.textBoxMC.menuText.setTextFormat(listBoxSelectDisplay);
	ResetButtons(this, "names");
	removeMovieClip(detailBox.searchErrorMC);
	DisplayDetail(node);
}

MovieClip.prototype.searchNameRelease = function(node){
	trace("in the on release function");
	trace("this node is: " + this.node);
	this.beenClicked = true;
	this.textBoxMC.menuText.setTextFormat(listBoxSelectDisplay);
	program = this.node.childNodes[2].childNodes.toString()
	trace("node program is: " + program);
	ResetButtons(this, "searchNames");
	removeMovieClip(detailBox.searchErrorMC);
	xmlFile = FindXML(program);
	trace("xml file is: " + xmlFile);
	namesXML = new XML();
	namesXML.ignoreWhite = true;
	namesXML.onLoad = function(success){
		if (success){
			trace("xml file loaded: " + xmlFile);
			var finalName = node.childNodes[0].childNodes.toString() + " " + node.childNodes[1].childNodes.toString();
			LoadDetail(finalName)
		}else{
			trace("failed to load XML");
		}
	}
	namesXML.load(xmlFile);
}