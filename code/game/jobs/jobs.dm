GLOBAL_LIST_INIT(department_command, list(DEPARTMENT_COMMAND))
GLOBAL_LIST_INIT(department_security, list(DEPARTMENT_SECURITY))
GLOBAL_LIST_INIT(department_moebius, list(DEPARTMENT_SCIENCE, DEPARTMENT_MEDICAL))
GLOBAL_LIST_INIT(department_engineering, list(DEPARTMENT_ENGINEERING))
GLOBAL_LIST_INIT(department_guild, list(DEPARTMENT_GUILD))
GLOBAL_LIST_INIT(department_church, list(DEPARTMENT_CHURCH))
GLOBAL_LIST_INIT(department_civilian, list(DEPARTMENT_CIVILIAN))

var/const/ENGINEERING       =(1<<0)
var/const/IRONHAMMER        =(1<<1)
var/const/MEDICAL           =(1<<2)
var/const/SCIENCE           =(1<<3)
var/const/CIVILIAN          =(1<<4)
var/const/COMMAND           =(1<<5)
var/const/MISC              =(1<<6)
var/const/SERVICE           =(1<<7)
var/const/GUILD             =(1<<8)
var/const/CHURCH           	=(1<<9)

var/const/ENGSEC			=(1<<0)

var/const/CAPTAIN			=(1<<0)
var/const/IHC				=(1<<1)
var/const/GUNSERG			=(1<<2)
var/const/INSPECTOR			=(1<<3)
var/const/IHOPER			=(1<<4)
var/const/MEDSPEC			=(1<<5)
var/const/EXULTANT			=(1<<6)
var/const/TECHNOMANCER		=(1<<7)
var/const/AI				=(1<<8)
var/const/CYBORG			=(1<<9)


var/const/MEDSCI			=(1<<1)

var/const/MEO				=(1<<0)
var/const/SCIENTIST			=(1<<1)
var/const/CHEMIST			=(1<<2)
var/const/MBO				=(1<<3)
var/const/DOCTOR			=(1<<4)
var/const/PSYCHIATRIST		=(1<<5)
var/const/ROBOTICIST		=(1<<6)
var/const/PARAMEDIC			=(1<<7)


var/const/FIRSTOFFICER		=(1<<0)
var/const/CLUBMANAGER		=(1<<1)
var/const/CLUBWORKER		=(1<<2)
var/const/MERCHANT			=(1<<3)
var/const/GUILDTECH			=(1<<4)
var/const/MINER				=(1<<5)
var/const/ARTIST			=(1<<6)
var/const/ASSISTANT			=(1<<7)


var/const/CHAPLAIN			=(1<<0)
var/const/ACOLYTE			=(1<<1)
var/const/JANITOR			=(1<<2)
var/const/BOTANIST			=(1<<3)


var/list/assistant_occupations = list()


var/list/command_positions = list(JOBS_COMMAND)


var/list/engineering_positions = list(JOBS_ENGINEERING)


var/list/medical_positions = list(JOBS_MEDICAL)


var/list/science_positions = list(JOBS_SCIENCE)


var/list/moebius_positions = list(JOBS_MOEBIUS)

//BS12 EDIT
var/list/cargo_positions = list(JOBS_CARGO)


var/list/church_positions = list(JOBS_CHURCH)


var/list/civilian_positions = list(JOBS_CIVILIAN)


var/list/security_positions = list(JOBS_SECURITY)


var/list/nonhuman_positions = list(JOBS_NONHUMAN)


/proc/guest_jobbans(var/job)
	return ((job in command_positions) || (job in nonhuman_positions) || (job in security_positions))



//Fallput 13 attempt at jobs.
GLOBAL_LIST_INIT(department_bos, list(DEPARTMENT_BOS))
GLOBAL_LIST_INIT(department_ncr, list(DEPARTMENT_NCR))
GLOBAL_LIST_INIT(department_legion, list(DEPARTMENT_LEGION))
GLOBAL_LIST_INIT(department_khan, list(DEPARTMENT_KHAN))
GLOBAL_LIST_INIT(department_town, list(DEPARTMENT_TOWN))
GLOBAL_LIST_INIT(department_wasteland, list(DEPARTMENT_WASTELAND))

var/const/BOS				=(1<<10)
var/const/NCR				=(1<<11)
var/const/LEGION			=(1<<12)
var/const/KHAN				=(1<<13)
var/const/TOWN				=(1<<14)
var/const/WASTELAND			=(1<<15)



//BOS

var/const/ELDER				=(1<<0)
var/const/HEADPALADIN		=(1<<1)
var/const/HEADSCRIBE		=(1<<2)
var/const/KNIGHTCAPTAIN		=(1<<3)
var/const/SENIORPALADIN		=(1<<4)
var/const/SENIORSCRIBE		=(1<<5)
var/const/SENIORKNIGHT		=(1<<6)
var/const/PALADIN			=(1<<7)
var/const/SCRIBE			=(1<<8)
var/const/KNIGHT			=(1<<9)
var/const/INITIATE			=(1<<10)
var/const/BOSOFFDUTY		=(1<<11)



var/list/bos_positions = list(JOBS_BOS)



//NCR

var/const/NCRCAPTAIN		=(1<<0)
var/const/LIEUTENANT		=(1<<1)
var/const/MEDICALOFFICER	=(1<<2)
var/const/FIRSTSERGEANT		=(1<<3)
var/const/SERGEANT			=(1<<4)
var/const/CORPORAL			=(1<<5)
var/const/MILITARYPOLICE	=(1<<6)
var/const/COMBATMEDIC		=(1<<7)
var/const/COMBATENGINEER	=(1<<8)
var/const/HEAVYTROOPER		=(1<<9)
var/const/TROOPER			=(1<<10)
var/const/PRIVATE			=(1<<11)
var/const/NCROFFDUTY		=(1<<12)
var/const/VETERANRANGER		=(1<<13)
var/const/SERGEANTRANGER	=(1<<14)
var/const/RANGER			=(1<<15)



var/list/ncr_positions = list(JOBS_NCR)



//Legion

var/const/LEGATE			=(1<<0)
var/const/CENTURION			=(1<<1)
var/const/ORATOR			=(1<<2)
var/const/PRIESTESS			=(1<<3)
var/const/VETDECAN			=(1<<4)
var/const/PRIMEDECAN		=(1<<5)
var/const/RECRUITDECAN		=(1<<6)
var/const/VEXILARIUS		=(1<<7)
var/const/VENATOR			=(1<<8)
var/const/EXPLORER			=(1<<9)
var/const/LIBRITOR			=(1<<10)
var/const/VETERANLEGION		=(1<<11)
var/const/LEGIONARY			=(1<<12)
var/const/RECRUITLEGION		=(1<<13)
var/const/CAMPPREFECT		=(1<<14)
var/const/AUXILIA			=(1<<15)
var/const/CAMPFOLLOWER		=(1<<16)
var/const/SLAVE				=(1<<17)
var/const/LEGIONOFFDUTY		=(1<<18)



var/list/legion_positions = list(JOBS_LEGION)



//Khan

var/const/GREATKHAN			=(1<<0)
var/const/LEADRUNNER		=(1<<1)
var/const/RUNNER			=(1<<2)
var/const/PEDDLER			=(1<<3)
var/const/KHEMIST			=(1<<4)
var/const/SCOUT				=(1<<5)
var/const/NEWBLOOD			=(1<<6)



var/list/khan_positions = list(JOBS_KHAN)



//Town

var/const/FOUNDER			=(1<<0)
var/const/ALDERMAN			=(1<<1)
var/const/SHERIFF			=(1<<2)
var/const/RESEARCHER		=(1<<3)
var/const/PRACTITIONER		=(1<<4)
var/const/DEPUTY			=(1<<5)
var/const/SHOPKEEP			=(1<<6)
var/const/PROSPECTOR		=(1<<7)
var/const/INKEEPER			=(1<<8)
var/const/CITIZEN			=(1<<9)



var/list/town_positions = list(JOBS_TOWN)



//Wastelanders

var/const/WASTELANDER		=(1<<0)
var/const/BANDIT			=(1<<1)
var/const/OUTLAW			=(1<<2)



var/list/wasteland_positions = list(JOBS_WASTELAND)