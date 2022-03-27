#!/bin/bash

quit=n 
while [  "$quit"   =   "n"  ] 
do 
echo 
echo "============================CREATEVM===================================="
echo "01. eastus -xxx"
echo "02. eastus2 -xxx"
echo "03. southcentralus -xxx"
echo "04. westus -xxx"
echo "05. westus2 -xxx"
echo "06. westus3 -xxx"
echo "07. centralus -xxx"
echo "08. australiseast"
echo "09. southeastasia -xxx"
echo "10. northeurope"
echo "11. uksouth -xxx"
echo "12. westeurope -xxx"
echo "13. koreacentral"
echo "14. canadacentral -xxx"
echo "15. francecentral"
echo "16. switzenlandnorth"
echo "17. eastasia -xxx"
echo "=====================CAC REGION DA TAO TRUOC DAY========================"
cat created.txt
echo ""
echo "Q.Quit" 
echo 
echo "Enter choice" 
read choice 
case $choice in 
1) locationset=eastus
    break;;
2) locationset=eastus2
    break;;
3) locationset=southcentralus
    break;;
4) locationset=westus
    break;;
5) locationset=westus2
    break;;
6) locationset=westus3
    break;;
7) locationset=centralus
    break;;
8) locationset=australiseast
    break;;
9) locationset=southeastasia
    break;;
10) locationset=northeurope
    break;;
11) locationset=uksouth
    break;;
12) locationset=westeurope
    break;;
13) locationset=koreacentral
    break;;
14) locationset=canadacentral
    break;;
15) locationset=francecentral
    break;;
16) locationset=switzenlandnorth
    break;;
17) locationset=eastasia
    break;;

Q|q) quit=y;; 
*) echo "Try Again" 
esac 
done 

    echo "Starting with location:" "$locationset"
    location="$locationset"
        echo $location >> created.txt
        echo > VMName.txt
    #file source

	LSTWORDARR=(
	"Cluster"
	"Clouder"
	"Hostserver"
	"Server"
	"Nodejs"
	"Docker"
	"Redisubuntu"
	"Postge"
	"Cdnnetwork"
	"Publicmain"
	"Instancef"
	"Ablautor"
	"Ablauts"
	"Ablaze"
	"Ableder"
	"Ablegate"
	"Ablegates"
	"Abodes"
	"Aboding"
	"Abohmmer"
	"Abohmsome"
	"Aboideau"
	"Aboideaus"
	"Aboideaux"
	"Aboiljoin"
	"Aboiteau"
	"Abrachia"
	"Abrachias"
	"Abradable"
	"Abradant"
	"Abradants"
	"Abradenn"
	"Acetifier"
	"Acetifiers"
	"Acetifies"
	"Acetify"
	"Canfulul"
	"Canfuls"
	"Canglenner"
	"Cangled"
	"Canglesin"
	"Cangling"
	"Cangueng"
	"Cangues"
	"Canicular"
	"Canidserver"
	"Canidser"
	"Cankers"
	"Cankered"
	"Dipcanker"
	"Dipchick"
	"Dipchicks"
	"Dipeptidase"
	"Dipeptide"
	"Dipeptides"
	"Dipetalous"
	"Encarpus"
	"Encarpuses"
	"Encasess"
	"Encased"
	"Encasement"
	"Encases"
	"Encash"
	"Encashable"
	"Encashed"
	"Encashes"
	"Lukhake"
	"Hakeanl"
	"Hakeas"
	"Hakeem"
	"Hakeems"
	"Hakesser"
	"Hakimer"
	"Hakims"
	"Hakunext"
	"Hakususa"
	"Halacha"
	"Halachas"
	"Inscape"
	"Inscapes"
	"Inscience"
	"Inscient"
	"Insconce"
	"Insconced"
	"Negociant"
	"Negociants"
	"Terreen"
	"Terreens"
	"Terrella"
	"Terrellas"
	"Terrene"
	"Terrenes"
	"Upstands"
	"Upstare"
	"Upstared"
	"Upstares"
	"Architect"
	"Architects"
	"Architectural"
	"Architecture"
	"Assessing"
	"Assessment"
	"Associated"
	"Associates"
	"Association"
	"Attorneys"
	"Attract"
	"Attraction"
	"Attractions"
	"Attractive"
	"Authentication"
	"Author"
	"Authorities"
	"Authority"
	"Authorization"
	"Authorized"
	"Beliefs"
	"Believe"
	"Believed"
	"Believes"
	"Belize"
	"Belkin"
	"Bibliographic"
	"Bibliography"
	"Biodiversity"
	"Biographies"
	"Calculate"
	"Calculated"
	"Calculation"
	"Calculations"
	"Calculator"
	"Calculators"
	"Boulevard"
	"Bound"
	"Boundaries"
	"Boundary"
	"Biography"
	"Bristol"
	"Britain"
	"Britannica"
	"British"
	"Britney"
	"Broad"
	"Broadband"
	"Celebration"
	"Celebrities"
	"Certainly"
	"Challenges"
	"Challenging"
	"Chamber"
	"Characterization"
	"Characterized"
	"Christians"
	"Christina"
	"Christine"
	"Classification"
	"Classified"
	"Classifieds"
	"Collectibles"
	"Collecting"
	"Collection"
	"Collections"
	"Collective"
	"Committed"
	"Committee"
	"Committees"
	"Commodities"
	"Commodity"
	"Confident"
	"Confidential"
	"Confidentiality"
	"Config"
	"Competing"
	"Competition"
	"Competitions"
	"Competitive"
	"Connecting"
	"Consequently"
	"Conservation"
	"Conservative"
	"Consider"
	"Considerable"
	"Consideration"
	"Considerations"
	"Considered"
	"Considering"
	"Connection"
	"Connections"
	"Connectivity"
	"Connector"
	"Constitutes"
	"Constitution"
	"Constitutional"
	"Constraint"
	"Constraints"
	"Continues"
	"Continuing"
	"Continuity"
	"Continuous"
	"Continuously"
	"Conventional"
	"Conventions"
	"Convergence"
	"Conversation"
	"Conversations"
	"Creation"
	"Creations"
	"Creative"
	"Creativity"
	"Decorative"
	"Decrease"
	"Decreased"
	"Dedicated"
	"Creator"
	"Creature"
	"Creatures"
	"Credit"
	"Credits"
	"Determine"
	"Determined"
	"Determines"
	"Determining"
	"Distinction"
	"Distinguished"
	"Distribute"
	"Distributed"
	"Distribution"
	"Distributions"
	"Elevation"
	"Eleven"
	"Eligibility"
	"Eligible"
	"Eliminate"
	"Elimination"
	"Experienced"
	"Experiences"
	"Functionality"
	"Functioning"
	"Functions"
	"Framework"
	"Framing"
	"France"
	"Franchise"
	"Francis"
	"Experiencing"
	"Experiment"
	"Experimental"
	"Handled"
	"Handles"
	"Handling"
	"Identifier"
	"Identifies"
	"Identify"
	"Identifying"
	"Incorrect"
	"Initially"
	"Initiated"
	"Initiative"
	"Initiatives"
	"Injection"
	"Injured"
	"Increase"
	"Increased"
	"Interfaces"
	"Interference"
	"Interim"
	"Literary"
	"Literature"
	"Lithuania"
	"Litigation"
	"Interior"
	"Manage"
	"Managed"
	"Management"
	"Manager"
	"Managers"
	"Managing"
	"Manchester"
	"Mandate"
	"Mandatory"
	"Manga"
	"Manhattan"
	"Manitoba"
	"Manner"
	"Manor"
	"Manual"
	"Manually"
	"Manuals"
	"Manufacture"
	"Manufactured"
	"Manufacturer"
	"Manufacturers"
	"Intermediate"
	"Internal"
	"International"
	"Nicole"
	"Niger"
	"Organisations"
	"Organised"
	"Organisms"
	"Organization"
	"Organizational"
	"Organizations"
	"Organize"
	"Organized"
	"Organizer"
	"Nigeria"
	"Night"
	"Nightlife"
	"Nightmare"
	"Nights"
	"Prerequisite"
	"Prescribed"
	"Prescription"
	"Presence"
	"Present"
	"Presentation"
	"Presentations"
	"Presented"
	"Positive"
	"Possess"
	"Possession"
	"Possibilities"
	"Possibility"
	"Possible"
	"Possibly"
	"Producers"
	"Provider"
	"Providers"
	"Provides"
	"Providing"
	"Province"
	"Produces"
	"Producing"
	"Product"
	"Production"
	"Productions"
	"Productive"
	"Recordings"
	"Records"
	"Recover"
	"Recovered"
	"Recovery"
	"Recreation"
	"Specialized"
	"Specializing"
	"Specially"
	"Specials"
	"Specialties"
	"Specialty"
	"Treasurer"
	"Treasures"
	"Treasury"
	"Treat"
	"Upstaring"
	"Upstart"
	"Upstarted"
	"Upstarting"
	"Upstarts"
	"Upstate"
	"Upstater"
	"Upstaters"
	"Upstates"
	"Upstayspot"
	"Upstayed"
	"Upstaying"
	"Upstays"
	"Upstepspot"
	"Upstepped"
	"Upsteps")


    WORDTOUSE=($(shuf -n1 -e "${LSTWORDARR[@]}"))
    RANDOMNumbers=($(shuf -i 2-99 -n 1))
        echo $WORDTOUSE$RANDOMNumbers > VMName.txt

    echo "------------------------------------------------------------------------"
        cat VMName.txt
    echo "------------------------------------------------------------------------"
        tmpvmname=$(cat VMName.txt)
            echo $tmpvmname
            echo "$tmpvmname"_group >> GroupResource.txt

    Uuname=$(cat inuser.txt)
    Upassw=$(cat inpass.txt)


    #size=Standard_B2s
    #priority=Regular
    #pubipsku=Standard

    # Tuy chinh VM
    size=Standard_NC24s_v3
    priority=Spot
    pubipsku=Basic

    adminusername=$Uuname
    adminpassword=$Upassw

    az group create --location $locationset --resource-group "$tmpvmname"_group
    sleep 2
    az vm create --resource-group "$tmpvmname"_group --name $tmpvmname --priority $priority --image UbuntuLTS --size $size --public-ip-sku $pubipsku --custom-data script-bash.sh --admin-username $adminusername --admin-password $adminpassword

    echo "DA TAO Virtual Machine ::: $tmpvmname"
    echo "CAU HINH ::: $size"
    echo "Username ::: $Uuname"
    echo "Password ::: $Upassw"
	echo "CLI cmd add auto-run-custome.sh"
		setsubid1=$(head -1 sub_id.txt)
    echo "az vm start --resource-group "$tmpvmname"_group --name $tmpvmname --subscription $setsubid1"
	

    echo "Done"
    