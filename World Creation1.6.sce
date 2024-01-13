clear
//size
size=grand(1,1,"uin",1,6)+grand(1,1,"uin",1,6)-2
if size<0 then
    size=0
end
//atmosphere
atmo=grand(1,1,"uin",1,6)+grand(1,1,"uin",1,6)-7+size
if atmo<0 then
    atmo=0
end
//temperature
temp=grand(1,1,"uin",1,6)+grand(1,1,"uin",1,6)
if atmo<=3 & atmo>=2 then
    temp=temp-2
elseif 4<=atmo & atmo<=5 then
    temp=temp-1
elseif atmo==14 then
    temp=temp-1
elseif 8<=atmo & atmo<=9 then
    temp=temp+1
elseif atmo==10 | atmo==13 | atmo==15 then
    temp=temp+2
elseif 11<=atmo & atmo<=12 then
    temp=temp+6
else
    
end
if temp<0 then
    temp=0
end
//hydrographics
hydro=grand(1,1,"uin",1,6)+grand(1,1,"uin",1,6)
if size<2 then
    hydro=0
elseif atmo<=1 | atmo>=10 then
    if temp<=11 & temp>=10 then
        hydro=hydro-13
    elseif temp>=12 then
        hydro=hydro-17
    else
        hydro=hydro-11
    end

    if temp<=11 & temp>=10 then
        hydro=hydro-9+atmo
    elseif temp>=12 then
        hydro=hydro-13+atmo
    else
        hydro=hydro-7+atmo
end
end
if hydro<0 then
    hydro=0
end
//population
pop=grand(1,1,"uin",1,6)+grand(1,1,"uin",1,6)-2
if pop<0 then
    pop=0
end
//government
gov=grand(1,1,"uin",1,6)+grand(1,1,"uin",1,6)-7+pop
if gov<0 then
    gov=0
end
//law level
law=grand(1,1,"uin",1,6)+grand(1,1,"uin",1,6)-7+gov
if law<0 then
    law=0
end
//starport
star=grand(1,1,"uin",1,6)+grand(1,1,"uin",1,6)
if pop<10 & pop>7 then
    star=star+1
elseif pop>=10 then
    star=star+2
elseif pop<=4 & pop>=3 then
    star=star-1
elseif pop<=2 then
    star=star-2
else 
    
end
if star<0 then
    star=0
end
if star>=11 then
    star=10
elseif star<=10 & star>=9 then
    star=11
elseif star<=8 & star>=7 then
    star=12
elseif star<=6 & star>=5 then
    star=13
elseif star<=4 & star>=3 then
    star=14
elseif star<=2 then
    star=0
end
//tech level
tech=grand(1,1,"uin",1,6)
if star<=2 then
    tech=tech-4
end
if star==12 then
    tech=tech+2
end
if star==11 then
    tech=tech+4
end
if star==10 then
    tech=tech+6
end
if size<=1 then
    tech=tech+2
end
if size<=4 & size>=2 then
    tech=tech+1
end
if atmo<=3 | atmo>=10 then
    tech=tech+1
end
if hydro==0 then
    tech=tech+1
end
if hydro==9 then
    tech=tech+1
end
if hydro==10 then
    tech=tech+2
end
if pop<=5 & pop>=1 then
    tech=tech+1
end
if pop==8 then
    tech=tech+1
end
if pop==9 then
    tech=tech+2
end
if pop==10 then
    tech=tech+4
end
if gov==0 then
    tech=tech+1
end
if gov==5 then
    tech=tech+1
end
if gov==7 then
    tech=tech+2
end
if gov<=14 & gov>=13 then
    tech=tech-2
end
if atmo<=1 & tech<8 then
    tech=8
elseif atmo<=3 & atmo>=2 & tech<5 then
    tech=5
elseif atmo==4 & tech<3 then
    tech=3
elseif atmo==7 & tech<3 then
    tech=3
elseif atmo==9 & tech<3 then
    tech=3
elseif atmo==10 & tech<8 then
    tech=8
elseif atmo==11 & tech<9 then 
    tech=9
elseif atmo==12 & tech<10 then
    tech=12
elseif atmo>=13 & atmo<=14 & tech<5 then
    tech=5
elseif atmo>=15 & tech<8 then
    tech=8
else 
    
end
if tech<0 then
    tech=0
end
//change star value to starport quality
if star==0 then
    STAR="X"
elseif star==10 then
    STAR="A"
elseif star==11 then
    STAR="B"
elseif star==12 then
    STAR="C"
elseif star==13 then
    STAR="D"
elseif star==14 then
    STAR="E"
elseif star==15 then
    STAR="F"
else
    
end
//use star value to determine bases
m=grand(1,1,"uin",1,6)+grand(1,1,"uin",1,6)
if star==10 & m>=8 then
    M="M"
elseif star==11 & m>=8 then
    M="M"
elseif star==12 & m>=10 then
    M="M"
else
    M=""
end
n=grand(1,1,"uin",1,6)+grand(1,1,"uin",1,6)
if star==10 & n>=8 then
    N="N"
elseif star==11 & m>=8 then
    N="N"
else
    N=""
end
s=grand(1,1,"uin",1,6)+grand(1,1,"uin",1,6)
if star==10 & s>=10 then
    S="S"
elseif star==11 & s>=9 then
    S="S"
elseif star==12 & s>=9 then
    S="S"
elseif star==13 & s>=8 then
    S="S"
else
    S=""
end
c=grand(1,1,"uin",1,6)+grand(1,1,"uin",1,6)
if star==13 & c>=12 then
    C="C"
elseif star==14 & c>=10 then
    C="C"
elseif star==0 & c>=10 then
    C="C"
else
    C=""
end
//trade codes
if atmo>=4 & atmo<=9 & hydro>=4 & hydro<=8 & pop>=5 & pop<=7 then
    ag="AG"
else
    ag=""
end
if size==0 & atmo==0 & hydro==0 then
    as="AS"
else
    as=""
end
if pop==0 & gov==0 & law==0 then
    ba="BA"
else
    ba=""
end
if atmo>=2 & atmo<=9 & hydro==0 then
    de="DE"
else
    de=""
end
if atmo>=10 & hydro>=1 then
    fl="FL"
else
    fl=""
end
if size>=6 & size<=8 & atmo>=5 & atmo<=8 & atmo~=7 & hydro>=5 & hydro<=7 then
    ga="GA"
else
    ga=""
end
if pop>=9 then
    hi="HI"
else
    hi=""
end
if tech>=12 then
    ht="HT"
else
    ht=""
end
if atmo<=1 & hydro>=1 then
    ic="IC"
else
    ic=""
end
if atmo~=3 & atmo~=5 & atmo~=6 & atmo~=8 & atmo~=13 & atmo~=14 & atmo~=15 & pop>=9 then
    in="IN"
else
    in=""
end
if pop>=1 & pop<=3 then
    lo="LO"
else
    lo=""
end
if pop>=1 & tech<=5 then
    lt="LT"
else
    lt=""
end
if atmo<=3 & hydro<=3 & pop>=6 then
    na="NA"
else
    na=""
end
if pop>=4 & pop<=6 then
    ni="NI"
else
    ni=""
end
if atmo>=2 & atmo<=5 & hydro<=3 then
    po="PO"
else
    po=""
end
if atmo>=6 & atmo<=8 & atmo~=7 & pop>=6 & pop<=8 & gov>=4 & gov<=9 then
    ri="RI"
else
    ri=""
end
if atmo==0 then
    va="VA"
else
    va=""
end
if atmo>=3 & atmo~=10 & atmo~=11 & atmo~=12 & hydro>=10 then
    wa="WA"
else
    wa=""
end
//travel zone
if atmo>=10 | gov==0 | gov==7 | gov==10 | law==0 | law>=9 then
    t="A"
else
    t=""
end
//ouput code line
mprintf("\n UWP:  %1$s%2$X%3$X%4$X%5$X%6$X%7$X-%8$d %9$s %10$s %11$s %12$s %13$s %14$s %15$s %16$s %17$s %18$s %19$s %20$s %21$s %22$s %23$s %24$s %25$s %26$s %27$s %28$s %29$s %30$s %31$s", STAR,size,atmo,hydro,pop,gov,law,tech,M,N,S,C,ag,as,ba,de,fl,ga,hi,ht,ic,in,lo,lt,na,ni,po,ri,va,wa,t)
//change temp value to type
if temp<=2 then
    TEMP="FROZEN"
elseif temp<=4 & temp>=3 then
    TEMP="COLD"
elseif temp<=9 & temp>=5 then
    TEMP="TEMPERATE"
elseif temp<=11 & temp>=10 then
    TEMP="HOT"
elseif temp>=12 then
    TEMP="BOILING"
elseif temp==0 then
    TEMP="EXTREME TEMPERATURE SWINGS"
end
//output temp
mprintf("\n Temperature: %1$s",TEMP)
//low/high gravity
if size<=6 then
    grav="LOW GRAVITY"
elseif size>=10 then
    grav="HIGH GRAVITY"
else
    grav="NORMAL GRAVITY"
end
mprintf("\n %1$s",grav)
//use star value to determine highport/lowport
port=grand(1,1,"uin",1,6)+grand(1,1,"uin",1,6)
if port>=6 & star==10 then
    PORT="HIGHPORT AND DOWNPORT"
elseif port>=8 & star==11 then
    PORT="HIGHPORT AND DOWNPORT"
elseif port>=10 & star==12 then
    PORT="HIGHPORT AND DOWNPORT"
elseif port>=12 & star==13 then
    PORT="HIGHPORT AND DOWNPORT"
elseif star==0 then
    PORT=""
else
    PORT="DOWNPORT ONLY"
end
mprintf("\n %1$s", PORT)
//berthing cost
if star==10 then
    bc=grand(1,1,"uin",1,6)*1000
elseif star==11 then
    bc=grand(1,1,"uin",1,6)*500
elseif star==12 then
    bc=grand(1,1,"uin",1,6)*100
elseif star==13 then
    bc=grand(1,1,"uin",1,6)*10
else
    bc=0
end
if star>0 then
    mprintf("    BERTHING COST Cr%1$d",bc)
end
//gas giant
gg=grand(1,1,"uin",1,6)+grand(1,1,"uin",1,6)
if gg>=10 then
    
else
    mprintf("\n GAS GIANT PRESENT IN SYSTEM")
end

//factions
nfact=grand(1,1,"uin",1,3)
if gov==0  then
    nfact=nfact+1
elseif gov==7 then
    nfact=nfact+1
elseif gov>=10 then
    nfact=nfact-1
else
    
end
if nfact>=1 then
    fmat=zeros(nfact,2)
    for fgov=1:nfact
        fmat(fgov,1)=grand(1,1,"uin",1,6)+grand(1,1,"uin",1,6)-7+pop
        end
    for fstr=1:nfact
        fmat(fstr,2)=grand(1,1,"uin",1,6)+grand(1,1,"uin",1,6)
        end
else
    fmat=0
end
//display factions
if fmat<1 then
    mprintf("\n\n NO FACTIONS")
else
    mprintf("\n\n FACTION CODES \n  GOV  STR")
    disp(fmat)
end
//cultural differences
//interpretation of code
//does not include name, location
