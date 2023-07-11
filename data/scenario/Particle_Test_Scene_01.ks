[_tb_system_call storage=system/_Particle_Test_Scene_01.ks]

*Buble_particle

[tb_start_tyrano_code]
[particlehtml]
<style>

</style>
<canvas id="buble_particle"></canvas>
[particleendhtml]

[_tb_end_tyrano_code]

[iscript]
function Particles(){
//particle colors
this.colors = [
'255, 255, 255',
'255, 99, 71',
'19, 19, 19'
]
//adds gradient to particles on true
this.blurry = true;
//adds white border
this.border = false;
//particle radius min/max
this.minRadius = 2;
this.maxRadius = 7;
//particle opacity min/max
this.minOpacity = .005;
this.maxOpacity = .3;
//particle speed min/max
this.minSpeed = .05;
this.maxSpeed = .3;
//frames per second
this.fps = 60;
//number of particles
this.numParticles = 75;
//required canvas variables
this.buble_particle = document.getElementById('buble_particle');
this.ctx = this.buble_particle.getContext('2d');
}
Particles.prototype.init = function(){
this.render();
this.createCircle();
}
Particles.prototype._rand = function(min, max){
return Math.random() * (max - min) + min;
}
Particles.prototype.render = function(){
var self = this,
wHeight = $(window).height(),
wWidth = $(window).width();
self.buble_particle.width = wWidth;
self.buble_particle.height = wHeight;
$(window).on('resize', self.render);
}
Particles.prototype.createCircle = function(){
var particle = [];
for (var i = 0; i < this.numParticles; i++) {
var self = this,
color = self.colors[~~(self._rand(0, self.colors.length))];
particle[i] = {
radius    : self._rand(self.minRadius, self.maxRadius),
xPos      : self._rand(0, buble_particle.width),
yPos      : self._rand(0, buble_particle.height),
xVelocity : self._rand(self.minSpeed, self.maxSpeed),
yVelocity : self._rand(self.minSpeed, self.maxSpeed),
color     : 'rgba(' + color + ',' + self._rand(self.minOpacity, self.maxOpacity) + ')'
}
//once values are determined, draw particle on canvas
self.draw(particle, i);
}
//...and once drawn, animate the particle
self.animate(particle);
}
Particles.prototype.draw = function(particle, i){
var self = this,
ctx = self.ctx;
if (self.blurry === true ) {
//creates gradient if blurry === true
var grd = ctx.createRadialGradient(particle[i].xPos, particle[i].yPos, particle[i].radius, particle[i].xPos, particle[i].yPos, particle[i].radius/1.25);
grd.addColorStop(1.000, particle[i].color);
grd.addColorStop(0.000, 'rgba(34, 34, 34, 0)');
ctx.fillStyle = grd;
} else {
//otherwise sets to solid color w/ opacity value
ctx.fillStyle = particle[i].color;
}
if (self.border === true) {
ctx.strokeStyle = '#fff';
ctx.stroke();
}
ctx.beginPath();
ctx.arc(particle[i].xPos, particle[i].yPos, particle[i].radius, 0, 2 * Math.PI, false);
ctx.fill();
}
Particles.prototype.animate = function(particle){
var self = this,
ctx = self.ctx;
var particle_interval = setInterval(function(){
if(!document.querySelector('#buble_particle')){
clearInterval(particle_interval);
}
//clears canvas
self.clearCanvas();
//then redraws particles in new positions based on velocity
for (var i = 0; i < self.numParticles; i++) {
particle[i].xPos += particle[i].xVelocity;
particle[i].yPos -= particle[i].yVelocity;
//if particle goes off screen call reset method to place it offscreen to the left/bottom
if (particle[i].xPos > self.buble_particle.width + particle[i].radius || particle[i].yPos > self.buble_particle.height + particle[i].radius) {
self.resetParticle(particle, i);
} else {
self.draw(particle, i);
}
}
}, 1000/self.fps);
}
Particles.prototype.resetParticle = function(particle, i){
var self = this;
var random = self._rand(0, 1);
if (random > .5) {
// 50% chance particle comes from left side of window...
particle[i].xPos = -particle[i].radius;
particle[i].yPos = self._rand(0, buble_particle.height);
} else {
//... or bottom of window
particle[i].xPos = self._rand(0, buble_particle.width);
particle[i].yPos = buble_particle.height + particle[i].radius;
}
//redraw particle with new values
self.draw(particle, i);
}
Particles.prototype.clearCanvas = function(){
if(document.getElementById('buble_particle')){
this.ctx.clearRect(0, 0, buble_particle.width, buble_particle.height);
}
}
var particle = new Particles().init();
[endscript]

[return  ]
[s  ]
*dust_particle

[tb_start_tyrano_code]
[particlehtml zindex=11]

<style>
.nc-main {
position: relative;
height: 100vh;
overflow-x: hidden;
-webkit-box-shadow: 0 0 30px #241d20;
box-shadow: 0 0 30px #241d20;
-webkit-transition: -webkit-transform 0.4s;
transition: -webkit-transform 0.4s;
transition: transform 0.4s;
transition: transform 0.4s, -webkit-transform 0.4s;
}

.nc-main
{

}

.full-wh {
position: absolute;
top: 0px;
left: 0px;
bottom: 0px;
width: 100%;
}

.bg-animation {
position: fixed;
top: 0;
left: 0;
width: 100%;
height: 100%;
}


.bg-animation{
position: fixed;
top: 0;
left: 0;
width: 100%;
height: 100%;
}
.stars {
width: 2px;
height: 2px;
border-radius: 50%;
background: transparent;
box-shadow: 117px 1613px #3A3A3A , 1488px 635px #3A3A3A , 944px 914px #3A3A3A , 647px 277px #3A3A3A , 1792px 1205px #3A3A3A , 656px 1517px #3A3A3A , 820px 1839px #3A3A3A , 1153px 1400px #3A3A3A , 870px 13px #3A3A3A , 550px 702px #3A3A3A , 1155px 1056px #3A3A3A , 88px 1709px #3A3A3A , 1450px 1090px #3A3A3A , 1929px 457px #3A3A3A , 1390px 905px #3A3A3A , 1771px 269px #3A3A3A , 1741px 669px #3A3A3A , 432px 64px #3A3A3A , 563px 996px #3A3A3A , 1918px 1873px #3A3A3A , 1845px 1211px #3A3A3A , 231px 1503px #3A3A3A , 37px 220px #3A3A3A , 1970px 495px #3A3A3A , 1812px 925px #3A3A3A , 67px 1398px #3A3A3A , 535px 279px #3A3A3A , 1837px 829px #3A3A3A , 1945px 685px #3A3A3A , 1677px 1817px #3A3A3A , 1317px 1415px #3A3A3A , 1785px 905px #3A3A3A , 1787px 1554px #3A3A3A , 802px 1296px #3A3A3A , 512px 1101px #3A3A3A , 583px 1364px #3A3A3A , 336px 558px #3A3A3A , 979px 334px #3A3A3A , 106px 792px #3A3A3A , 204px 34px #3A3A3A , 1845px 1763px #3A3A3A , 445px 1599px #3A3A3A , 386px 453px #3A3A3A , 471px 952px #3A3A3A , 1466px 1676px #3A3A3A , 1885px 303px #3A3A3A , 51px 1717px #3A3A3A , 1211px 299px #3A3A3A , 1546px 1887px #3A3A3A , 1067px 33px #3A3A3A , 1088px 1326px #3A3A3A , 1938px 760px #3A3A3A , 470px 648px #3A3A3A , 1213px 269px #3A3A3A , 1767px 78px #3A3A3A , 977px 976px #3A3A3A , 1926px 175px #3A3A3A , 722px 1512px #3A3A3A , 945px 227px #3A3A3A , 1811px 99px #3A3A3A , 1912px 1406px #3A3A3A , 1602px 1243px #3A3A3A , 610px 449px #3A3A3A , 654px 1393px #3A3A3A , 1930px 1193px #3A3A3A , 258px 1184px #3A3A3A , 89px 265px #3A3A3A , 824px 1494px #3A3A3A , 1506px 1435px #3A3A3A , 1027px 753px #3A3A3A , 1px 1197px #3A3A3A , 530px 1161px #3A3A3A , 864px 1555px #3A3A3A , 1610px 1604px #3A3A3A , 1035px 1114px #3A3A3A , 1456px 133px #3A3A3A , 1196px 1253px #3A3A3A , 361px 1037px #3A3A3A , 834px 351px #3A3A3A , 436px 1676px #3A3A3A , 1194px 1007px #3A3A3A , 1141px 647px #3A3A3A , 319px 454px #3A3A3A , 937px 1769px #3A3A3A , 1872px 1013px #3A3A3A , 733px 643px #3A3A3A , 1250px 511px #3A3A3A , 189px 296px #3A3A3A , 1639px 163px #3A3A3A , 1584px 336px #3A3A3A , 1912px 1343px #3A3A3A , 1298px 1307px #3A3A3A , 1750px 902px #3A3A3A , 1129px 845px #3A3A3A , 1899px 1470px #3A3A3A , 1427px 232px #3A3A3A , 1391px 838px #3A3A3A , 1225px 1819px #3A3A3A , 190px 1366px #3A3A3A , 1865px 518px #3A3A3A , 203px 1383px #3A3A3A , 1455px 614px #3A3A3A , 423px 354px #3A3A3A , 1678px 1790px #3A3A3A , 241px 608px #3A3A3A , 1089px 730px #3A3A3A , 1342px 38px #3A3A3A , 1848px 249px #3A3A3A , 1874px 1785px #3A3A3A , 1040px 1837px #3A3A3A , 751px 261px #3A3A3A , 510px 1975px #3A3A3A , 52px 795px #3A3A3A , 1786px 1310px #3A3A3A , 498px 712px #3A3A3A , 190px 375px #3A3A3A , 1341px 722px #3A3A3A , 43px 1394px #3A3A3A , 1821px 1687px #3A3A3A , 106px 130px #3A3A3A , 1717px 1978px #3A3A3A , 168px 151px #3A3A3A , 183px 740px #3A3A3A , 945px 1381px #3A3A3A , 669px 1170px #3A3A3A , 1285px 1816px #3A3A3A , 110px 1217px #3A3A3A , 1623px 813px #3A3A3A , 869px 647px #3A3A3A , 867px 582px #3A3A3A , 735px 1240px #3A3A3A , 519px 1896px #3A3A3A , 132px 156px #3A3A3A , 1649px 193px #3A3A3A , 241px 1109px #3A3A3A , 643px 484px #3A3A3A , 574px 1282px #3A3A3A , 1952px 564px #3A3A3A , 1978px 145px #3A3A3A , 329px 903px #3A3A3A , 1674px 617px #3A3A3A , 1978px 558px #3A3A3A , 1808px 1715px #3A3A3A , 1526px 1238px #3A3A3A , 475px 1330px #3A3A3A , 810px 425px #3A3A3A , 1709px 634px #3A3A3A , 1658px 336px #3A3A3A , 425px 194px #3A3A3A , 352px 96px #3A3A3A , 148px 180px #3A3A3A , 1139px 1046px #3A3A3A , 1809px 1233px #3A3A3A , 1669px 171px #3A3A3A , 263px 1394px #3A3A3A , 534px 715px #3A3A3A , 396px 1008px #3A3A3A , 589px 1445px #3A3A3A , 1190px 381px #3A3A3A , 1709px 279px #3A3A3A , 520px 891px #3A3A3A , 1136px 1867px #3A3A3A , 1280px 1233px #3A3A3A , 836px 296px #3A3A3A , 1348px 646px #3A3A3A , 1539px 913px #3A3A3A , 423px 781px #3A3A3A , 1271px 1805px #3A3A3A , 696px 564px #3A3A3A , 1549px 804px #3A3A3A , 303px 1555px #3A3A3A , 1449px 1903px #3A3A3A , 66px 687px #3A3A3A , 1164px 856px #3A3A3A , 1958px 1326px #3A3A3A , 125px 157px #3A3A3A , 508px 1669px #3A3A3A , 465px 725px #3A3A3A , 1925px 1440px #3A3A3A , 405px 793px #3A3A3A , 278px 110px #3A3A3A , 1084px 1065px #3A3A3A , 1077px 705px #3A3A3A , 663px 1844px #3A3A3A , 734px 263px #3A3A3A , 870px 1761px #3A3A3A , 103px 1169px #3A3A3A , 1506px 1295px #3A3A3A , 1883px 926px #3A3A3A , 335px 1361px #3A3A3A , 1126px 1284px #3A3A3A , 257px 1165px #3A3A3A , 837px 580px #3A3A3A , 1211px 1362px #3A3A3A , 1137px 1380px #3A3A3A , 135px 632px #3A3A3A , 1491px 1965px #3A3A3A , 1098px 195px #3A3A3A , 506px 417px #3A3A3A , 693px 1243px #3A3A3A , 622px 1862px #3A3A3A , 1412px 1343px #3A3A3A , 948px 1894px #3A3A3A , 1315px 1363px #3A3A3A , 754px 1098px #3A3A3A , 1931px 930px #3A3A3A , 1831px 342px #3A3A3A , 1751px 1839px #3A3A3A , 84px 775px #3A3A3A , 1662px 1488px #3A3A3A , 617px 1769px #3A3A3A , 1869px 1292px #3A3A3A , 963px 432px #3A3A3A , 371px 1114px #3A3A3A , 37px 642px #3A3A3A , 21px 1184px #3A3A3A , 602px 366px #3A3A3A , 414px 524px #3A3A3A , 282px 244px #3A3A3A , 1689px 868px #3A3A3A , 943px 681px #3A3A3A , 898px 679px #3A3A3A , 449px 1774px #3A3A3A , 1678px 1313px #3A3A3A , 475px 1811px #3A3A3A , 1146px 1509px #3A3A3A , 1151px 1863px #3A3A3A , 1617px 846px #3A3A3A , 82px 1077px #3A3A3A , 324px 1317px #3A3A3A , 1516px 885px #3A3A3A , 1706px 1526px #3A3A3A , 1925px 1180px #3A3A3A , 553px 967px #3A3A3A , 1072px 536px #3A3A3A , 1715px 1816px #3A3A3A , 185px 286px #3A3A3A , 1362px 1600px #3A3A3A , 628px 1938px #3A3A3A , 1187px 412px #3A3A3A , 569px 211px #3A3A3A , 1959px 1356px #3A3A3A , 1571px 105px #3A3A3A , 319px 1111px #3A3A3A , 36px 1364px #3A3A3A , 502px 1788px #3A3A3A , 1051px 1993px #3A3A3A , 1617px 773px #3A3A3A , 424px 1507px #3A3A3A , 1623px 1955px #3A3A3A , 307px 662px #3A3A3A , 183px 1048px #3A3A3A , 1919px 1453px #3A3A3A , 1006px 1817px #3A3A3A , 468px 673px #3A3A3A , 1142px 1375px #3A3A3A , 1228px 443px #3A3A3A , 1734px 552px #3A3A3A , 20px 1041px #3A3A3A , 1783px 334px #3A3A3A , 98px 1237px #3A3A3A , 1356px 1940px #3A3A3A , 853px 1779px #3A3A3A , 1910px 560px #3A3A3A , 1174px 1656px #3A3A3A , 110px 1724px #3A3A3A , 542px 1771px #3A3A3A , 1758px 1931px #3A3A3A , 1463px 1401px #3A3A3A , 1155px 84px #3A3A3A , 1504px 835px #3A3A3A , 750px 322px #3A3A3A , 407px 1900px #3A3A3A , 1600px 1141px #3A3A3A , 657px 886px #3A3A3A , 526px 714px #3A3A3A , 18px 836px #3A3A3A , 1546px 1548px #3A3A3A , 22px 469px #3A3A3A , 594px 1466px #3A3A3A , 1160px 1078px #3A3A3A , 627px 1055px #3A3A3A , 195px 699px #3A3A3A , 1099px 684px #3A3A3A , 530px 551px #3A3A3A , 1160px 1325px #3A3A3A , 894px 727px #3A3A3A , 1157px 98px #3A3A3A , 136px 1483px #3A3A3A , 1875px 1975px #3A3A3A , 1803px 566px #3A3A3A , 318px 1073px #3A3A3A , 1866px 1656px #3A3A3A , 543px 414px #3A3A3A , 719px 474px #3A3A3A , 1115px 738px #3A3A3A , 353px 875px #3A3A3A , 184px 1938px #3A3A3A , 1854px 1534px #3A3A3A , 420px 1698px #3A3A3A , 1480px 1550px #3A3A3A , 522px 203px #3A3A3A , 1897px 1904px #3A3A3A , 975px 1708px #3A3A3A , 1774px 602px #3A3A3A , 1908px 274px #3A3A3A , 61px 715px #3A3A3A , 983px 1156px #3A3A3A , 326px 1013px #3A3A3A , 641px 290px #3A3A3A , 1522px 120px #3A3A3A , 405px 1637px #3A3A3A , 1021px 1099px #3A3A3A , 631px 1145px #3A3A3A , 982px 1967px #3A3A3A , 200px 651px #3A3A3A , 795px 351px #3A3A3A , 790px 1082px #3A3A3A , 144px 1572px #3A3A3A , 1542px 901px #3A3A3A , 158px 1524px #3A3A3A , 849px 1843px #3A3A3A , 1807px 203px #3A3A3A , 1747px 45px #3A3A3A , 1603px 1738px #3A3A3A , 617px 1966px #3A3A3A , 342px 748px #3A3A3A , 1779px 1173px #3A3A3A , 1428px 152px #3A3A3A , 589px 1998px #3A3A3A , 1940px 1838px #3A3A3A , 115px 272px #3A3A3A , 1217px 1395px #3A3A3A , 1402px 1491px #3A3A3A , 1833px 1814px #3A3A3A , 243px 966px #3A3A3A , 319px 578px #3A3A3A , 813px 364px #3A3A3A , 669px 882px #3A3A3A , 551px 134px #3A3A3A , 1819px 920px #3A3A3A , 740px 1826px #3A3A3A , 1021px 952px #3A3A3A , 1575px 453px #3A3A3A , 324px 419px #3A3A3A , 929px 417px #3A3A3A , 885px 1112px #3A3A3A , 503px 187px #3A3A3A , 1908px 362px #3A3A3A , 1063px 1601px #3A3A3A , 169px 1792px #3A3A3A , 789px 963px #3A3A3A , 1697px 948px #3A3A3A , 1761px 1810px #3A3A3A , 1844px 1591px #3A3A3A , 1709px 949px #3A3A3A , 1402px 1396px #3A3A3A , 1037px 225px #3A3A3A , 1832px 518px #3A3A3A , 1728px 1782px #3A3A3A , 194px 1421px #3A3A3A , 1395px 742px #3A3A3A , 1478px 1325px #3A3A3A , 40px 593px #3A3A3A , 1732px 117px #3A3A3A , 51px 158px #3A3A3A , 1598px 1672px #3A3A3A , 701px 849px #3A3A3A , 1403px 1979px #3A3A3A , 145px 1414px #3A3A3A , 550px 906px #3A3A3A , 1366px 460px #3A3A3A , 142px 1379px #3A3A3A , 34px 1864px #3A3A3A , 1346px 308px #3A3A3A , 293px 998px #3A3A3A , 21px 1868px #3A3A3A , 540px 1033px #3A3A3A , 60px 746px #3A3A3A , 1602px 1476px #3A3A3A , 180px 804px #3A3A3A , 345px 1982px #3A3A3A , 1439px 640px #3A3A3A , 939px 1834px #3A3A3A , 20px 432px #3A3A3A , 492px 1549px #3A3A3A , 109px 1579px #3A3A3A , 1796px 1403px #3A3A3A , 1079px 519px #3A3A3A , 1664px 389px #3A3A3A , 1627px 1061px #3A3A3A , 823px 419px #3A3A3A , 1399px 1882px #3A3A3A , 1906px 344px #3A3A3A , 1189px 848px #3A3A3A , 117px 882px #3A3A3A , 1262px 33px #3A3A3A , 1048px 434px #3A3A3A , 1208px 1309px #3A3A3A , 1616px 408px #3A3A3A , 1833px 853px #3A3A3A , 1433px 1656px #3A3A3A , 811px 1861px #3A3A3A , 439px 1672px #3A3A3A , 1105px 248px #3A3A3A , 328px 1652px #3A3A3A , 13px 1658px #3A3A3A , 685px 987px #3A3A3A , 985px 403px #3A3A3A , 1664px 1206px #3A3A3A , 1993px 1925px #3A3A3A , 440px 917px #3A3A3A , 1835px 319px #3A3A3A , 1404px 1907px #3A3A3A , 624px 1443px #3A3A3A , 843px 954px #3A3A3A , 478px 1567px #3A3A3A , 895px 1602px #3A3A3A , 1231px 871px #3A3A3A , 1267px 1646px #3A3A3A , 475px 334px #3A3A3A , 784px 796px #3A3A3A , 1294px 199px #3A3A3A , 109px 702px #3A3A3A , 1978px 362px #3A3A3A , 291px 940px #3A3A3A , 971px 1343px #3A3A3A , 74px 719px #3A3A3A , 36px 715px #3A3A3A , 1007px 1423px #3A3A3A , 860px 314px #3A3A3A , 631px 177px #3A3A3A , 1900px 1590px #3A3A3A , 1239px 1348px #3A3A3A , 1346px 1270px #3A3A3A , 1934px 1475px #3A3A3A , 1553px 559px #3A3A3A , 588px 1969px #3A3A3A , 670px 1269px #3A3A3A , 1484px 376px #3A3A3A , 20px 1424px #3A3A3A , 1396px 8px #3A3A3A , 969px 244px #3A3A3A , 1807px 538px #3A3A3A , 1873px 891px #3A3A3A , 636px 1142px #3A3A3A , 1474px 1562px #3A3A3A , 763px 350px #3A3A3A , 663px 700px #3A3A3A , 500px 1469px #3A3A3A , 1302px 722px #3A3A3A , 181px 291px #3A3A3A , 266px 893px #3A3A3A , 1403px 654px #3A3A3A , 492px 460px #3A3A3A , 1503px 1369px #3A3A3A , 23px 1662px #3A3A3A , 349px 333px #3A3A3A , 1435px 1017px #3A3A3A , 1441px 705px #3A3A3A , 1708px 1446px #3A3A3A , 1041px 911px #3A3A3A , 1063px 780px #3A3A3A , 1158px 1356px #3A3A3A , 767px 1454px #3A3A3A , 1912px 797px #3A3A3A , 1731px 1759px #3A3A3A , 1378px 1390px #3A3A3A , 1815px 1364px #3A3A3A , 960px 270px #3A3A3A , 1343px 427px #3A3A3A , 275px 203px #3A3A3A , 1319px 1092px #3A3A3A , 1455px 770px #3A3A3A , 283px 1503px #3A3A3A , 1505px 901px #3A3A3A , 1738px 1561px #3A3A3A , 1526px 1935px #3A3A3A , 1757px 669px #3A3A3A , 1640px 620px #3A3A3A , 1750px 722px #3A3A3A , 748px 66px #3A3A3A , 1149px 540px #3A3A3A , 159px 953px #3A3A3A , 200px 1426px #3A3A3A , 515px 1110px #3A3A3A , 1552px 737px #3A3A3A , 1094px 1459px #3A3A3A , 778px 799px #3A3A3A , 1031px 523px #3A3A3A , 743px 1825px #3A3A3A , 1100px 882px #3A3A3A , 1088px 1836px #3A3A3A , 255px 599px #3A3A3A , 67px 1361px #3A3A3A , 247px 1721px #3A3A3A , 1722px 346px #3A3A3A , 1822px 155px #3A3A3A , 452px 1973px #3A3A3A , 415px 1960px #3A3A3A , 1109px 57px #3A3A3A , 273px 1392px #3A3A3A , 404px 1071px #3A3A3A , 1212px 353px #3A3A3A , 370px 460px #3A3A3A , 795px 1523px #3A3A3A , 1932px 340px #3A3A3A , 51px 1473px #3A3A3A , 1268px 364px #3A3A3A , 1512px 1862px #3A3A3A , 1678px 1801px #3A3A3A , 1796px 579px #3A3A3A , 254px 251px #3A3A3A , 1466px 1717px #3A3A3A , 893px 379px #3A3A3A , 1153px 923px #3A3A3A , 913px 1808px #3A3A3A , 791px 789px #3A3A3A , 417px 1924px #3A3A3A , 1336px 1599px #3A3A3A , 1695px 908px #3A3A3A , 1120px 114px #3A3A3A , 493px 1949px #3A3A3A , 68px 1905px #3A3A3A , 969px 481px #3A3A3A , 1420px 1095px #3A3A3A , 800px 1117px #3A3A3A , 390px 234px #3A3A3A , 356px 1644px #3A3A3A , 1098px 1486px #3A3A3A , 1360px 521px #3A3A3A , 149px 1198px #3A3A3A , 354px 747px #3A3A3A , 1749px 487px #3A3A3A , 470px 76px #3A3A3A , 1672px 289px #3A3A3A , 1731px 545px #3A3A3A , 1547px 1590px #3A3A3A , 498px 692px #3A3A3A , 398px 1592px #3A3A3A , 1846px 1237px #3A3A3A , 1537px 1474px #3A3A3A , 1726px 1374px #3A3A3A , 1922px 858px #3A3A3A , 376px 321px #3A3A3A , 985px 227px #3A3A3A , 234px 1421px #3A3A3A , 760px 745px #3A3A3A , 1990px 1132px #3A3A3A , 1560px 1597px #3A3A3A , 338px 1310px #3A3A3A , 1924px 1664px #3A3A3A , 547px 1747px #3A3A3A , 1639px 1282px #3A3A3A , 1202px 337px #3A3A3A , 1985px 779px #3A3A3A , 737px 456px #3A3A3A , 89px 501px #3A3A3A , 963px 792px #3A3A3A , 655px 1447px #3A3A3A , 1492px 1994px #3A3A3A , 1171px 254px #3A3A3A , 892px 827px #3A3A3A , 1735px 442px #3A3A3A , 1474px 1187px #3A3A3A , 846px 1518px #3A3A3A , 557px 1805px #3A3A3A , 738px 945px #3A3A3A , 795px 68px #3A3A3A , 663px 1956px #3A3A3A , 1607px 290px #3A3A3A , 1524px 15px #3A3A3A , 1097px 1911px #3A3A3A , 157px 1939px #3A3A3A , 935px 1065px #3A3A3A , 1809px 1708px #3A3A3A , 164px 1157px #3A3A3A , 83px 855px #3A3A3A , 625px 501px #3A3A3A , 814px 398px #3A3A3A , 552px 695px #3A3A3A , 597px 1546px #3A3A3A , 1237px 1417px #3A3A3A , 628px 284px #3A3A3A , 866px 767px #3A3A3A , 1403px 1394px #3A3A3A , 765px 1563px #3A3A3A , 1648px 109px #3A3A3A , 1205px 1659px #3A3A3A , 921px 1313px #3A3A3A , 1319px 243px #3A3A3A , 18px 125px #3A3A3A , 7px 777px #3A3A3A , 181px 418px #3A3A3A , 1062px 1892px #3A3A3A , 382px 106px #3A3A3A , 994px 751px #3A3A3A , 964px 234px #3A3A3A , 40px 118px #3A3A3A , 278px 706px #3A3A3A , 1540px 1978px #3A3A3A , 425px 1661px #3A3A3A , 1050px 321px #3A3A3A , 735px 1729px #3A3A3A , 1438px 260px #3A3A3A , 1229px 1109px #3A3A3A , 186px 1041px #3A3A3A , 244px 1184px #3A3A3A , 392px 1472px #3A3A3A , 670px 1249px #3A3A3A , 1260px 1443px #3A3A3A , 1977px 1511px #3A3A3A , 1240px 773px #3A3A3A , 303px 513px #3A3A3A , 63px 1530px #3A3A3A , 610px 792px #3A3A3A , 1987px 1647px #3A3A3A , 676px 1597px #3A3A3A , 1740px 1244px #3A3A3A , 816px 1661px #3A3A3A , 351px 802px #3A3A3A , 252px 1082px #3A3A3A , 31px 365px #3A3A3A , 1453px 984px #3A3A3A , 667px 1233px #3A3A3A , 1247px 1800px #3A3A3A , 839px 270px #3A3A3A , 775px 913px #3A3A3A , 1966px 1398px #3A3A3A , 499px 813px #3A3A3A , 922px 1982px #3A3A3A , 1409px 1902px #3A3A3A , 1499px 1766px #3A3A3A , 721px 899px #3A3A3A , 788px 807px #3A3A3A , 989px 1355px #3A3A3A , 1248px 1274px #3A3A3A , 849px 1091px #3A3A3A , 1799px 1036px #3A3A3A , 1486px 700px #3A3A3A , 170px 1989px #3A3A3A , 1275px 799px #3A3A3A , 772px 2000px #3A3A3A , 1642px 362px #3A3A3A , 216px 940px #3A3A3A , 1893px 281px #3A3A3A , 1944px 1298px #3A3A3A , 1294px 400px #3A3A3A , 1523px 441px #3A3A3A , 1829px 340px #3A3A3A , 468px 170px #3A3A3A , 1099px 967px #3A3A3A , 1331px 665px #3A3A3A , 1174px 1553px #3A3A3A , 1567px 325px #3A3A3A , 1028px 1399px #3A3A3A , 781px 1451px #3A3A3A , 1912px 1954px #3A3A3A , 874px 873px #3A3A3A , 1298px 1722px #3A3A3A , 1879px 706px #3A3A3A , 57px 1221px #3A3A3A , 1116px 1432px #3A3A3A , 48px 811px #3A3A3A , 101px 916px #3A3A3A , 677px 304px #3A3A3A , 1203px 639px #3A3A3A , 1391px 199px #3A3A3A , 1895px 1988px #3A3A3A , 1462px 1023px #3A3A3A , 1216px 1751px #3A3A3A , 1261px 663px #3A3A3A , 1290px 1119px #3A3A3A , 137px 1793px #3A3A3A , 1052px 1470px #3A3A3A , 1561px 226px #3A3A3A , 1156px 402px #3A3A3A , 709px 693px #3A3A3A , 1040px 1911px #3A3A3A , 1624px 1115px #3A3A3A , 551px 475px #3A3A3A , 416px 1090px #3A3A3A , 1183px 451px #3A3A3A , 58px 765px #3A3A3A , 743px 1016px #3A3A3A , 198px 369px #3A3A3A , 1645px 1503px #3A3A3A , 997px 22px #3A3A3A , 1447px 1323px #3A3A3A , 379px 883px #3A3A3A , 1171px 1195px #3A3A3A , 919px 133px #3A3A3A , 1400px 517px #3A3A3A , 725px 804px #3A3A3A , 1600px 699px #3A3A3A , 357px 581px #3A3A3A , 266px 1713px #3A3A3A , 848px 1749px #3A3A3A , 1963px 1045px #3A3A3A , 119px 1136px #3A3A3A;
-webkit-animation: animStar 50s linear infinite;
-moz-animation: animStar 50s linear infinite;
-ms-animation: animStar 50s linear infinite;
animation: animStar 50s linear infinite;
}
.stars:after {
content: " ";
position: absolute;
top: 2000px;
width: 5px2
height: 5px2
border-radius: 50%;
background: transparent;
box-shadow: 117px 1613px #3A3A3A , 1488px 635px #3A3A3A , 944px 914px #3A3A3A , 647px 277px #3A3A3A , 1792px 1205px #3A3A3A , 656px 1517px #3A3A3A , 820px 1839px #3A3A3A , 1153px 1400px #3A3A3A , 870px 13px #3A3A3A , 550px 702px #3A3A3A , 1155px 1056px #3A3A3A , 88px 1709px #3A3A3A , 1450px 1090px #3A3A3A , 1929px 457px #3A3A3A , 1390px 905px #3A3A3A , 1771px 269px #3A3A3A , 1741px 669px #3A3A3A , 432px 64px #3A3A3A , 563px 996px #3A3A3A , 1918px 1873px #3A3A3A , 1845px 1211px #3A3A3A , 231px 1503px #3A3A3A , 37px 220px #3A3A3A , 1970px 495px #3A3A3A , 1812px 925px #3A3A3A , 67px 1398px #3A3A3A , 535px 279px #3A3A3A , 1837px 829px #3A3A3A , 1945px 685px #3A3A3A , 1677px 1817px #3A3A3A , 1317px 1415px #3A3A3A , 1785px 905px #3A3A3A , 1787px 1554px #3A3A3A , 802px 1296px #3A3A3A , 512px 1101px #3A3A3A , 583px 1364px #3A3A3A , 336px 558px #3A3A3A , 979px 334px #3A3A3A , 106px 792px #3A3A3A , 204px 34px #3A3A3A , 1845px 1763px #3A3A3A , 445px 1599px #3A3A3A , 386px 453px #3A3A3A , 471px 952px #3A3A3A , 1466px 1676px #3A3A3A , 1885px 303px #3A3A3A , 51px 1717px #3A3A3A , 1211px 299px #3A3A3A , 1546px 1887px #3A3A3A , 1067px 33px #3A3A3A , 1088px 1326px #3A3A3A , 1938px 760px #3A3A3A , 470px 648px #3A3A3A , 1213px 269px #3A3A3A , 1767px 78px #3A3A3A , 977px 976px #3A3A3A , 1926px 175px #3A3A3A , 722px 1512px #3A3A3A , 945px 227px #3A3A3A , 1811px 99px #3A3A3A , 1912px 1406px #3A3A3A , 1602px 1243px #3A3A3A , 610px 449px #3A3A3A , 654px 1393px #3A3A3A , 1930px 1193px #3A3A3A , 258px 1184px #3A3A3A , 89px 265px #3A3A3A , 824px 1494px #3A3A3A , 1506px 1435px #3A3A3A , 1027px 753px #3A3A3A , 1px 1197px #3A3A3A , 530px 1161px #3A3A3A , 864px 1555px #3A3A3A , 1610px 1604px #3A3A3A , 1035px 1114px #3A3A3A , 1456px 133px #3A3A3A , 1196px 1253px #3A3A3A , 361px 1037px #3A3A3A , 834px 351px #3A3A3A , 436px 1676px #3A3A3A , 1194px 1007px #3A3A3A , 1141px 647px #3A3A3A , 319px 454px #3A3A3A , 937px 1769px #3A3A3A , 1872px 1013px #3A3A3A , 733px 643px #3A3A3A , 1250px 511px #3A3A3A , 189px 296px #3A3A3A , 1639px 163px #3A3A3A , 1584px 336px #3A3A3A , 1912px 1343px #3A3A3A , 1298px 1307px #3A3A3A , 1750px 902px #3A3A3A , 1129px 845px #3A3A3A , 1899px 1470px #3A3A3A , 1427px 232px #3A3A3A , 1391px 838px #3A3A3A , 1225px 1819px #3A3A3A , 190px 1366px #3A3A3A , 1865px 518px #3A3A3A , 203px 1383px #3A3A3A , 1455px 614px #3A3A3A , 423px 354px #3A3A3A , 1678px 1790px #3A3A3A , 241px 608px #3A3A3A , 1089px 730px #3A3A3A , 1342px 38px #3A3A3A , 1848px 249px #3A3A3A , 1874px 1785px #3A3A3A , 1040px 1837px #3A3A3A , 751px 261px #3A3A3A , 510px 1975px #3A3A3A , 52px 795px #3A3A3A , 1786px 1310px #3A3A3A , 498px 712px #3A3A3A , 190px 375px #3A3A3A , 1341px 722px #3A3A3A , 43px 1394px #3A3A3A , 1821px 1687px #3A3A3A , 106px 130px #3A3A3A , 1717px 1978px #3A3A3A , 168px 151px #3A3A3A , 183px 740px #3A3A3A , 945px 1381px #3A3A3A , 669px 1170px #3A3A3A , 1285px 1816px #3A3A3A , 110px 1217px #3A3A3A , 1623px 813px #3A3A3A , 869px 647px #3A3A3A , 867px 582px #3A3A3A , 735px 1240px #3A3A3A , 519px 1896px #3A3A3A , 132px 156px #3A3A3A , 1649px 193px #3A3A3A , 241px 1109px #3A3A3A , 643px 484px #3A3A3A , 574px 1282px #3A3A3A , 1952px 564px #3A3A3A , 1978px 145px #3A3A3A , 329px 903px #3A3A3A , 1674px 617px #3A3A3A , 1978px 558px #3A3A3A , 1808px 1715px #3A3A3A , 1526px 1238px #3A3A3A , 475px 1330px #3A3A3A , 810px 425px #3A3A3A , 1709px 634px #3A3A3A , 1658px 336px #3A3A3A , 425px 194px #3A3A3A , 352px 96px #3A3A3A , 148px 180px #3A3A3A , 1139px 1046px #3A3A3A , 1809px 1233px #3A3A3A , 1669px 171px #3A3A3A , 263px 1394px #3A3A3A , 534px 715px #3A3A3A , 396px 1008px #3A3A3A , 589px 1445px #3A3A3A , 1190px 381px #3A3A3A , 1709px 279px #3A3A3A , 520px 891px #3A3A3A , 1136px 1867px #3A3A3A , 1280px 1233px #3A3A3A , 836px 296px #3A3A3A , 1348px 646px #3A3A3A , 1539px 913px #3A3A3A , 423px 781px #3A3A3A , 1271px 1805px #3A3A3A , 696px 564px #3A3A3A , 1549px 804px #3A3A3A , 303px 1555px #3A3A3A , 1449px 1903px #3A3A3A , 66px 687px #3A3A3A , 1164px 856px #3A3A3A , 1958px 1326px #3A3A3A , 125px 157px #3A3A3A , 508px 1669px #3A3A3A , 465px 725px #3A3A3A , 1925px 1440px #3A3A3A , 405px 793px #3A3A3A , 278px 110px #3A3A3A , 1084px 1065px #3A3A3A , 1077px 705px #3A3A3A , 663px 1844px #3A3A3A , 734px 263px #3A3A3A , 870px 1761px #3A3A3A , 103px 1169px #3A3A3A , 1506px 1295px #3A3A3A , 1883px 926px #3A3A3A , 335px 1361px #3A3A3A , 1126px 1284px #3A3A3A , 257px 1165px #3A3A3A , 837px 580px #3A3A3A , 1211px 1362px #3A3A3A , 1137px 1380px #3A3A3A , 135px 632px #3A3A3A , 1491px 1965px #3A3A3A , 1098px 195px #3A3A3A , 506px 417px #3A3A3A , 693px 1243px #3A3A3A , 622px 1862px #3A3A3A , 1412px 1343px #3A3A3A , 948px 1894px #3A3A3A , 1315px 1363px #3A3A3A , 754px 1098px #3A3A3A , 1931px 930px #3A3A3A , 1831px 342px #3A3A3A , 1751px 1839px #3A3A3A , 84px 775px #3A3A3A , 1662px 1488px #3A3A3A , 617px 1769px #3A3A3A , 1869px 1292px #3A3A3A , 963px 432px #3A3A3A , 371px 1114px #3A3A3A , 37px 642px #3A3A3A , 21px 1184px #3A3A3A , 602px 366px #3A3A3A , 414px 524px #3A3A3A , 282px 244px #3A3A3A , 1689px 868px #3A3A3A , 943px 681px #3A3A3A , 898px 679px #3A3A3A , 449px 1774px #3A3A3A , 1678px 1313px #3A3A3A , 475px 1811px #3A3A3A , 1146px 1509px #3A3A3A , 1151px 1863px #3A3A3A , 1617px 846px #3A3A3A , 82px 1077px #3A3A3A , 324px 1317px #3A3A3A , 1516px 885px #3A3A3A , 1706px 1526px #3A3A3A , 1925px 1180px #3A3A3A , 553px 967px #3A3A3A , 1072px 536px #3A3A3A , 1715px 1816px #3A3A3A , 185px 286px #3A3A3A , 1362px 1600px #3A3A3A , 628px 1938px #3A3A3A , 1187px 412px #3A3A3A , 569px 211px #3A3A3A , 1959px 1356px #3A3A3A , 1571px 105px #3A3A3A , 319px 1111px #3A3A3A , 36px 1364px #3A3A3A , 502px 1788px #3A3A3A , 1051px 1993px #3A3A3A , 1617px 773px #3A3A3A , 424px 1507px #3A3A3A , 1623px 1955px #3A3A3A , 307px 662px #3A3A3A , 183px 1048px #3A3A3A , 1919px 1453px #3A3A3A , 1006px 1817px #3A3A3A , 468px 673px #3A3A3A , 1142px 1375px #3A3A3A , 1228px 443px #3A3A3A , 1734px 552px #3A3A3A , 20px 1041px #3A3A3A , 1783px 334px #3A3A3A , 98px 1237px #3A3A3A , 1356px 1940px #3A3A3A , 853px 1779px #3A3A3A , 1910px 560px #3A3A3A , 1174px 1656px #3A3A3A , 110px 1724px #3A3A3A , 542px 1771px #3A3A3A , 1758px 1931px #3A3A3A , 1463px 1401px #3A3A3A , 1155px 84px #3A3A3A , 1504px 835px #3A3A3A , 750px 322px #3A3A3A , 407px 1900px #3A3A3A , 1600px 1141px #3A3A3A , 657px 886px #3A3A3A , 526px 714px #3A3A3A , 18px 836px #3A3A3A , 1546px 1548px #3A3A3A , 22px 469px #3A3A3A , 594px 1466px #3A3A3A , 1160px 1078px #3A3A3A , 627px 1055px #3A3A3A , 195px 699px #3A3A3A , 1099px 684px #3A3A3A , 530px 551px #3A3A3A , 1160px 1325px #3A3A3A , 894px 727px #3A3A3A , 1157px 98px #3A3A3A , 136px 1483px #3A3A3A , 1875px 1975px #3A3A3A , 1803px 566px #3A3A3A , 318px 1073px #3A3A3A , 1866px 1656px #3A3A3A , 543px 414px #3A3A3A , 719px 474px #3A3A3A , 1115px 738px #3A3A3A , 353px 875px #3A3A3A , 184px 1938px #3A3A3A , 1854px 1534px #3A3A3A , 420px 1698px #3A3A3A , 1480px 1550px #3A3A3A , 522px 203px #3A3A3A , 1897px 1904px #3A3A3A , 975px 1708px #3A3A3A , 1774px 602px #3A3A3A , 1908px 274px #3A3A3A , 61px 715px #3A3A3A , 983px 1156px #3A3A3A , 326px 1013px #3A3A3A , 641px 290px #3A3A3A , 1522px 120px #3A3A3A , 405px 1637px #3A3A3A , 1021px 1099px #3A3A3A , 631px 1145px #3A3A3A , 982px 1967px #3A3A3A , 200px 651px #3A3A3A , 795px 351px #3A3A3A , 790px 1082px #3A3A3A , 144px 1572px #3A3A3A , 1542px 901px #3A3A3A , 158px 1524px #3A3A3A , 849px 1843px #3A3A3A , 1807px 203px #3A3A3A , 1747px 45px #3A3A3A , 1603px 1738px #3A3A3A , 617px 1966px #3A3A3A , 342px 748px #3A3A3A , 1779px 1173px #3A3A3A , 1428px 152px #3A3A3A , 589px 1998px #3A3A3A , 1940px 1838px #3A3A3A , 115px 272px #3A3A3A , 1217px 1395px #3A3A3A , 1402px 1491px #3A3A3A , 1833px 1814px #3A3A3A , 243px 966px #3A3A3A , 319px 578px #3A3A3A , 813px 364px #3A3A3A , 669px 882px #3A3A3A , 551px 134px #3A3A3A , 1819px 920px #3A3A3A , 740px 1826px #3A3A3A , 1021px 952px #3A3A3A , 1575px 453px #3A3A3A , 324px 419px #3A3A3A , 929px 417px #3A3A3A , 885px 1112px #3A3A3A , 503px 187px #3A3A3A , 1908px 362px #3A3A3A , 1063px 1601px #3A3A3A , 169px 1792px #3A3A3A , 789px 963px #3A3A3A , 1697px 948px #3A3A3A , 1761px 1810px #3A3A3A , 1844px 1591px #3A3A3A , 1709px 949px #3A3A3A , 1402px 1396px #3A3A3A , 1037px 225px #3A3A3A , 1832px 518px #3A3A3A , 1728px 1782px #3A3A3A , 194px 1421px #3A3A3A , 1395px 742px #3A3A3A , 1478px 1325px #3A3A3A , 40px 593px #3A3A3A , 1732px 117px #3A3A3A , 51px 158px #3A3A3A , 1598px 1672px #3A3A3A , 701px 849px #3A3A3A , 1403px 1979px #3A3A3A , 145px 1414px #3A3A3A , 550px 906px #3A3A3A , 1366px 460px #3A3A3A , 142px 1379px #3A3A3A , 34px 1864px #3A3A3A , 1346px 308px #3A3A3A , 293px 998px #3A3A3A , 21px 1868px #3A3A3A , 540px 1033px #3A3A3A , 60px 746px #3A3A3A , 1602px 1476px #3A3A3A , 180px 804px #3A3A3A , 345px 1982px #3A3A3A , 1439px 640px #3A3A3A , 939px 1834px #3A3A3A , 20px 432px #3A3A3A , 492px 1549px #3A3A3A , 109px 1579px #3A3A3A , 1796px 1403px #3A3A3A , 1079px 519px #3A3A3A , 1664px 389px #3A3A3A , 1627px 1061px #3A3A3A , 823px 419px #3A3A3A , 1399px 1882px #3A3A3A , 1906px 344px #3A3A3A , 1189px 848px #3A3A3A , 117px 882px #3A3A3A , 1262px 33px #3A3A3A , 1048px 434px #3A3A3A , 1208px 1309px #3A3A3A , 1616px 408px #3A3A3A , 1833px 853px #3A3A3A , 1433px 1656px #3A3A3A , 811px 1861px #3A3A3A , 439px 1672px #3A3A3A , 1105px 248px #3A3A3A , 328px 1652px #3A3A3A , 13px 1658px #3A3A3A , 685px 987px #3A3A3A , 985px 403px #3A3A3A , 1664px 1206px #3A3A3A , 1993px 1925px #3A3A3A , 440px 917px #3A3A3A , 1835px 319px #3A3A3A , 1404px 1907px #3A3A3A , 624px 1443px #3A3A3A , 843px 954px #3A3A3A , 478px 1567px #3A3A3A , 895px 1602px #3A3A3A , 1231px 871px #3A3A3A , 1267px 1646px #3A3A3A , 475px 334px #3A3A3A , 784px 796px #3A3A3A , 1294px 199px #3A3A3A , 109px 702px #3A3A3A , 1978px 362px #3A3A3A , 291px 940px #3A3A3A , 971px 1343px #3A3A3A , 74px 719px #3A3A3A , 36px 715px #3A3A3A , 1007px 1423px #3A3A3A , 860px 314px #3A3A3A , 631px 177px #3A3A3A , 1900px 1590px #3A3A3A , 1239px 1348px #3A3A3A , 1346px 1270px #3A3A3A , 1934px 1475px #3A3A3A , 1553px 559px #3A3A3A , 588px 1969px #3A3A3A , 670px 1269px #3A3A3A , 1484px 376px #3A3A3A , 20px 1424px #3A3A3A , 1396px 8px #3A3A3A , 969px 244px #3A3A3A , 1807px 538px #3A3A3A , 1873px 891px #3A3A3A , 636px 1142px #3A3A3A , 1474px 1562px #3A3A3A , 763px 350px #3A3A3A , 663px 700px #3A3A3A , 500px 1469px #3A3A3A , 1302px 722px #3A3A3A , 181px 291px #3A3A3A , 266px 893px #3A3A3A , 1403px 654px #3A3A3A , 492px 460px #3A3A3A , 1503px 1369px #3A3A3A , 23px 1662px #3A3A3A , 349px 333px #3A3A3A , 1435px 1017px #3A3A3A , 1441px 705px #3A3A3A , 1708px 1446px #3A3A3A , 1041px 911px #3A3A3A , 1063px 780px #3A3A3A , 1158px 1356px #3A3A3A , 767px 1454px #3A3A3A , 1912px 797px #3A3A3A , 1731px 1759px #3A3A3A , 1378px 1390px #3A3A3A , 1815px 1364px #3A3A3A , 960px 270px #3A3A3A , 1343px 427px #3A3A3A , 275px 203px #3A3A3A , 1319px 1092px #3A3A3A , 1455px 770px #3A3A3A , 283px 1503px #3A3A3A , 1505px 901px #3A3A3A , 1738px 1561px #3A3A3A , 1526px 1935px #3A3A3A , 1757px 669px #3A3A3A , 1640px 620px #3A3A3A , 1750px 722px #3A3A3A , 748px 66px #3A3A3A , 1149px 540px #3A3A3A , 159px 953px #3A3A3A , 200px 1426px #3A3A3A , 515px 1110px #3A3A3A , 1552px 737px #3A3A3A , 1094px 1459px #3A3A3A , 778px 799px #3A3A3A , 1031px 523px #3A3A3A , 743px 1825px #3A3A3A , 1100px 882px #3A3A3A , 1088px 1836px #3A3A3A , 255px 599px #3A3A3A , 67px 1361px #3A3A3A , 247px 1721px #3A3A3A , 1722px 346px #3A3A3A , 1822px 155px #3A3A3A , 452px 1973px #3A3A3A , 415px 1960px #3A3A3A , 1109px 57px #3A3A3A , 273px 1392px #3A3A3A , 404px 1071px #3A3A3A , 1212px 353px #3A3A3A , 370px 460px #3A3A3A , 795px 1523px #3A3A3A , 1932px 340px #3A3A3A , 51px 1473px #3A3A3A , 1268px 364px #3A3A3A , 1512px 1862px #3A3A3A , 1678px 1801px #3A3A3A , 1796px 579px #3A3A3A , 254px 251px #3A3A3A , 1466px 1717px #3A3A3A , 893px 379px #3A3A3A , 1153px 923px #3A3A3A , 913px 1808px #3A3A3A , 791px 789px #3A3A3A , 417px 1924px #3A3A3A , 1336px 1599px #3A3A3A , 1695px 908px #3A3A3A , 1120px 114px #3A3A3A , 493px 1949px #3A3A3A , 68px 1905px #3A3A3A , 969px 481px #3A3A3A , 1420px 1095px #3A3A3A , 800px 1117px #3A3A3A , 390px 234px #3A3A3A , 356px 1644px #3A3A3A , 1098px 1486px #3A3A3A , 1360px 521px #3A3A3A , 149px 1198px #3A3A3A , 354px 747px #3A3A3A , 1749px 487px #3A3A3A , 470px 76px #3A3A3A , 1672px 289px #3A3A3A , 1731px 545px #3A3A3A , 1547px 1590px #3A3A3A , 498px 692px #3A3A3A , 398px 1592px #3A3A3A , 1846px 1237px #3A3A3A , 1537px 1474px #3A3A3A , 1726px 1374px #3A3A3A , 1922px 858px #3A3A3A , 376px 321px #3A3A3A , 985px 227px #3A3A3A , 234px 1421px #3A3A3A , 760px 745px #3A3A3A , 1990px 1132px #3A3A3A , 1560px 1597px #3A3A3A , 338px 1310px #3A3A3A , 1924px 1664px #3A3A3A , 547px 1747px #3A3A3A , 1639px 1282px #3A3A3A , 1202px 337px #3A3A3A , 1985px 779px #3A3A3A , 737px 456px #3A3A3A , 89px 501px #3A3A3A , 963px 792px #3A3A3A , 655px 1447px #3A3A3A , 1492px 1994px #3A3A3A , 1171px 254px #3A3A3A , 892px 827px #3A3A3A , 1735px 442px #3A3A3A , 1474px 1187px #3A3A3A , 846px 1518px #3A3A3A , 557px 1805px #3A3A3A , 738px 945px #3A3A3A , 795px 68px #3A3A3A , 663px 1956px #3A3A3A , 1607px 290px #3A3A3A , 1524px 15px #3A3A3A , 1097px 1911px #3A3A3A , 157px 1939px #3A3A3A , 935px 1065px #3A3A3A , 1809px 1708px #3A3A3A , 164px 1157px #3A3A3A , 83px 855px #3A3A3A , 625px 501px #3A3A3A , 814px 398px #3A3A3A , 552px 695px #3A3A3A , 597px 1546px #3A3A3A , 1237px 1417px #3A3A3A , 628px 284px #3A3A3A , 866px 767px #3A3A3A , 1403px 1394px #3A3A3A , 765px 1563px #3A3A3A , 1648px 109px #3A3A3A , 1205px 1659px #3A3A3A , 921px 1313px #3A3A3A , 1319px 243px #3A3A3A , 18px 125px #3A3A3A , 7px 777px #3A3A3A , 181px 418px #3A3A3A , 1062px 1892px #3A3A3A , 382px 106px #3A3A3A , 994px 751px #3A3A3A , 964px 234px #3A3A3A , 40px 118px #3A3A3A , 278px 706px #3A3A3A , 1540px 1978px #3A3A3A , 425px 1661px #3A3A3A , 1050px 321px #3A3A3A , 735px 1729px #3A3A3A , 1438px 260px #3A3A3A , 1229px 1109px #3A3A3A , 186px 1041px #3A3A3A , 244px 1184px #3A3A3A , 392px 1472px #3A3A3A , 670px 1249px #3A3A3A , 1260px 1443px #3A3A3A , 1977px 1511px #3A3A3A , 1240px 773px #3A3A3A , 303px 513px #3A3A3A , 63px 1530px #3A3A3A , 610px 792px #3A3A3A , 1987px 1647px #3A3A3A , 676px 1597px #3A3A3A , 1740px 1244px #3A3A3A , 816px 1661px #3A3A3A , 351px 802px #3A3A3A , 252px 1082px #3A3A3A , 31px 365px #3A3A3A , 1453px 984px #3A3A3A , 667px 1233px #3A3A3A , 1247px 1800px #3A3A3A , 839px 270px #3A3A3A , 775px 913px #3A3A3A , 1966px 1398px #3A3A3A , 499px 813px #3A3A3A , 922px 1982px #3A3A3A , 1409px 1902px #3A3A3A , 1499px 1766px #3A3A3A , 721px 899px #3A3A3A , 788px 807px #3A3A3A , 989px 1355px #3A3A3A , 1248px 1274px #3A3A3A , 849px 1091px #3A3A3A , 1799px 1036px #3A3A3A , 1486px 700px #3A3A3A , 170px 1989px #3A3A3A , 1275px 799px #3A3A3A , 772px 2000px #3A3A3A , 1642px 362px #3A3A3A , 216px 940px #3A3A3A , 1893px 281px #3A3A3A , 1944px 1298px #3A3A3A , 1294px 400px #3A3A3A , 1523px 441px #3A3A3A , 1829px 340px #3A3A3A , 468px 170px #3A3A3A , 1099px 967px #3A3A3A , 1331px 665px #3A3A3A , 1174px 1553px #3A3A3A , 1567px 325px #3A3A3A , 1028px 1399px #3A3A3A , 781px 1451px #3A3A3A , 1912px 1954px #3A3A3A , 874px 873px #3A3A3A , 1298px 1722px #3A3A3A , 1879px 706px #3A3A3A , 57px 1221px #3A3A3A , 1116px 1432px #3A3A3A , 48px 811px #3A3A3A , 101px 916px #3A3A3A , 677px 304px #3A3A3A , 1203px 639px #3A3A3A , 1391px 199px #3A3A3A , 1895px 1988px #3A3A3A , 1462px 1023px #3A3A3A , 1216px 1751px #3A3A3A , 1261px 663px #3A3A3A , 1290px 1119px #3A3A3A , 137px 1793px #3A3A3A , 1052px 1470px #3A3A3A , 1561px 226px #3A3A3A , 1156px 402px #3A3A3A , 709px 693px #3A3A3A , 1040px 1911px #3A3A3A , 1624px 1115px #3A3A3A , 551px 475px #3A3A3A , 416px 1090px #3A3A3A , 1183px 451px #3A3A3A , 58px 765px #3A3A3A , 743px 1016px #3A3A3A , 198px 369px #3A3A3A , 1645px 1503px #3A3A3A , 997px 22px #3A3A3A , 1447px 1323px #3A3A3A , 379px 883px #3A3A3A , 1171px 1195px #3A3A3A , 919px 133px #3A3A3A , 1400px 517px #3A3A3A , 725px 804px #3A3A3A , 1600px 699px #3A3A3A , 357px 581px #3A3A3A , 266px 1713px #3A3A3A , 848px 1749px #3A3A3A , 1963px 1045px #3A3A3A , 119px 1136px #3A3A3A;
}

.stars2 {
width: 52x;
height: 52x;
border-radius: 50%;
background: transparent;
box-shadow: 1117px 1306px #3A3A3A , 1078px 1783px #3A3A3A , 1179px 1085px #3A3A3A , 1145px 920px #3A3A3A , 422px 1233px #3A3A3A , 387px 98px #3A3A3A , 1153px 637px #3A3A3A , 1084px 782px #3A3A3A , 476px 453px #3A3A3A , 926px 1306px #3A3A3A , 60px 1086px #3A3A3A , 753px 1575px #3A3A3A , 272px 1684px #3A3A3A , 1285px 750px #3A3A3A , 1416px 1327px #3A3A3A , 1931px 473px #3A3A3A , 736px 1395px #3A3A3A , 1816px 763px #3A3A3A , 438px 879px #3A3A3A , 665px 1902px #3A3A3A , 1341px 677px #3A3A3A , 1404px 1073px #3A3A3A , 100px 597px #3A3A3A , 357px 1689px #3A3A3A , 1044px 1342px #3A3A3A , 1954px 502px #3A3A3A , 1192px 1308px #3A3A3A , 540px 1239px #3A3A3A , 1360px 552px #3A3A3A , 89px 752px #3A3A3A , 659px 1253px #3A3A3A , 62px 517px #3A3A3A , 1375px 1705px #3A3A3A , 1343px 1511px #3A3A3A , 1659px 1922px #3A3A3A , 1560px 289px #3A3A3A , 1362px 1799px #3A3A3A , 1886px 1480px #3A3A3A , 1718px 1885px #3A3A3A , 824px 738px #3A3A3A , 1060px 1370px #3A3A3A , 1781px 1171px #3A3A3A , 255px 273px #3A3A3A , 1197px 120px #3A3A3A , 213px 7px #3A3A3A , 1226px 1920px #3A3A3A , 1844px 207px #3A3A3A , 1675px 970px #3A3A3A , 1435px 1283px #3A3A3A , 37px 353px #3A3A3A , 59px 417px #3A3A3A , 921px 1602px #3A3A3A , 1549px 1490px #3A3A3A , 638px 1845px #3A3A3A , 1328px 198px #3A3A3A , 1050px 1149px #3A3A3A , 1884px 711px #3A3A3A , 333px 263px #3A3A3A , 342px 1508px #3A3A3A , 1388px 1810px #3A3A3A , 1377px 1558px #3A3A3A , 890px 487px #3A3A3A , 1081px 759px #3A3A3A , 890px 1515px #3A3A3A , 911px 1284px #3A3A3A , 335px 735px #3A3A3A , 1140px 549px #3A3A3A , 1239px 1064px #3A3A3A , 226px 71px #3A3A3A , 1100px 1278px #3A3A3A , 1851px 1805px #3A3A3A , 1370px 1999px #3A3A3A , 1008px 1122px #3A3A3A , 785px 813px #3A3A3A , 1358px 601px #3A3A3A , 1833px 1305px #3A3A3A , 1768px 1304px #3A3A3A , 1303px 532px #3A3A3A , 860px 598px #3A3A3A , 1329px 593px #3A3A3A , 1038px 1088px #3A3A3A , 408px 405px #3A3A3A , 965px 82px #3A3A3A , 1483px 1438px #3A3A3A , 310px 1479px #3A3A3A , 1786px 1500px #3A3A3A , 1866px 852px #3A3A3A , 18px 1757px #3A3A3A , 1473px 1004px #3A3A3A , 1542px 1933px #3A3A3A , 633px 1970px #3A3A3A , 1334px 1713px #3A3A3A , 175px 28px #3A3A3A , 592px 894px #3A3A3A , 121px 1162px #3A3A3A , 1601px 1567px #3A3A3A , 1095px 657px #3A3A3A , 640px 1233px #3A3A3A , 1073px 1255px #3A3A3A , 840px 1087px #3A3A3A , 718px 250px #3A3A3A , 967px 709px #3A3A3A , 731px 239px #3A3A3A , 1623px 593px #3A3A3A , 1058px 1820px #3A3A3A , 516px 1898px #3A3A3A , 666px 12px #3A3A3A , 1997px 1382px #3A3A3A , 112px 1690px #3A3A3A , 687px 1309px #3A3A3A , 63px 539px #3A3A3A , 185px 1897px #3A3A3A , 1055px 1691px #3A3A3A , 435px 1517px #3A3A3A , 1175px 1119px #3A3A3A , 1721px 133px #3A3A3A , 1212px 47px #3A3A3A , 166px 18px #3A3A3A , 1416px 1652px #3A3A3A , 1409px 1745px #3A3A3A , 1357px 1232px #3A3A3A , 1677px 1998px #3A3A3A , 448px 1415px #3A3A3A , 705px 1736px #3A3A3A , 1031px 1466px #3A3A3A , 543px 1651px #3A3A3A , 1592px 1888px #3A3A3A , 1749px 1175px #3A3A3A , 639px 1114px #3A3A3A , 1591px 508px #3A3A3A , 759px 1244px #3A3A3A , 824px 380px #3A3A3A , 942px 955px #3A3A3A , 723px 732px #3A3A3A , 113px 1369px #3A3A3A , 203px 1739px #3A3A3A , 868px 733px #3A3A3A , 713px 971px #3A3A3A , 341px 833px #3A3A3A , 762px 824px #3A3A3A , 1359px 310px #3A3A3A , 1858px 1349px #3A3A3A , 1531px 692px #3A3A3A , 1075px 1512px #3A3A3A , 1677px 142px #3A3A3A , 1912px 1478px #3A3A3A , 1810px 1078px #3A3A3A , 426px 844px #3A3A3A , 1426px 588px #3A3A3A , 1909px 654px #3A3A3A , 1107px 295px #3A3A3A , 1351px 527px #3A3A3A , 1393px 599px #3A3A3A , 1379px 1068px #3A3A3A , 228px 1846px #3A3A3A , 1271px 374px #3A3A3A , 1348px 612px #3A3A3A , 7px 1301px #3A3A3A , 1501px 1782px #3A3A3A , 1795px 423px #3A3A3A , 1475px 1918px #3A3A3A , 1328px 1861px #3A3A3A , 1624px 51px #3A3A3A , 1791px 672px #3A3A3A , 1594px 1467px #3A3A3A , 1655px 1603px #3A3A3A , 919px 850px #3A3A3A , 523px 609px #3A3A3A , 1196px 207px #3A3A3A , 753px 410px #3A3A3A , 686px 1097px #3A3A3A , 1570px 133px #3A3A3A , 1996px 1137px #3A3A3A , 361px 116px #3A3A3A , 1015px 462px #3A3A3A , 76px 1143px #3A3A3A , 491px 1818px #3A3A3A , 1563px 795px #3A3A3A , 982px 1721px #3A3A3A , 831px 1204px #3A3A3A , 1737px 589px #3A3A3A , 861px 1579px #3A3A3A , 1666px 130px #3A3A3A , 698px 1799px #3A3A3A , 726px 1519px #3A3A3A , 109px 1208px #3A3A3A , 1184px 1057px #3A3A3A , 835px 451px #3A3A3A , 896px 594px #3A3A3A , 35px 893px #3A3A3A , 895px 542px #3A3A3A , 706px 225px #3A3A3A , 56px 1040px #3A3A3A , 1954px 108px #3A3A3A , 1439px 1423px #3A3A3A , 26px 1881px #3A3A3A , 802px 1564px #3A3A3A , 273px 708px #3A3A3A , 40px 31px #3A3A3A , 859px 108px #3A3A3A;
-webkit-animation: animStar 100s linear infinite;
-moz-animation: animStar 100s linear infinite;
-ms-animation: animStar 100s linear infinite;
animation: animStar 100s linear infinite;
}
.stars2:after {
content: " ";
position: absolute;
top: 2000px;
width: 5px2
height: 5px2
border-radius: 50%;
background: transparent;
box-shadow: 1117px 1306px #3A3A3A , 1078px 1783px #3A3A3A , 1179px 1085px #3A3A3A , 1145px 920px #3A3A3A , 422px 1233px #3A3A3A , 387px 98px #3A3A3A , 1153px 637px #3A3A3A , 1084px 782px #3A3A3A , 476px 453px #3A3A3A , 926px 1306px #3A3A3A , 60px 1086px #3A3A3A , 753px 1575px #3A3A3A , 272px 1684px #3A3A3A , 1285px 750px #3A3A3A , 1416px 1327px #3A3A3A , 1931px 473px #3A3A3A , 736px 1395px #3A3A3A , 1816px 763px #3A3A3A , 438px 879px #3A3A3A , 665px 1902px #3A3A3A , 1341px 677px #3A3A3A , 1404px 1073px #3A3A3A , 100px 597px #3A3A3A , 357px 1689px #3A3A3A , 1044px 1342px #3A3A3A , 1954px 502px #3A3A3A , 1192px 1308px #3A3A3A , 540px 1239px #3A3A3A , 1360px 552px #3A3A3A , 89px 752px #3A3A3A , 659px 1253px #3A3A3A , 62px 517px #3A3A3A , 1375px 1705px #3A3A3A , 1343px 1511px #3A3A3A , 1659px 1922px #3A3A3A , 1560px 289px #3A3A3A , 1362px 1799px #3A3A3A , 1886px 1480px #3A3A3A , 1718px 1885px #3A3A3A , 824px 738px #3A3A3A , 1060px 1370px #3A3A3A , 1781px 1171px #3A3A3A , 255px 273px #3A3A3A , 1197px 120px #3A3A3A , 213px 7px #3A3A3A , 1226px 1920px #3A3A3A , 1844px 207px #3A3A3A , 1675px 970px #3A3A3A , 1435px 1283px #3A3A3A , 37px 353px #3A3A3A , 59px 417px #3A3A3A , 921px 1602px #3A3A3A , 1549px 1490px #3A3A3A , 638px 1845px #3A3A3A , 1328px 198px #3A3A3A , 1050px 1149px #3A3A3A , 1884px 711px #3A3A3A , 333px 263px #3A3A3A , 342px 1508px #3A3A3A , 1388px 1810px #3A3A3A , 1377px 1558px #3A3A3A , 890px 487px #3A3A3A , 1081px 759px #3A3A3A , 890px 1515px #3A3A3A , 911px 1284px #3A3A3A , 335px 735px #3A3A3A , 1140px 549px #3A3A3A , 1239px 1064px #3A3A3A , 226px 71px #3A3A3A , 1100px 1278px #3A3A3A , 1851px 1805px #3A3A3A , 1370px 1999px #3A3A3A , 1008px 1122px #3A3A3A , 785px 813px #3A3A3A , 1358px 601px #3A3A3A , 1833px 1305px #3A3A3A , 1768px 1304px #3A3A3A , 1303px 532px #3A3A3A , 860px 598px #3A3A3A , 1329px 593px #3A3A3A , 1038px 1088px #3A3A3A , 408px 405px #3A3A3A , 965px 82px #3A3A3A , 1483px 1438px #3A3A3A , 310px 1479px #3A3A3A , 1786px 1500px #3A3A3A , 1866px 852px #3A3A3A , 18px 1757px #3A3A3A , 1473px 1004px #3A3A3A , 1542px 1933px #3A3A3A , 633px 1970px #3A3A3A , 1334px 1713px #3A3A3A , 175px 28px #3A3A3A , 592px 894px #3A3A3A , 121px 1162px #3A3A3A , 1601px 1567px #3A3A3A , 1095px 657px #3A3A3A , 640px 1233px #3A3A3A , 1073px 1255px #3A3A3A , 840px 1087px #3A3A3A , 718px 250px #3A3A3A , 967px 709px #3A3A3A , 731px 239px #3A3A3A , 1623px 593px #3A3A3A , 1058px 1820px #3A3A3A , 516px 1898px #3A3A3A , 666px 12px #3A3A3A , 1997px 1382px #3A3A3A , 112px 1690px #3A3A3A , 687px 1309px #3A3A3A , 63px 539px #3A3A3A , 185px 1897px #3A3A3A , 1055px 1691px #3A3A3A , 435px 1517px #3A3A3A , 1175px 1119px #3A3A3A , 1721px 133px #3A3A3A , 1212px 47px #3A3A3A , 166px 18px #3A3A3A , 1416px 1652px #3A3A3A , 1409px 1745px #3A3A3A , 1357px 1232px #3A3A3A , 1677px 1998px #3A3A3A , 448px 1415px #3A3A3A , 705px 1736px #3A3A3A , 1031px 1466px #3A3A3A , 543px 1651px #3A3A3A , 1592px 1888px #3A3A3A , 1749px 1175px #3A3A3A , 639px 1114px #3A3A3A , 1591px 508px #3A3A3A , 759px 1244px #3A3A3A , 824px 380px #3A3A3A , 942px 955px #3A3A3A , 723px 732px #3A3A3A , 113px 1369px #3A3A3A , 203px 1739px #3A3A3A , 868px 733px #3A3A3A , 713px 971px #3A3A3A , 341px 833px #3A3A3A , 762px 824px #3A3A3A , 1359px 310px #3A3A3A , 1858px 1349px #3A3A3A , 1531px 692px #3A3A3A , 1075px 1512px #3A3A3A , 1677px 142px #3A3A3A , 1912px 1478px #3A3A3A , 1810px 1078px #3A3A3A , 426px 844px #3A3A3A , 1426px 588px #3A3A3A , 1909px 654px #3A3A3A , 1107px 295px #3A3A3A , 1351px 527px #3A3A3A , 1393px 599px #3A3A3A , 1379px 1068px #3A3A3A , 228px 1846px #3A3A3A , 1271px 374px #3A3A3A , 1348px 612px #3A3A3A , 7px 1301px #3A3A3A , 1501px 1782px #3A3A3A , 1795px 423px #3A3A3A , 1475px 1918px #3A3A3A , 1328px 1861px #3A3A3A , 1624px 51px #3A3A3A , 1791px 672px #3A3A3A , 1594px 1467px #3A3A3A , 1655px 1603px #3A3A3A , 919px 850px #3A3A3A , 523px 609px #3A3A3A , 1196px 207px #3A3A3A , 753px 410px #3A3A3A , 686px 1097px #3A3A3A , 1570px 133px #3A3A3A , 1996px 1137px #3A3A3A , 361px 116px #3A3A3A , 1015px 462px #3A3A3A , 76px 1143px #3A3A3A , 491px 1818px #3A3A3A , 1563px 795px #3A3A3A , 982px 1721px #3A3A3A , 831px 1204px #3A3A3A , 1737px 589px #3A3A3A , 861px 1579px #3A3A3A , 1666px 130px #3A3A3A , 698px 1799px #3A3A3A , 726px 1519px #3A3A3A , 109px 1208px #3A3A3A , 1184px 1057px #3A3A3A , 835px 451px #3A3A3A , 896px 594px #3A3A3A , 35px 893px #3A3A3A , 895px 542px #3A3A3A , 706px 225px #3A3A3A , 56px 1040px #3A3A3A , 1954px 108px #3A3A3A , 1439px 1423px #3A3A3A , 26px 1881px #3A3A3A , 802px 1564px #3A3A3A , 273px 708px #3A3A3A , 40px 31px #3A3A3A , 859px 108px #3A3A3A;
}

.stars3 {
width: 52x;
height: 52x;
border-radius: 50%;
background: transparent;
box-shadow: 940px 1360px #3A3A3A , 1071px 539px #3A3A3A , 1710px 1414px #3A3A3A , 836px 299px #3A3A3A , 1944px 1420px #3A3A3A , 253px 1449px #3A3A3A , 1257px 1250px #3A3A3A , 1588px 1830px #3A3A3A , 1077px 1204px #3A3A3A , 273px 1081px #3A3A3A , 1993px 766px #3A3A3A , 1808px 479px #3A3A3A , 917px 263px #3A3A3A , 663px 1820px #3A3A3A , 342px 1988px #3A3A3A , 727px 1250px #3A3A3A , 636px 1666px #3A3A3A , 692px 1112px #3A3A3A , 248px 1211px #3A3A3A , 1422px 1121px #3A3A3A , 881px 46px #3A3A3A , 1531px 1977px #3A3A3A , 1643px 1023px #3A3A3A , 684px 1071px #3A3A3A , 1142px 1873px #3A3A3A , 292px 1313px #3A3A3A , 256px 1237px #3A3A3A , 89px 912px #3A3A3A , 964px 1783px #3A3A3A , 877px 760px #3A3A3A , 1641px 1474px #3A3A3A , 1492px 24px #3A3A3A , 1776px 1642px #3A3A3A , 183px 602px #3A3A3A , 1998px 62px #3A3A3A , 1560px 367px #3A3A3A , 1333px 995px #3A3A3A , 704px 1815px #3A3A3A , 1809px 712px #3A3A3A , 1503px 288px #3A3A3A , 630px 556px #3A3A3A , 1715px 125px #3A3A3A , 353px 1878px #3A3A3A , 975px 333px #3A3A3A , 1740px 1409px #3A3A3A , 1341px 1871px #3A3A3A , 1279px 1064px #3A3A3A , 169px 874px #3A3A3A , 161px 528px #3A3A3A , 1671px 1669px #3A3A3A , 169px 632px #3A3A3A , 547px 1724px #3A3A3A , 1904px 110px #3A3A3A , 679px 1670px #3A3A3A , 196px 123px #3A3A3A , 786px 871px #3A3A3A , 1840px 324px #3A3A3A , 356px 967px #3A3A3A , 61px 549px #3A3A3A , 99px 677px #3A3A3A , 1719px 87px #3A3A3A , 1713px 1990px #3A3A3A , 1717px 1358px #3A3A3A , 108px 1187px #3A3A3A , 51px 869px #3A3A3A , 1461px 902px #3A3A3A , 1034px 891px #3A3A3A , 962px 1881px #3A3A3A , 1723px 595px #3A3A3A , 479px 901px #3A3A3A , 1546px 1823px #3A3A3A , 285px 1208px #3A3A3A , 1056px 347px #3A3A3A , 261px 988px #3A3A3A , 466px 990px #3A3A3A , 1657px 648px #3A3A3A , 1249px 933px #3A3A3A , 1552px 1555px #3A3A3A , 147px 62px #3A3A3A , 292px 1157px #3A3A3A , 1816px 423px #3A3A3A , 1714px 757px #3A3A3A , 1036px 961px #3A3A3A , 1955px 710px #3A3A3A , 1842px 516px #3A3A3A , 479px 1870px #3A3A3A , 1579px 1445px #3A3A3A , 1225px 1309px #3A3A3A , 1965px 566px #3A3A3A , 1575px 1072px #3A3A3A , 923px 329px #3A3A3A , 651px 1514px #3A3A3A , 865px 1100px #3A3A3A , 782px 1873px #3A3A3A , 115px 299px #3A3A3A , 14px 1668px #3A3A3A , 1666px 1817px #3A3A3A , 1096px 1068px #3A3A3A , 1462px 742px #3A3A3A , 1384px 1750px #3A3A3A;
-webkit-animation: animStar 150s linear infinite;
-moz-animation: animStar 150s linear infinite;
-ms-animation: animStar 150s linear infinite;
animation: animStar 150s linear infinite;
}
.stars3:after {
content: " ";
position: absolute;
top: 2000px;
width: 5px2
height: 5px2
border-radius: 50%;
background: transparent;
box-shadow: 940px 1360px #3A3A3A , 1071px 539px #3A3A3A , 1710px 1414px #3A3A3A , 836px 299px #3A3A3A , 1944px 1420px #3A3A3A , 253px 1449px #3A3A3A , 1257px 1250px #3A3A3A , 1588px 1830px #3A3A3A , 1077px 1204px #3A3A3A , 273px 1081px #3A3A3A , 1993px 766px #3A3A3A , 1808px 479px #3A3A3A , 917px 263px #3A3A3A , 663px 1820px #3A3A3A , 342px 1988px #3A3A3A , 727px 1250px #3A3A3A , 636px 1666px #3A3A3A , 692px 1112px #3A3A3A , 248px 1211px #3A3A3A , 1422px 1121px #3A3A3A , 881px 46px #3A3A3A , 1531px 1977px #3A3A3A , 1643px 1023px #3A3A3A , 684px 1071px #3A3A3A , 1142px 1873px #3A3A3A , 292px 1313px #3A3A3A , 256px 1237px #3A3A3A , 89px 912px #3A3A3A , 964px 1783px #3A3A3A , 877px 760px #3A3A3A , 1641px 1474px #3A3A3A , 1492px 24px #3A3A3A , 1776px 1642px #3A3A3A , 183px 602px #3A3A3A , 1998px 62px #3A3A3A , 1560px 367px #3A3A3A , 1333px 995px #3A3A3A , 704px 1815px #3A3A3A , 1809px 712px #3A3A3A , 1503px 288px #3A3A3A , 630px 556px #3A3A3A , 1715px 125px #3A3A3A , 353px 1878px #3A3A3A , 975px 333px #3A3A3A , 1740px 1409px #3A3A3A , 1341px 1871px #3A3A3A , 1279px 1064px #3A3A3A , 169px 874px #3A3A3A , 161px 528px #3A3A3A , 1671px 1669px #3A3A3A , 169px 632px #3A3A3A , 547px 1724px #3A3A3A , 1904px 110px #3A3A3A , 679px 1670px #3A3A3A , 196px 123px #3A3A3A , 786px 871px #3A3A3A , 1840px 324px #3A3A3A , 356px 967px #3A3A3A , 61px 549px #3A3A3A , 99px 677px #3A3A3A , 1719px 87px #3A3A3A , 1713px 1990px #3A3A3A , 1717px 1358px #3A3A3A , 108px 1187px #3A3A3A , 51px 869px #3A3A3A , 1461px 902px #3A3A3A , 1034px 891px #3A3A3A , 962px 1881px #3A3A3A , 1723px 595px #3A3A3A , 479px 901px #3A3A3A , 1546px 1823px #3A3A3A , 285px 1208px #3A3A3A , 1056px 347px #3A3A3A , 261px 988px #3A3A3A , 466px 990px #3A3A3A , 1657px 648px #3A3A3A , 1249px 933px #3A3A3A , 1552px 1555px #3A3A3A , 147px 62px #3A3A3A , 292px 1157px #3A3A3A , 1816px 423px #3A3A3A , 1714px 757px #3A3A3A , 1036px 961px #3A3A3A , 1955px 710px #3A3A3A , 1842px 516px #3A3A3A , 479px 1870px #3A3A3A , 1579px 1445px #3A3A3A , 1225px 1309px #3A3A3A , 1965px 566px #3A3A3A , 1575px 1072px #3A3A3A , 923px 329px #3A3A3A , 651px 1514px #3A3A3A , 865px 1100px #3A3A3A , 782px 1873px #3A3A3A , 115px 299px #3A3A3A , 14px 1668px #3A3A3A , 1666px 1817px #3A3A3A , 1096px 1068px #3A3A3A , 1462px 742px #3A3A3A , 1384px 1750px #3A3A3A;
}

.stars4 {
width: 52x;
height: 52x;
border-radius: 50%;
background: transparent;
box-shadow: 233px 1976px #3A3A3A , 1196px 1119px #3A3A3A , 646px 740px #3A3A3A , 335px 645px #3A3A3A , 1119px 1452px #3A3A3A , 176px 1870px #3A3A3A , 639px 1711px #3A3A3A , 647px 1388px #3A3A3A , 1516px 1108px #3A3A3A , 464px 66px #3A3A3A , 331px 344px #3A3A3A , 772px 1189px #3A3A3A , 1516px 1850px #3A3A3A , 1500px 1463px #3A3A3A , 1275px 876px #3A3A3A , 1107px 645px #3A3A3A , 977px 478px #3A3A3A , 583px 1179px #3A3A3A , 284px 395px #3A3A3A , 1220px 461px #3A3A3A , 1160px 249px #3A3A3A , 196px 865px #3A3A3A , 670px 1915px #3A3A3A , 1449px 382px #3A3A3A , 1191px 546px #3A3A3A , 1329px 605px #3A3A3A , 1945px 458px #3A3A3A , 995px 749px #3A3A3A , 1495px 861px #3A3A3A , 708px 1731px #3A3A3A , 348px 653px #3A3A3A , 548px 1298px #3A3A3A , 1606px 990px #3A3A3A , 1049px 1204px #3A3A3A , 253px 1501px #3A3A3A , 1154px 166px #3A3A3A , 1087px 104px #3A3A3A , 1034px 1161px #3A3A3A , 1681px 462px #3A3A3A , 577px 1897px #3A3A3A , 193px 1901px #3A3A3A , 1701px 1755px #3A3A3A , 864px 1297px #3A3A3A , 800px 1289px #3A3A3A , 676px 28px #3A3A3A , 185px 1341px #3A3A3A , 379px 1151px #3A3A3A , 1224px 1725px #3A3A3A , 280px 541px #3A3A3A , 473px 1196px #3A3A3A , 921px 1628px #3A3A3A , 969px 432px #3A3A3A , 1475px 758px #3A3A3A , 1195px 993px #3A3A3A , 876px 1840px #3A3A3A , 1274px 1689px #3A3A3A , 1977px 1101px #3A3A3A , 837px 527px #3A3A3A , 1785px 1610px #3A3A3A , 1650px 1843px #3A3A3A , 1127px 1508px #3A3A3A , 401px 1050px #3A3A3A , 51px 1105px #3A3A3A , 545px 880px #3A3A3A , 1786px 1672px #3A3A3A , 318px 260px #3A3A3A , 568px 254px #3A3A3A , 1026px 1527px #3A3A3A , 1242px 852px #3A3A3A , 1785px 982px #3A3A3A , 1318px 1071px #3A3A3A , 398px 1061px #3A3A3A , 1509px 257px #3A3A3A , 599px 928px #3A3A3A , 1195px 1800px #3A3A3A , 1254px 906px #3A3A3A , 141px 26px #3A3A3A , 1384px 1502px #3A3A3A , 476px 767px #3A3A3A , 1973px 722px #3A3A3A , 1339px 1031px #3A3A3A , 778px 818px #3A3A3A , 213px 1320px #3A3A3A , 184px 221px #3A3A3A , 983px 1911px #3A3A3A , 923px 1439px #3A3A3A , 1936px 581px #3A3A3A , 1105px 625px #3A3A3A , 325px 729px #3A3A3A , 1475px 204px #3A3A3A , 1483px 1564px #3A3A3A , 1327px 1272px #3A3A3A , 1187px 1944px #3A3A3A , 1945px 1471px #3A3A3A , 116px 960px #3A3A3A , 1660px 1610px #3A3A3A , 412px 1022px #3A3A3A , 1552px 1516px #3A3A3A , 1517px 1892px #3A3A3A , 306px 829px #3A3A3A , 1416px 462px #3A3A3A , 1575px 1460px #3A3A3A , 424px 1500px #3A3A3A , 1530px 1169px #3A3A3A , 1388px 1608px #3A3A3A , 185px 416px #3A3A3A , 634px 1446px #3A3A3A , 767px 479px #3A3A3A , 71px 426px #3A3A3A , 1937px 145px #3A3A3A , 1955px 1312px #3A3A3A , 1811px 611px #3A3A3A , 1145px 569px #3A3A3A , 1460px 676px #3A3A3A , 131px 1858px #3A3A3A , 1557px 473px #3A3A3A , 735px 130px #3A3A3A , 112px 1531px #3A3A3A , 1312px 305px #3A3A3A , 409px 1032px #3A3A3A , 149px 1964px #3A3A3A , 535px 1215px #3A3A3A , 1382px 630px #3A3A3A , 1437px 1368px #3A3A3A , 362px 1181px #3A3A3A , 388px 181px #3A3A3A , 274px 1287px #3A3A3A , 1858px 1414px #3A3A3A , 661px 1935px #3A3A3A , 675px 1205px #3A3A3A , 1829px 1725px #3A3A3A , 1937px 1145px #3A3A3A , 237px 908px #3A3A3A , 1059px 1185px #3A3A3A , 824px 1248px #3A3A3A , 1167px 1730px #3A3A3A , 180px 1961px #3A3A3A , 1663px 203px #3A3A3A , 374px 221px #3A3A3A , 724px 1883px #3A3A3A , 970px 1362px #3A3A3A , 832px 505px #3A3A3A , 313px 233px #3A3A3A , 1909px 597px #3A3A3A , 434px 201px #3A3A3A , 587px 995px #3A3A3A , 1833px 623px #3A3A3A , 1464px 561px #3A3A3A , 231px 593px #3A3A3A , 1558px 1433px #3A3A3A , 1986px 1767px #3A3A3A , 1753px 1728px #3A3A3A , 1153px 1623px #3A3A3A , 249px 229px #3A3A3A , 1503px 1186px #3A3A3A , 1784px 137px #3A3A3A , 841px 403px #3A3A3A , 1400px 354px #3A3A3A , 197px 499px #3A3A3A , 1188px 681px #3A3A3A , 158px 391px #3A3A3A , 443px 1099px #3A3A3A , 723px 1445px #3A3A3A , 1408px 1235px #3A3A3A , 1908px 195px #3A3A3A , 271px 891px #3A3A3A , 469px 1693px #3A3A3A , 580px 11px #3A3A3A , 1533px 70px #3A3A3A , 859px 761px #3A3A3A , 1510px 1844px #3A3A3A , 421px 558px #3A3A3A , 1132px 1453px #3A3A3A , 757px 1987px #3A3A3A , 212px 293px #3A3A3A , 569px 323px #3A3A3A , 1404px 1394px #3A3A3A , 252px 1386px #3A3A3A , 1668px 1857px #3A3A3A , 123px 1684px #3A3A3A , 105px 490px #3A3A3A , 1083px 1769px #3A3A3A , 1071px 1953px #3A3A3A , 1271px 1159px #3A3A3A , 699px 1491px #3A3A3A , 1744px 1997px #3A3A3A , 1868px 1973px #3A3A3A , 1438px 1449px #3A3A3A , 1222px 1921px #3A3A3A , 1328px 1210px #3A3A3A , 438px 873px #3A3A3A , 809px 780px #3A3A3A , 491px 1524px #3A3A3A , 447px 1830px #3A3A3A , 927px 1936px #3A3A3A , 564px 691px #3A3A3A , 1784px 1747px #3A3A3A , 1978px 1722px #3A3A3A , 1599px 1480px #3A3A3A , 1276px 729px #3A3A3A , 731px 1174px #3A3A3A , 1586px 1711px #3A3A3A , 451px 1340px #3A3A3A , 1075px 1899px #3A3A3A , 13px 575px #3A3A3A , 309px 1340px #3A3A3A , 981px 183px #3A3A3A , 248px 1315px #3A3A3A , 849px 80px #3A3A3A , 1754px 1540px #3A3A3A , 73px 1432px #3A3A3A , 1208px 1828px #3A3A3A , 65px 575px #3A3A3A , 1098px 730px #3A3A3A , 127px 1358px #3A3A3A , 185px 19px #3A3A3A , 1222px 1679px #3A3A3A , 1122px 315px #3A3A3A , 1906px 452px #3A3A3A , 761px 284px #3A3A3A , 813px 492px #3A3A3A , 1344px 843px #3A3A3A , 118px 1834px #3A3A3A , 1620px 359px #3A3A3A , 1755px 1246px #3A3A3A , 299px 1076px #3A3A3A , 1746px 158px #3A3A3A , 6px 1635px #3A3A3A , 143px 190px #3A3A3A , 101px 468px #3A3A3A , 137px 971px #3A3A3A , 1221px 1929px #3A3A3A , 1752px 650px #3A3A3A , 1635px 1761px #3A3A3A , 1522px 833px #3A3A3A , 908px 153px #3A3A3A , 1044px 350px #3A3A3A , 1151px 1940px #3A3A3A , 822px 210px #3A3A3A , 1774px 310px #3A3A3A , 796px 1447px #3A3A3A , 1069px 1903px #3A3A3A , 217px 565px #3A3A3A , 662px 1370px #3A3A3A , 1876px 1570px #3A3A3A , 847px 46px #3A3A3A , 1042px 1689px #3A3A3A , 1584px 1434px #3A3A3A , 1791px 908px #3A3A3A , 973px 908px #3A3A3A , 793px 747px #3A3A3A , 122px 483px #3A3A3A , 1137px 1374px #3A3A3A , 1757px 1791px #3A3A3A , 513px 225px #3A3A3A , 63px 731px #3A3A3A , 1179px 1926px #3A3A3A , 346px 18px #3A3A3A , 589px 175px #3A3A3A , 87px 302px #3A3A3A , 380px 1295px #3A3A3A , 450px 921px #3A3A3A , 1667px 1973px #3A3A3A , 1495px 1373px #3A3A3A , 1462px 1850px #3A3A3A , 540px 288px #3A3A3A , 1208px 1051px #3A3A3A , 1554px 1095px #3A3A3A , 1009px 1516px #3A3A3A , 181px 572px #3A3A3A , 165px 387px #3A3A3A , 549px 1835px #3A3A3A , 960px 16px #3A3A3A , 1360px 403px #3A3A3A , 1251px 43px #3A3A3A , 1905px 1813px #3A3A3A , 1106px 866px #3A3A3A , 1809px 277px #3A3A3A , 1828px 1720px #3A3A3A , 295px 1610px #3A3A3A , 523px 166px #3A3A3A , 1069px 692px #3A3A3A , 1292px 217px #3A3A3A , 11px 1721px #3A3A3A , 99px 1045px #3A3A3A , 51px 1584px #3A3A3A , 1053px 266px #3A3A3A , 1287px 1235px #3A3A3A , 747px 1722px #3A3A3A , 1542px 736px #3A3A3A , 1256px 18px #3A3A3A , 102px 609px #3A3A3A , 586px 1339px #3A3A3A , 1843px 1697px #3A3A3A , 824px 1687px #3A3A3A , 1124px 882px #3A3A3A , 395px 501px #3A3A3A , 1456px 672px #3A3A3A , 1472px 1648px #3A3A3A , 1326px 1164px #3A3A3A , 777px 1672px #3A3A3A , 81px 345px #3A3A3A , 91px 386px #3A3A3A , 243px 411px #3A3A3A , 1560px 90px #3A3A3A , 6px 1771px #3A3A3A , 1601px 616px #3A3A3A , 1220px 1808px #3A3A3A , 1160px 836px #3A3A3A , 246px 1777px #3A3A3A , 456px 863px #3A3A3A , 97px 1138px #3A3A3A , 1811px 942px #3A3A3A , 213px 414px #3A3A3A , 891px 392px #3A3A3A , 1044px 927px #3A3A3A , 1856px 216px #3A3A3A , 957px 347px #3A3A3A , 1486px 406px #3A3A3A , 838px 912px #3A3A3A , 803px 361px #3A3A3A , 564px 826px #3A3A3A , 1597px 949px #3A3A3A , 1206px 289px #3A3A3A , 33px 1035px #3A3A3A , 1762px 1377px #3A3A3A , 789px 1815px #3A3A3A , 1594px 1342px #3A3A3A , 1668px 880px #3A3A3A , 1539px 1581px #3A3A3A , 1547px 53px #3A3A3A , 861px 1433px #3A3A3A , 693px 1618px #3A3A3A , 1762px 782px #3A3A3A , 1568px 682px #3A3A3A , 1126px 1762px #3A3A3A , 1242px 134px #3A3A3A , 495px 959px #3A3A3A , 1606px 219px #3A3A3A , 1878px 1415px #3A3A3A , 1652px 797px #3A3A3A , 782px 1903px #3A3A3A , 1774px 1133px #3A3A3A , 1430px 408px #3A3A3A , 265px 394px #3A3A3A , 890px 336px #3A3A3A , 1051px 311px #3A3A3A , 461px 1559px #3A3A3A , 1931px 91px #3A3A3A , 1160px 380px #3A3A3A , 1442px 1058px #3A3A3A , 1157px 364px #3A3A3A , 586px 227px #3A3A3A , 1365px 715px #3A3A3A , 1658px 1655px #3A3A3A , 1923px 1664px #3A3A3A , 1023px 1844px #3A3A3A , 1939px 1367px #3A3A3A , 1203px 1305px #3A3A3A , 359px 642px #3A3A3A , 1056px 425px #3A3A3A , 787px 202px #3A3A3A , 1609px 1850px #3A3A3A , 1964px 200px #3A3A3A , 1537px 586px #3A3A3A , 1589px 903px #3A3A3A , 1063px 1694px #3A3A3A , 760px 1185px #3A3A3A , 597px 1396px #3A3A3A , 294px 452px #3A3A3A , 433px 818px #3A3A3A , 199px 840px #3A3A3A , 1332px 1937px #3A3A3A , 169px 1907px #3A3A3A , 591px 834px #3A3A3A , 1716px 1032px #3A3A3A , 45px 1879px #3A3A3A , 686px 1469px #3A3A3A , 1520px 475px #3A3A3A , 1122px 859px #3A3A3A , 973px 1541px #3A3A3A , 269px 477px #3A3A3A , 1390px 716px #3A3A3A , 1791px 783px #3A3A3A , 824px 2000px #3A3A3A , 1211px 1717px #3A3A3A , 1008px 1587px #3A3A3A , 1422px 204px #3A3A3A , 234px 556px #3A3A3A , 506px 550px #3A3A3A , 942px 1670px #3A3A3A , 397px 853px #3A3A3A , 599px 795px #3A3A3A , 762px 1926px #3A3A3A , 1202px 1424px #3A3A3A , 135px 1316px #3A3A3A , 1442px 1692px #3A3A3A , 977px 652px #3A3A3A , 564px 1648px #3A3A3A , 997px 1474px #3A3A3A , 67px 1366px #3A3A3A , 1860px 1451px #3A3A3A , 1105px 772px #3A3A3A , 1886px 1396px #3A3A3A , 1510px 658px #3A3A3A , 976px 1544px #3A3A3A , 894px 543px #3A3A3A , 1098px 1189px #3A3A3A , 690px 77px #3A3A3A , 770px 733px #3A3A3A , 557px 1403px #3A3A3A , 1758px 1623px #3A3A3A , 1341px 812px #3A3A3A , 699px 967px #3A3A3A , 277px 866px #3A3A3A , 1526px 1828px #3A3A3A , 8px 977px #3A3A3A , 1707px 952px #3A3A3A , 12px 1900px #3A3A3A , 72px 921px #3A3A3A , 496px 1067px #3A3A3A , 1288px 1749px #3A3A3A , 273px 984px #3A3A3A , 1197px 1991px #3A3A3A , 242px 789px #3A3A3A , 903px 1035px #3A3A3A , 480px 1492px #3A3A3A , 102px 1331px #3A3A3A , 738px 1343px #3A3A3A , 560px 1475px #3A3A3A , 367px 846px #3A3A3A , 1420px 962px #3A3A3A , 1976px 892px #3A3A3A , 1911px 1763px #3A3A3A , 1639px 1002px #3A3A3A , 437px 1522px #3A3A3A , 1906px 1025px #3A3A3A , 730px 1364px #3A3A3A , 1127px 521px #3A3A3A , 1401px 1792px #3A3A3A , 1954px 1066px #3A3A3A , 232px 250px #3A3A3A , 1685px 660px #3A3A3A , 1011px 999px #3A3A3A , 1970px 790px #3A3A3A , 750px 499px #3A3A3A , 1738px 660px #3A3A3A , 1621px 1849px #3A3A3A , 446px 52px #3A3A3A , 1055px 1396px #3A3A3A , 1165px 1497px #3A3A3A , 1740px 1425px #3A3A3A , 1012px 1920px #3A3A3A , 1258px 1560px #3A3A3A , 1020px 1152px #3A3A3A , 362px 673px #3A3A3A , 1065px 975px #3A3A3A , 582px 755px #3A3A3A , 1271px 1479px #3A3A3A , 719px 548px #3A3A3A , 1602px 879px #3A3A3A , 590px 499px #3A3A3A , 721px 1412px #3A3A3A , 1180px 113px #3A3A3A , 1801px 1961px #3A3A3A , 589px 941px #3A3A3A , 883px 476px #3A3A3A , 214px 890px #3A3A3A , 1028px 892px #3A3A3A , 1107px 1832px #3A3A3A , 944px 361px #3A3A3A , 480px 1453px #3A3A3A , 1466px 683px #3A3A3A , 981px 745px #3A3A3A , 1968px 828px #3A3A3A , 657px 1830px #3A3A3A , 11px 1338px #3A3A3A , 179px 730px #3A3A3A , 1713px 197px #3A3A3A , 51px 955px #3A3A3A , 1243px 319px #3A3A3A , 1175px 624px #3A3A3A , 446px 46px #3A3A3A , 5px 1158px #3A3A3A , 82px 1352px #3A3A3A , 1877px 402px #3A3A3A , 708px 1778px #3A3A3A , 903px 1625px #3A3A3A , 1824px 352px #3A3A3A , 1229px 140px #3A3A3A , 1518px 24px #3A3A3A , 1017px 512px #3A3A3A , 515px 699px #3A3A3A , 295px 265px #3A3A3A , 69px 1773px #3A3A3A , 1640px 1163px #3A3A3A , 536px 342px #3A3A3A , 970px 1766px #3A3A3A , 560px 1416px #3A3A3A , 577px 193px #3A3A3A , 469px 9px #3A3A3A , 466px 276px #3A3A3A , 711px 853px #3A3A3A , 401px 685px #3A3A3A , 85px 506px #3A3A3A , 865px 558px #3A3A3A , 631px 105px #3A3A3A , 887px 866px #3A3A3A , 1704px 1001px #3A3A3A , 1051px 1199px #3A3A3A , 275px 1909px #3A3A3A , 1462px 829px #3A3A3A , 375px 1057px #3A3A3A , 1531px 1501px #3A3A3A , 205px 403px #3A3A3A , 33px 1869px #3A3A3A , 967px 1176px #3A3A3A , 376px 863px #3A3A3A , 1769px 1545px #3A3A3A , 535px 51px #3A3A3A , 1972px 1569px #3A3A3A , 1773px 960px #3A3A3A , 487px 620px #3A3A3A , 1660px 687px #3A3A3A , 1632px 972px #3A3A3A , 1362px 42px #3A3A3A , 479px 1655px #3A3A3A , 1531px 1808px #3A3A3A , 1450px 1412px #3A3A3A , 1549px 170px #3A3A3A , 1904px 1305px #3A3A3A , 1209px 48px #3A3A3A , 1933px 820px #3A3A3A , 1623px 595px #3A3A3A , 48px 643px #3A3A3A , 179px 1754px #3A3A3A , 589px 1032px #3A3A3A , 1199px 356px #3A3A3A , 1755px 1418px #3A3A3A , 780px 1174px #3A3A3A , 1905px 758px #3A3A3A , 1567px 713px #3A3A3A , 1372px 705px #3A3A3A , 456px 654px #3A3A3A , 759px 690px #3A3A3A , 452px 673px #3A3A3A , 993px 1610px #3A3A3A , 1271px 188px #3A3A3A , 343px 1750px #3A3A3A , 1943px 1735px #3A3A3A , 1717px 853px #3A3A3A , 1247px 303px #3A3A3A , 1314px 1895px #3A3A3A , 1203px 489px #3A3A3A , 741px 469px #3A3A3A , 4px 246px #3A3A3A , 1515px 115px #3A3A3A , 606px 218px #3A3A3A , 1966px 1471px #3A3A3A , 177px 87px #3A3A3A , 1575px 588px #3A3A3A , 1136px 1386px #3A3A3A , 70px 1868px #3A3A3A , 1053px 18px #3A3A3A , 1124px 721px #3A3A3A , 1748px 1181px #3A3A3A , 191px 1387px #3A3A3A , 1931px 840px #3A3A3A , 1088px 1603px #3A3A3A , 634px 1255px #3A3A3A , 814px 1434px #3A3A3A , 585px 64px #3A3A3A , 1074px 1618px #3A3A3A , 1692px 761px #3A3A3A , 651px 643px #3A3A3A , 193px 335px #3A3A3A , 1103px 1447px #3A3A3A , 491px 1142px #3A3A3A , 521px 408px #3A3A3A , 536px 340px #3A3A3A , 411px 1091px #3A3A3A , 1646px 193px #3A3A3A , 1595px 1285px #3A3A3A , 870px 1349px #3A3A3A , 1085px 1013px #3A3A3A , 204px 1864px #3A3A3A , 1359px 299px #3A3A3A , 807px 964px #3A3A3A , 219px 509px #3A3A3A , 36px 1227px #3A3A3A , 702px 1873px #3A3A3A , 1471px 934px #3A3A3A , 1763px 792px #3A3A3A , 973px 1957px #3A3A3A , 987px 68px #3A3A3A , 593px 1282px #3A3A3A , 1900px 607px #3A3A3A , 407px 1659px #3A3A3A , 587px 17px #3A3A3A , 632px 158px #3A3A3A;
-webkit-animation: animStar 600s linear infinite;
-moz-animation: animStar 600s linear infinite;
-ms-animation: animStar 600s linear infinite;
animation: animStar 600s linear infinite;
}
.stars4:after {
content: " ";
position: absolute;
top: 2000px;
width: 2px;
height: 2px;
background: transparent;
box-shadow: 233px 1976px #3A3A3A , 1196px 1119px #3A3A3A , 646px 740px #3A3A3A , 335px 645px #3A3A3A , 1119px 1452px #3A3A3A , 176px 1870px #3A3A3A , 639px 1711px #3A3A3A , 647px 1388px #3A3A3A , 1516px 1108px #3A3A3A , 464px 66px #3A3A3A , 331px 344px #3A3A3A , 772px 1189px #3A3A3A , 1516px 1850px #3A3A3A , 1500px 1463px #3A3A3A , 1275px 876px #3A3A3A , 1107px 645px #3A3A3A , 977px 478px #3A3A3A , 583px 1179px #3A3A3A , 284px 395px #3A3A3A , 1220px 461px #3A3A3A , 1160px 249px #3A3A3A , 196px 865px #3A3A3A , 670px 1915px #3A3A3A , 1449px 382px #3A3A3A , 1191px 546px #3A3A3A , 1329px 605px #3A3A3A , 1945px 458px #3A3A3A , 995px 749px #3A3A3A , 1495px 861px #3A3A3A , 708px 1731px #3A3A3A , 348px 653px #3A3A3A , 548px 1298px #3A3A3A , 1606px 990px #3A3A3A , 1049px 1204px #3A3A3A , 253px 1501px #3A3A3A , 1154px 166px #3A3A3A , 1087px 104px #3A3A3A , 1034px 1161px #3A3A3A , 1681px 462px #3A3A3A , 577px 1897px #3A3A3A , 193px 1901px #3A3A3A , 1701px 1755px #3A3A3A , 864px 1297px #3A3A3A , 800px 1289px #3A3A3A , 676px 28px #3A3A3A , 185px 1341px #3A3A3A , 379px 1151px #3A3A3A , 1224px 1725px #3A3A3A , 280px 541px #3A3A3A , 473px 1196px #3A3A3A , 921px 1628px #3A3A3A , 969px 432px #3A3A3A , 1475px 758px #3A3A3A , 1195px 993px #3A3A3A , 876px 1840px #3A3A3A , 1274px 1689px #3A3A3A , 1977px 1101px #3A3A3A , 837px 527px #3A3A3A , 1785px 1610px #3A3A3A , 1650px 1843px #3A3A3A , 1127px 1508px #3A3A3A , 401px 1050px #3A3A3A , 51px 1105px #3A3A3A , 545px 880px #3A3A3A , 1786px 1672px #3A3A3A , 318px 260px #3A3A3A , 568px 254px #3A3A3A , 1026px 1527px #3A3A3A , 1242px 852px #3A3A3A , 1785px 982px #3A3A3A , 1318px 1071px #3A3A3A , 398px 1061px #3A3A3A , 1509px 257px #3A3A3A , 599px 928px #3A3A3A , 1195px 1800px #3A3A3A , 1254px 906px #3A3A3A , 141px 26px #3A3A3A , 1384px 1502px #3A3A3A , 476px 767px #3A3A3A , 1973px 722px #3A3A3A , 1339px 1031px #3A3A3A , 778px 818px #3A3A3A , 213px 1320px #3A3A3A , 184px 221px #3A3A3A , 983px 1911px #3A3A3A , 923px 1439px #3A3A3A , 1936px 581px #3A3A3A , 1105px 625px #3A3A3A , 325px 729px #3A3A3A , 1475px 204px #3A3A3A , 1483px 1564px #3A3A3A , 1327px 1272px #3A3A3A , 1187px 1944px #3A3A3A , 1945px 1471px #3A3A3A , 116px 960px #3A3A3A , 1660px 1610px #3A3A3A , 412px 1022px #3A3A3A , 1552px 1516px #3A3A3A , 1517px 1892px #3A3A3A , 306px 829px #3A3A3A , 1416px 462px #3A3A3A , 1575px 1460px #3A3A3A , 424px 1500px #3A3A3A , 1530px 1169px #3A3A3A , 1388px 1608px #3A3A3A , 185px 416px #3A3A3A , 634px 1446px #3A3A3A , 767px 479px #3A3A3A , 71px 426px #3A3A3A , 1937px 145px #3A3A3A , 1955px 1312px #3A3A3A , 1811px 611px #3A3A3A , 1145px 569px #3A3A3A , 1460px 676px #3A3A3A , 131px 1858px #3A3A3A , 1557px 473px #3A3A3A , 735px 130px #3A3A3A , 112px 1531px #3A3A3A , 1312px 305px #3A3A3A , 409px 1032px #3A3A3A , 149px 1964px #3A3A3A , 535px 1215px #3A3A3A , 1382px 630px #3A3A3A , 1437px 1368px #3A3A3A , 362px 1181px #3A3A3A , 388px 181px #3A3A3A , 274px 1287px #3A3A3A , 1858px 1414px #3A3A3A , 661px 1935px #3A3A3A , 675px 1205px #3A3A3A , 1829px 1725px #3A3A3A , 1937px 1145px #3A3A3A , 237px 908px #3A3A3A , 1059px 1185px #3A3A3A , 824px 1248px #3A3A3A , 1167px 1730px #3A3A3A , 180px 1961px #3A3A3A , 1663px 203px #3A3A3A , 374px 221px #3A3A3A , 724px 1883px #3A3A3A , 970px 1362px #3A3A3A , 832px 505px #3A3A3A , 313px 233px #3A3A3A , 1909px 597px #3A3A3A , 434px 201px #3A3A3A , 587px 995px #3A3A3A , 1833px 623px #3A3A3A , 1464px 561px #3A3A3A , 231px 593px #3A3A3A , 1558px 1433px #3A3A3A , 1986px 1767px #3A3A3A , 1753px 1728px #3A3A3A , 1153px 1623px #3A3A3A , 249px 229px #3A3A3A , 1503px 1186px #3A3A3A , 1784px 137px #3A3A3A , 841px 403px #3A3A3A , 1400px 354px #3A3A3A , 197px 499px #3A3A3A , 1188px 681px #3A3A3A , 158px 391px #3A3A3A , 443px 1099px #3A3A3A , 723px 1445px #3A3A3A , 1408px 1235px #3A3A3A , 1908px 195px #3A3A3A , 271px 891px #3A3A3A , 469px 1693px #3A3A3A , 580px 11px #3A3A3A , 1533px 70px #3A3A3A , 859px 761px #3A3A3A , 1510px 1844px #3A3A3A , 421px 558px #3A3A3A , 1132px 1453px #3A3A3A , 757px 1987px #3A3A3A , 212px 293px #3A3A3A , 569px 323px #3A3A3A , 1404px 1394px #3A3A3A , 252px 1386px #3A3A3A , 1668px 1857px #3A3A3A , 123px 1684px #3A3A3A , 105px 490px #3A3A3A , 1083px 1769px #3A3A3A , 1071px 1953px #3A3A3A , 1271px 1159px #3A3A3A , 699px 1491px #3A3A3A , 1744px 1997px #3A3A3A , 1868px 1973px #3A3A3A , 1438px 1449px #3A3A3A , 1222px 1921px #3A3A3A , 1328px 1210px #3A3A3A , 438px 873px #3A3A3A , 809px 780px #3A3A3A , 491px 1524px #3A3A3A , 447px 1830px #3A3A3A , 927px 1936px #3A3A3A , 564px 691px #3A3A3A , 1784px 1747px #3A3A3A , 1978px 1722px #3A3A3A , 1599px 1480px #3A3A3A , 1276px 729px #3A3A3A , 731px 1174px #3A3A3A , 1586px 1711px #3A3A3A , 451px 1340px #3A3A3A , 1075px 1899px #3A3A3A , 13px 575px #3A3A3A , 309px 1340px #3A3A3A , 981px 183px #3A3A3A , 248px 1315px #3A3A3A , 849px 80px #3A3A3A , 1754px 1540px #3A3A3A , 73px 1432px #3A3A3A , 1208px 1828px #3A3A3A , 65px 575px #3A3A3A , 1098px 730px #3A3A3A , 127px 1358px #3A3A3A , 185px 19px #3A3A3A , 1222px 1679px #3A3A3A , 1122px 315px #3A3A3A , 1906px 452px #3A3A3A , 761px 284px #3A3A3A , 813px 492px #3A3A3A , 1344px 843px #3A3A3A , 118px 1834px #3A3A3A , 1620px 359px #3A3A3A , 1755px 1246px #3A3A3A , 299px 1076px #3A3A3A , 1746px 158px #3A3A3A , 6px 1635px #3A3A3A , 143px 190px #3A3A3A , 101px 468px #3A3A3A , 137px 971px #3A3A3A , 1221px 1929px #3A3A3A , 1752px 650px #3A3A3A , 1635px 1761px #3A3A3A , 1522px 833px #3A3A3A , 908px 153px #3A3A3A , 1044px 350px #3A3A3A , 1151px 1940px #3A3A3A , 822px 210px #3A3A3A , 1774px 310px #3A3A3A , 796px 1447px #3A3A3A , 1069px 1903px #3A3A3A , 217px 565px #3A3A3A , 662px 1370px #3A3A3A , 1876px 1570px #3A3A3A , 847px 46px #3A3A3A , 1042px 1689px #3A3A3A , 1584px 1434px #3A3A3A , 1791px 908px #3A3A3A , 973px 908px #3A3A3A , 793px 747px #3A3A3A , 122px 483px #3A3A3A , 1137px 1374px #3A3A3A , 1757px 1791px #3A3A3A , 513px 225px #3A3A3A , 63px 731px #3A3A3A , 1179px 1926px #3A3A3A , 346px 18px #3A3A3A , 589px 175px #3A3A3A , 87px 302px #3A3A3A , 380px 1295px #3A3A3A , 450px 921px #3A3A3A , 1667px 1973px #3A3A3A , 1495px 1373px #3A3A3A , 1462px 1850px #3A3A3A , 540px 288px #3A3A3A , 1208px 1051px #3A3A3A , 1554px 1095px #3A3A3A , 1009px 1516px #3A3A3A , 181px 572px #3A3A3A , 165px 387px #3A3A3A , 549px 1835px #3A3A3A , 960px 16px #3A3A3A , 1360px 403px #3A3A3A , 1251px 43px #3A3A3A , 1905px 1813px #3A3A3A , 1106px 866px #3A3A3A , 1809px 277px #3A3A3A , 1828px 1720px #3A3A3A , 295px 1610px #3A3A3A , 523px 166px #3A3A3A , 1069px 692px #3A3A3A , 1292px 217px #3A3A3A , 11px 1721px #3A3A3A , 99px 1045px #3A3A3A , 51px 1584px #3A3A3A , 1053px 266px #3A3A3A , 1287px 1235px #3A3A3A , 747px 1722px #3A3A3A , 1542px 736px #3A3A3A , 1256px 18px #3A3A3A , 102px 609px #3A3A3A , 586px 1339px #3A3A3A , 1843px 1697px #3A3A3A , 824px 1687px #3A3A3A , 1124px 882px #3A3A3A , 395px 501px #3A3A3A , 1456px 672px #3A3A3A , 1472px 1648px #3A3A3A , 1326px 1164px #3A3A3A , 777px 1672px #3A3A3A , 81px 345px #3A3A3A , 91px 386px #3A3A3A , 243px 411px #3A3A3A , 1560px 90px #3A3A3A , 6px 1771px #3A3A3A , 1601px 616px #3A3A3A , 1220px 1808px #3A3A3A , 1160px 836px #3A3A3A , 246px 1777px #3A3A3A , 456px 863px #3A3A3A , 97px 1138px #3A3A3A , 1811px 942px #3A3A3A , 213px 414px #3A3A3A , 891px 392px #3A3A3A , 1044px 927px #3A3A3A , 1856px 216px #3A3A3A , 957px 347px #3A3A3A , 1486px 406px #3A3A3A , 838px 912px #3A3A3A , 803px 361px #3A3A3A , 564px 826px #3A3A3A , 1597px 949px #3A3A3A , 1206px 289px #3A3A3A , 33px 1035px #3A3A3A , 1762px 1377px #3A3A3A , 789px 1815px #3A3A3A , 1594px 1342px #3A3A3A , 1668px 880px #3A3A3A , 1539px 1581px #3A3A3A , 1547px 53px #3A3A3A , 861px 1433px #3A3A3A , 693px 1618px #3A3A3A , 1762px 782px #3A3A3A , 1568px 682px #3A3A3A , 1126px 1762px #3A3A3A , 1242px 134px #3A3A3A , 495px 959px #3A3A3A , 1606px 219px #3A3A3A , 1878px 1415px #3A3A3A , 1652px 797px #3A3A3A , 782px 1903px #3A3A3A , 1774px 1133px #3A3A3A , 1430px 408px #3A3A3A , 265px 394px #3A3A3A , 890px 336px #3A3A3A , 1051px 311px #3A3A3A , 461px 1559px #3A3A3A , 1931px 91px #3A3A3A , 1160px 380px #3A3A3A , 1442px 1058px #3A3A3A , 1157px 364px #3A3A3A , 586px 227px #3A3A3A , 1365px 715px #3A3A3A , 1658px 1655px #3A3A3A , 1923px 1664px #3A3A3A , 1023px 1844px #3A3A3A , 1939px 1367px #3A3A3A , 1203px 1305px #3A3A3A , 359px 642px #3A3A3A , 1056px 425px #3A3A3A , 787px 202px #3A3A3A , 1609px 1850px #3A3A3A , 1964px 200px #3A3A3A , 1537px 586px #3A3A3A , 1589px 903px #3A3A3A , 1063px 1694px #3A3A3A , 760px 1185px #3A3A3A , 597px 1396px #3A3A3A , 294px 452px #3A3A3A , 433px 818px #3A3A3A , 199px 840px #3A3A3A , 1332px 1937px #3A3A3A , 169px 1907px #3A3A3A , 591px 834px #3A3A3A , 1716px 1032px #3A3A3A , 45px 1879px #3A3A3A , 686px 1469px #3A3A3A , 1520px 475px #3A3A3A , 1122px 859px #3A3A3A , 973px 1541px #3A3A3A , 269px 477px #3A3A3A , 1390px 716px #3A3A3A , 1791px 783px #3A3A3A , 824px 2000px #3A3A3A , 1211px 1717px #3A3A3A , 1008px 1587px #3A3A3A , 1422px 204px #3A3A3A , 234px 556px #3A3A3A , 506px 550px #3A3A3A , 942px 1670px #3A3A3A , 397px 853px #3A3A3A , 599px 795px #3A3A3A , 762px 1926px #3A3A3A , 1202px 1424px #3A3A3A , 135px 1316px #3A3A3A , 1442px 1692px #3A3A3A , 977px 652px #3A3A3A , 564px 1648px #3A3A3A , 997px 1474px #3A3A3A , 67px 1366px #3A3A3A , 1860px 1451px #3A3A3A , 1105px 772px #3A3A3A , 1886px 1396px #3A3A3A , 1510px 658px #3A3A3A , 976px 1544px #3A3A3A , 894px 543px #3A3A3A , 1098px 1189px #3A3A3A , 690px 77px #3A3A3A , 770px 733px #3A3A3A , 557px 1403px #3A3A3A , 1758px 1623px #3A3A3A , 1341px 812px #3A3A3A , 699px 967px #3A3A3A , 277px 866px #3A3A3A , 1526px 1828px #3A3A3A , 8px 977px #3A3A3A , 1707px 952px #3A3A3A , 12px 1900px #3A3A3A , 72px 921px #3A3A3A , 496px 1067px #3A3A3A , 1288px 1749px #3A3A3A , 273px 984px #3A3A3A , 1197px 1991px #3A3A3A , 242px 789px #3A3A3A , 903px 1035px #3A3A3A , 480px 1492px #3A3A3A , 102px 1331px #3A3A3A , 738px 1343px #3A3A3A , 560px 1475px #3A3A3A , 367px 846px #3A3A3A , 1420px 962px #3A3A3A , 1976px 892px #3A3A3A , 1911px 1763px #3A3A3A , 1639px 1002px #3A3A3A , 437px 1522px #3A3A3A , 1906px 1025px #3A3A3A , 730px 1364px #3A3A3A , 1127px 521px #3A3A3A , 1401px 1792px #3A3A3A , 1954px 1066px #3A3A3A , 232px 250px #3A3A3A , 1685px 660px #3A3A3A , 1011px 999px #3A3A3A , 1970px 790px #3A3A3A , 750px 499px #3A3A3A , 1738px 660px #3A3A3A , 1621px 1849px #3A3A3A , 446px 52px #3A3A3A , 1055px 1396px #3A3A3A , 1165px 1497px #3A3A3A , 1740px 1425px #3A3A3A , 1012px 1920px #3A3A3A , 1258px 1560px #3A3A3A , 1020px 1152px #3A3A3A , 362px 673px #3A3A3A , 1065px 975px #3A3A3A , 582px 755px #3A3A3A , 1271px 1479px #3A3A3A , 719px 548px #3A3A3A , 1602px 879px #3A3A3A , 590px 499px #3A3A3A , 721px 1412px #3A3A3A , 1180px 113px #3A3A3A , 1801px 1961px #3A3A3A , 589px 941px #3A3A3A , 883px 476px #3A3A3A , 214px 890px #3A3A3A , 1028px 892px #3A3A3A , 1107px 1832px #3A3A3A , 944px 361px #3A3A3A , 480px 1453px #3A3A3A , 1466px 683px #3A3A3A , 981px 745px #3A3A3A , 1968px 828px #3A3A3A , 657px 1830px #3A3A3A , 11px 1338px #3A3A3A , 179px 730px #3A3A3A , 1713px 197px #3A3A3A , 51px 955px #3A3A3A , 1243px 319px #3A3A3A , 1175px 624px #3A3A3A , 446px 46px #3A3A3A , 5px 1158px #3A3A3A , 82px 1352px #3A3A3A , 1877px 402px #3A3A3A , 708px 1778px #3A3A3A , 903px 1625px #3A3A3A , 1824px 352px #3A3A3A , 1229px 140px #3A3A3A , 1518px 24px #3A3A3A , 1017px 512px #3A3A3A , 515px 699px #3A3A3A , 295px 265px #3A3A3A , 69px 1773px #3A3A3A , 1640px 1163px #3A3A3A , 536px 342px #3A3A3A , 970px 1766px #3A3A3A , 560px 1416px #3A3A3A , 577px 193px #3A3A3A , 469px 9px #3A3A3A , 466px 276px #3A3A3A , 711px 853px #3A3A3A , 401px 685px #3A3A3A , 85px 506px #3A3A3A , 865px 558px #3A3A3A , 631px 105px #3A3A3A , 887px 866px #3A3A3A , 1704px 1001px #3A3A3A , 1051px 1199px #3A3A3A , 275px 1909px #3A3A3A , 1462px 829px #3A3A3A , 375px 1057px #3A3A3A , 1531px 1501px #3A3A3A , 205px 403px #3A3A3A , 33px 1869px #3A3A3A , 967px 1176px #3A3A3A , 376px 863px #3A3A3A , 1769px 1545px #3A3A3A , 535px 51px #3A3A3A , 1972px 1569px #3A3A3A , 1773px 960px #3A3A3A , 487px 620px #3A3A3A , 1660px 687px #3A3A3A , 1632px 972px #3A3A3A , 1362px 42px #3A3A3A , 479px 1655px #3A3A3A , 1531px 1808px #3A3A3A , 1450px 1412px #3A3A3A , 1549px 170px #3A3A3A , 1904px 1305px #3A3A3A , 1209px 48px #3A3A3A , 1933px 820px #3A3A3A , 1623px 595px #3A3A3A , 48px 643px #3A3A3A , 179px 1754px #3A3A3A , 589px 1032px #3A3A3A , 1199px 356px #3A3A3A , 1755px 1418px #3A3A3A , 780px 1174px #3A3A3A , 1905px 758px #3A3A3A , 1567px 713px #3A3A3A , 1372px 705px #3A3A3A , 456px 654px #3A3A3A , 759px 690px #3A3A3A , 452px 673px #3A3A3A , 993px 1610px #3A3A3A , 1271px 188px #3A3A3A , 343px 1750px #3A3A3A , 1943px 1735px #3A3A3A , 1717px 853px #3A3A3A , 1247px 303px #3A3A3A , 1314px 1895px #3A3A3A , 1203px 489px #3A3A3A , 741px 469px #3A3A3A , 4px 246px #3A3A3A , 1515px 115px #3A3A3A , 606px 218px #3A3A3A , 1966px 1471px #3A3A3A , 177px 87px #3A3A3A , 1575px 588px #3A3A3A , 1136px 1386px #3A3A3A , 70px 1868px #3A3A3A , 1053px 18px #3A3A3A , 1124px 721px #3A3A3A , 1748px 1181px #3A3A3A , 191px 1387px #3A3A3A , 1931px 840px #3A3A3A , 1088px 1603px #3A3A3A , 634px 1255px #3A3A3A , 814px 1434px #3A3A3A , 585px 64px #3A3A3A , 1074px 1618px #3A3A3A , 1692px 761px #3A3A3A , 651px 643px #3A3A3A , 193px 335px #3A3A3A , 1103px 1447px #3A3A3A , 491px 1142px #3A3A3A , 521px 408px #3A3A3A , 536px 340px #3A3A3A , 411px 1091px #3A3A3A , 1646px 193px #3A3A3A , 1595px 1285px #3A3A3A , 870px 1349px #3A3A3A , 1085px 1013px #3A3A3A , 204px 1864px #3A3A3A , 1359px 299px #3A3A3A , 807px 964px #3A3A3A , 219px 509px #3A3A3A , 36px 1227px #3A3A3A , 702px 1873px #3A3A3A , 1471px 934px #3A3A3A , 1763px 792px #3A3A3A , 973px 1957px #3A3A3A , 987px 68px #3A3A3A , 593px 1282px #3A3A3A , 1900px 607px #3A3A3A , 407px 1659px #3A3A3A , 587px 17px #3A3A3A , 632px 158px #3A3A3A;
}


</style>
<div id="dust_particle" class="nc-main bg-cover bg-cc">

<div class="full-wh">

<div class="bg-animation">
<div class='stars'></div>
<div class='stars2'></div>
<div class='stars3'></div>
<div class='stars4'></div>
</div>

</div>
</div>
[particleendhtml]
[_tb_end_tyrano_code]

[return  ]
[s  ]
*firework_particle

[tb_start_tyrano_code]
[html]
<style>
$small-bp: 640px;
$large-bp: 840px;

$ui-opacity: 0.5;
$ui-color: rgba(#fff, $ui-opacity);
$font: 'Russo One', arial, sans-serif;
$letter-spacing: 0.06em;

* {
position: relative;
box-sizing: border-box;
}

html,
body {
height: 100%;
}

html {
background-color: #000;
}

body {
overflow: hidden;
color: $ui-color;
font-family: $font;
line-height: 1.25;
letter-spacing: $letter-spacing;
}

.hide {
opacity: 0;
visibility: hidden;
}

.remove {
display: none !important;
}

.blur {
filter: blur(12px);
}



.container {
height: 100%;
display: flex;
justify-content: center;
align-items: center;
}

.loading-init {
width: 100%;
align-self: center;
text-align: center;
text-transform: uppercase;

&__header {
font-size: 2.2em;
}

&__status {
margin-top: 1em;
font-size: 0.8em;
opacity: 0.75;
}
}

.stage-container {
overflow: hidden;
box-sizing: initial;
border: 1px solid #222;
margin: -1px;

@media (max-width: $large-bp) {
border: none;
margin: 0;
}
}

.canvas-container {
width: 100%;
height: 100%;
transition: filter 0.3s;

canvas {
position: absolute;
mix-blend-mode: lighten;
transform: translateZ(0);
}
}

.controls {
position: absolute;
top: 0;
width: 100%;
padding-bottom: 50px;
display: flex;
justify-content: space-between;
transition: opacity 0.3s, visibility 0.3s;

@media (min-width: $large-bp) {
visibility: visible;

&.hide:hover {
opacity: 1;
}
}
}

.menu {
position: absolute;
top: 0;
bottom: 0;
left: 0;
right: 0;
background-color: rgba(0, 0, 0, 0.42);
transition: opacity 0.3s, visibility 0.3s;

&__inner-wrap {
display: flex;
flex-direction: column;
justify-content: center;
align-items: center;
position: absolute;
top: 0;
bottom: 0;
left: 0;
right: 0;
transition: opacity 0.3s;
}

&__header {
margin-top: auto;
margin-bottom: 8px;
padding-top: 16px;
font-size: 2em;
text-transform: uppercase;
}

&__subheader {
margin-bottom: auto;
padding-bottom: 12px;
font-size: 0.86em;
opacity: 0.8;
}

form {
width: 100%;
max-width: 400px;
padding: 0 10px;
overflow: auto;
-webkit-overflow-scrolling: touch;
}

.form-option {
display: flex;
align-items: center;
margin: 16px 0;
transition: opacity 0.3s;

label {
display: block;
width: 50%;
padding-right: 12px;
text-align: right;
text-transform: uppercase;
user-select: none;
}

&--select {
select {
display: block;
width: 50%;
height: 30px;
font-size: 1rem;
font-family: $font;
color: $ui-color;
letter-spacing: $letter-spacing;
background-color: transparent;
border: 1px solid $ui-color;

option {
background-color: black;
}
}
}

&--checkbox {
input {
display: block;
width: 26px;
height: 26px;
margin: 0;
opacity: $ui-opacity;
}
}

@media (max-width: $large-bp) {
select, input {
outline: none;
}
}
}
}

.close-menu-btn {
position: absolute;
top: 0;
right: 0;
}

.btn {
$size: 50px;
opacity: 0.16;
width: $size;
height: $size;
display: flex;
user-select: none;
cursor: default;
transition: opacity 0.3s;

&--bright {
opacity: 0.5;
}

@media (min-width: $large-bp) {
&:hover {
opacity: 0.32;
}

&--bright:hover {
opacity: 0.75;
}
}

svg {
display: block;
margin: auto;
}
}


.credits {
margin-top: auto;
margin-bottom: 10px;
padding-top: 6px;
font-size: 0.8em;
opacity: 0.75;

a {
color: $ui-color;
text-decoration: none;

&:hover,
&:active {
color: rgba(white, 0.75);
text-decoration: underline;
}
}
}


.help-modal {
$self: &;
$duration-in: 0.4s;
$duration-out: 0.25s;
$curve-in: ease-out;
$curve-out: ease-in;

display: flex;
justify-content: center;
align-items: center;
position: fixed;
top: 0;
bottom: 0;
left: 0;
right: 0;
visibility: hidden;
transition-property: visibility;
transition-duration: $duration-out;

&__overlay {
position: absolute;
top: 0;
bottom: 0;
left: 0;
right: 0;
opacity: 0;
transition-property: opacity;
transition-timing-function: $curve-out;
transition-duration: $duration-out;
}

&__dialog {
display: flex;
flex-direction: column;
align-items: center;
max-width: 400px;
max-height: calc(100vh - 100px);
margin: 10px;
padding: 20px;
border-radius: 0.3em;
background-color: rgba(#000, 0.4);
opacity: 0;
transform: scale(0.9, 0.9);
transition-property: opacity, transform;
transition-timing-function: $curve-out;
transition-duration: $duration-out;

@media (min-width: $large-bp) {
font-size: 1.25rem;
max-width: 500px;
}
}

&__header {
font-size: 1.75em;
text-transform: uppercase;
text-align: center;
}

&__body {
$separator-color: rgba(#FFF, 0.25);

overflow-y: auto;
-webkit-overflow-scrolling: touch;
margin: 1em 0;
padding: 1em 0;
border-top: 1px solid $separator-color;
border-bottom: 1px solid $separator-color;
line-height: 1.5;
color: rgba(#FFF, 0.75);
}

&__close-btn {
flex-shrink: 0;
outline: none;
border: none;
border-radius: 2px;
padding: 0.25em 0.75em;
margin-top: 0.36em;
font-family: $font;
font-size: 1em;
color: $ui-color;
text-transform: uppercase;
letter-spacing: $letter-spacing;
background-color: rgba(#FFF, 0.25);
transition: color 0.3s, background-color 0.3s;

&:hover,
&:active,
&:focus {
color: #FFF;
background-color: #09F;
}
}

&.active {
visibility: visible;
transition-duration: $duration-in;

#{$self}__overlay {
opacity: 1;
transition-timing-function: $curve-in;
transition-duration: $duration-in;
}

#{$self}__dialog {
opacity: 1;
transform: scale(1, 1);
transition-timing-function: $curve-in;
transition-duration: $duration-in;
}
}
}
</style>
<div style="height: 0; width: 0; position: absolute; visibility: hidden;">
<svg xmlns="http://www.w3.org/2000/svg">
<symbol id="icon-play" viewBox="0 0 24 24">
<path d="M8 5v14l11-7z"/>
</symbol>
<symbol id="icon-pause" viewBox="0 0 24 24">
<path d="M6 19h4V5H6v14zm8-14v14h4V5h-4z"/>
</symbol>
<symbol id="icon-close" viewBox="0 0 24 24">
<path d="M19 6.41L17.59 5 12 10.59 6.41 5 5 6.41 10.59 12 5 17.59 6.41 19 12 13.41 17.59 19 19 17.59 13.41 12z"/>
</symbol>
<symbol id="icon-settings" viewBox="0 0 24 24">
<path d="M19.43 12.98c.04-.32.07-.64.07-.98s-.03-.66-.07-.98l2.11-1.65c.19-.15.24-.42.12-.64l-2-3.46c-.12-.22-.39-.3-.61-.22l-2.49 1c-.52-.4-1.08-.73-1.69-.98l-.38-2.65C14.46 2.18 14.25 2 14 2h-4c-.25 0-.46.18-.49.42l-.38 2.65c-.61.25-1.17.59-1.69.98l-2.49-1c-.23-.09-.49 0-.61.22l-2 3.46c-.13.22-.07.49.12.64l2.11 1.65c-.04.32-.07.65-.07.98s.03.66.07.98l-2.11 1.65c-.19.15-.24.42-.12.64l2 3.46c.12.22.39.3.61.22l2.49-1c.52.4 1.08.73 1.69.98l.38 2.65c.03.24.24.42.49.42h4c.25 0 .46-.18.49-.42l.38-2.65c.61-.25 1.17-.59 1.69-.98l2.49 1c.23.09.49 0 .61-.22l2-3.46c.12-.22.07-.49-.12-.64l-2.11-1.65zM12 15.5c-1.93 0-3.5-1.57-3.5-3.5s1.57-3.5 3.5-3.5 3.5 1.57 3.5 3.5-1.57 3.5-3.5 3.5z"/>
</symbol>
<symbol id="icon-sound-on" viewBox="0 0 24 24">
<path d="M3 9v6h4l5 5V4L7 9H3zm13.5 3c0-1.77-1.02-3.29-2.5-4.03v8.05c1.48-.73 2.5-2.25 2.5-4.02zM14 3.23v2.06c2.89.86 5 3.54 5 6.71s-2.11 5.85-5 6.71v2.06c4.01-.91 7-4.49 7-8.77s-2.99-7.86-7-8.77z"/>
</symbol>
<symbol id="icon-sound-off" viewBox="0 0 24 24">
<path d="M16.5 12c0-1.77-1.02-3.29-2.5-4.03v2.21l2.45 2.45c.03-.2.05-.41.05-.63zm2.5 0c0 .94-.2 1.82-.54 2.64l1.51 1.51C20.63 14.91 21 13.5 21 12c0-4.28-2.99-7.86-7-8.77v2.06c2.89.86 5 3.54 5 6.71zM4.27 3L3 4.27 7.73 9H3v6h4l5 5v-6.73l4.25 4.25c-.67.52-1.42.93-2.25 1.18v2.06c1.38-.31 2.63-.95 3.69-1.81L19.73 21 21 19.73l-9-9L4.27 3zM12 4L9.91 6.09 12 8.18V4z"/>
</symbol>
</svg>
</div>

<div class="container">
<div class="loading-init">
<div class="loading-init__header">Loading</div>
<div class="loading-init__status">Assembling Shells</div>
</div>
<div class="stage-container remove">
<div class="canvas-container">
<canvas id="trails-canvas"></canvas>
<canvas id="main-canvas"></canvas>
</div>
<div class="controls">
<div class="btn pause-btn">
<svg fill="white" width="24" height="24"><use href="#icon-pause" xlink:href="#icon-pause"></use></svg>
</div>
<div class="btn sound-btn">
<svg fill="white" width="24" height="24"><use href="#icon-sound-off" xlink:href="#icon-sound-off"></use></svg>
</div>
<div class="btn settings-btn">
<svg fill="white" width="24" height="24"><use href="#icon-settings" xlink:href="#icon-settings"></use></svg>
</div>
</div>
<div class="menu hide">
<div class="menu__inner-wrap">
<div class="btn btn--bright close-menu-btn">
<svg fill="white" width="24" height="24"><use href="#icon-close" xlink:href="#icon-close"></use></svg>
</div>
<div class="menu__header">Settings</div>
<div class="menu__subheader">For more info, click any label.</div>
<form>
<div class="form-option form-option--select">
<label class="shell-type-label">Shell Type</label>
<select class="shell-type"></select>
</div>
<div class="form-option form-option--select">
<label class="shell-size-label">Shell Size</label>
<select class="shell-size"></select>
</div>
<div class="form-option form-option--select">
<label class="quality-ui-label">Quality</label>
<select class="quality-ui"></select>
</div>
<div class="form-option form-option--select">
<label class="sky-lighting-label">Sky Lighting</label>
<select class="sky-lighting"></select>
</div>
<div class="form-option form-option--select">
<label class="scaleFactor-label">Scale</label>
<select class="scaleFactor"></select>
</div>
<div class="form-option form-option--checkbox">
<label class="auto-launch-label">Auto Fire</label>
<input class="auto-launch" type="checkbox" />
</div>
<div class="form-option form-option--checkbox form-option--finale-mode">
<label class="finale-mode-label">Finale Mode</label>
<input class="finale-mode" type="checkbox" />
</div>
<div class="form-option form-option--checkbox">
<label class="hide-controls-label">Hide Controls</label>
<input class="hide-controls" type="checkbox" />
</div>
<div class="form-option form-option--checkbox form-option--fullscreen">
<label class="fullscreen-label">Fullscreen</label>
<input class="fullscreen" type="checkbox" />
</div>
<div class="form-option form-option--checkbox">
<label class="long-exposure-label">Open Shutter</label>
<input class="long-exposure" type="checkbox" />
</div>
</form>
<div class="credits">
Passionately built by <a href="https://cmiller.tech/" target="_blank">Caleb Miller</a>.
</div>
</div>
</div>
</div>
<div class="help-modal">
<div class="help-modal__overlay"></div>
<div class="help-modal__dialog">
<div class="help-modal__header"></div>
<div class="help-modal__body"></div>
<button type="button" class="help-modal__close-btn">Close</button>
</div>
</div>
</div>
[endhtml]

[iscript]
'use strict';
console.clear();

// This is a prime example of what starts out as a simple project
// and snowballs way beyond its intended size. It's a little clunky
// reading/working on this single file, but here it is anyways :)

const IS_MOBILE = window.innerWidth <= 640;
const IS_DESKTOP = window.innerWidth > 800;
const IS_HEADER = IS_DESKTOP && window.innerHeight < 300;
// Detect high end devices. This will be a moving target.
const IS_HIGH_END_DEVICE = (() => {
const hwConcurrency = navigator.hardwareConcurrency;
if (!hwConcurrency) {
return false;
}
// Large screens indicate a full size computer, which often have hyper threading these days.
// So a quad core desktop machine has 8 cores. We'll place a higher min threshold there.
const minCount = window.innerWidth <= 1024 ? 4 : 8;
return hwConcurrency >= minCount;
})();
// Prevent canvases from getting too large on ridiculous screen sizes.
// 8K - can restrict this if needed
const MAX_WIDTH = 7680;
const MAX_HEIGHT = 4320;
const GRAVITY = 0.9; // Acceleration in px/s
let simSpeed = 1;

function getDefaultScaleFactor() {
if (IS_MOBILE) return 0.9;
if (IS_HEADER) return 0.75;
return 1;
}

// Width/height values that take scale into account.
// USE THESE FOR DRAWING POSITIONS
let stageW, stageH;

// All quality globals will be overwritten and updated via `configDidUpdate`.
let quality = 1;
let isLowQuality = false;
let isNormalQuality = true;
let isHighQuality = false;

const QUALITY_LOW = 1;
const QUALITY_NORMAL = 2;
const QUALITY_HIGH = 3;

const SKY_LIGHT_NONE = 0;
const SKY_LIGHT_DIM = 1;
const SKY_LIGHT_NORMAL = 2;

const COLOR = {
Red: '#ff0043',
Green: '#14fc56',
Blue: '#1e7fff',
Purple: '#e60aff',
Gold: '#ffbf36',
White: '#ffffff'
};

// Special invisible color (not rendered, and therefore not in COLOR map)
const INVISIBLE = '_INVISIBLE_';

const PI_2 = Math.PI * 2;
const PI_HALF = Math.PI * 0.5;

// Stage.disableHighDPI = true;
const trailsStage = new Stage('trails-canvas');
const mainStage = new Stage('main-canvas');
const stages = [
trailsStage,
mainStage
];



// Fullscreen helpers, using Fscreen for prefixes.
function fullscreenEnabled() {
return fscreen.fullscreenEnabled;
}

// Note that fullscreen state is synced to store, and the store should be the source
// of truth for whether the app is in fullscreen mode or not.
function isFullscreen() {
return !!fscreen.fullscreenElement;
}

// Attempt to toggle fullscreen mode.
function toggleFullscreen() {
if (fullscreenEnabled()) {
if (isFullscreen()) {
fscreen.exitFullscreen();
} else {
fscreen.requestFullscreen(document.documentElement);
}
}
}

// Sync fullscreen changes with store. An event listener is necessary because the user can
// toggle fullscreen mode directly through the browser, and we want to react to that.
fscreen.addEventListener('fullscreenchange', () => {
store.setState({ fullscreen: isFullscreen() });
});




// Simple state container; the source of truth.
const store = {
_listeners: new Set(),
_dispatch(prevState) {
this._listeners.forEach(listener => listener(this.state, prevState))
},

state: {
// will be unpaused in init()
paused: true,
soundEnabled: false,
menuOpen: false,
openHelpTopic: null,
fullscreen: isFullscreen(),
// Note that config values used for <select>s must be strings, unless manually converting values to strings
// at render time, and parsing on change.
config: {
quality: String(IS_HIGH_END_DEVICE ? QUALITY_HIGH : QUALITY_NORMAL), // will be mirrored to a global variable named `quality` in `configDidUpdate`, for perf.
shell: 'Random',
size: IS_DESKTOP
? '3' // Desktop default
: IS_HEADER
? '1.2' // Profile header default (doesn't need to be an int)
: '2', // Mobile default
autoLaunch: true,
finale: false,
skyLighting: SKY_LIGHT_NORMAL + '',
hideControls: IS_HEADER,
longExposure: false,
scaleFactor: getDefaultScaleFactor()
}
},

setState(nextState) {
const prevState = this.state;
this.state = Object.assign({}, this.state, nextState);
this._dispatch(prevState);
this.persist();
},

subscribe(listener) {
this._listeners.add(listener);
return () => this._listeners.remove(listener);
},

// Load / persist select state to localStorage
// Mutates state because `store.load()` should only be called once immediately after store is created, before any subscriptions.
load() {
const serializedData = localStorage.getItem('cm_fireworks_data');
if (serializedData) {
const {
schemaVersion,
data
} = JSON.parse(serializedData);

const config = this.state.config;
switch(schemaVersion) {
case '1.1':
config.quality = data.quality;
config.size = data.size;
config.skyLighting = data.skyLighting;
break;
case '1.2':
config.quality = data.quality;
config.size = data.size;
config.skyLighting = data.skyLighting;
config.scaleFactor = data.scaleFactor;
break;
default:
throw new Error('version switch should be exhaustive');
}
console.log(`Loaded config (schema version ${schemaVersion})`);
}
// Deprecated data format. Checked with care (it's not namespaced).
else if (localStorage.getItem('schemaVersion') === '1') {
let size;
// Attempt to parse data, ignoring if there is an error.
try {
const sizeRaw = localStorage.getItem('configSize');
size = typeof sizeRaw === 'string' && JSON.parse(sizeRaw);
}
catch(e) {
console.log('Recovered from error parsing saved config:');
console.error(e);
return;
}
// Only restore validated values
const sizeInt = parseInt(size, 10);
if (sizeInt >= 0 && sizeInt <= 4) {
this.state.config.size = String(sizeInt);
}
}
},

persist() {
const config = this.state.config;
localStorage.setItem('cm_fireworks_data', JSON.stringify({
schemaVersion: '1.2',
data: {
quality: config.quality,
size: config.size,
skyLighting: config.skyLighting,
scaleFactor: config.scaleFactor
}
}));
}
};


if (!IS_HEADER) {
store.load();
}

// Actions
// ---------

function togglePause(toggle) {
const paused = store.state.paused;
let newValue;
if (typeof toggle === 'boolean') {
newValue = toggle;
} else {
newValue = !paused;
}

if (paused !== newValue) {
store.setState({ paused: newValue });
}
}

function toggleSound(toggle) {
if (typeof toggle === 'boolean') {
store.setState({ soundEnabled: toggle });
} else {
store.setState({ soundEnabled: !store.state.soundEnabled });
}
}

function toggleMenu(toggle) {
if (typeof toggle === 'boolean') {
store.setState({ menuOpen: toggle });
} else {
store.setState({ menuOpen: !store.state.menuOpen });
}
}

function updateConfig(nextConfig) {
nextConfig = nextConfig || getConfigFromDOM();
store.setState({
config: Object.assign({}, store.state.config, nextConfig)
});

configDidUpdate();
}

// Map config to various properties & apply side effects
function configDidUpdate() {
const config = store.state.config;

quality = qualitySelector();
isLowQuality = quality === QUALITY_LOW;
isNormalQuality = quality === QUALITY_NORMAL;
isHighQuality = quality === QUALITY_HIGH;

if (skyLightingSelector() === SKY_LIGHT_NONE) {
appNodes.canvasContainer.style.backgroundColor = '#000';
}

Spark.drawWidth = quality === QUALITY_HIGH ? 0.75 : 1;
}

// Selectors
// -----------

const isRunning = (state=store.state) => !state.paused && !state.menuOpen;
// Whether user has enabled sound.
const soundEnabledSelector = (state=store.state) => state.soundEnabled;
// Whether any sounds are allowed, taking into account multiple factors.
const canPlaySoundSelector = (state=store.state) => isRunning(state) && soundEnabledSelector(state);
// Convert quality to number.
const qualitySelector = () => +store.state.config.quality;
const shellNameSelector = () => store.state.config.shell;
// Convert shell size to number.
const shellSizeSelector = () => +store.state.config.size;
const finaleSelector = () => store.state.config.finale;
const skyLightingSelector = () => +store.state.config.skyLighting;
const scaleFactorSelector = () => store.state.config.scaleFactor;



// Help Content
const helpContent = {
shellType: {
header: 'Shell Type',
body: 'The type of firework that will be launched. Select "Random" for a nice assortment!'
},
shellSize: {
header: 'Shell Size',
body: 'The size of the fireworks. Modeled after real firework shell sizes, larger shells have bigger bursts with more stars, and sometimes more complex effects. However, larger shells also require more processing power and may cause lag.'
},
quality: {
header: 'Quality',
body: 'Overall graphics quality. If the animation is not running smoothly, try lowering the quality. High quality greatly increases the amount of sparks rendered and may cause lag.'
},
skyLighting: {
header: 'Sky Lighting',
body: 'Illuminates the background as fireworks explode. If the background looks too bright on your screen, try setting it to "Dim" or "None".'
},
scaleFactor: {
header: 'Scale',
body: 'Allows scaling the size of all fireworks, essentially moving you closer or farther away. For larger shell sizes, it can be convenient to decrease the scale a bit, especially on phones or tablets.'
},
autoLaunch: {
header: 'Auto Fire',
body: 'Launches sequences of fireworks automatically. Sit back and enjoy the show, or disable to have full control.'
},
finaleMode: {
header: 'Finale Mode',
body: 'Launches intense bursts of fireworks. May cause lag. Requires "Auto Fire" to be enabled.'
},
hideControls: {
header: 'Hide Controls',
body: 'Hides the translucent controls along the top of the screen. Useful for screenshots, or just a more seamless experience. While hidden, you can still tap the top-right corner to re-open this menu.'
},
fullscreen: {
header: 'Fullscreen',
body: 'Toggles fullscreen mode.'
},
longExposure: {
header: 'Open Shutter',
body: 'Experimental effect that preserves long streaks of light, similar to leaving a camera shutter open.'
}
};

const nodeKeyToHelpKey = {
shellTypeLabel: 'shellType',
shellSizeLabel: 'shellSize',
qualityLabel: 'quality',
skyLightingLabel: 'skyLighting',
scaleFactorLabel: 'scaleFactor',
autoLaunchLabel: 'autoLaunch',
finaleModeLabel: 'finaleMode',
hideControlsLabel: 'hideControls',
fullscreenLabel: 'fullscreen',
longExposureLabel: 'longExposure'
};


// Render app UI / keep in sync with state
const appNodes = {
stageContainer: '.stage-container',
canvasContainer: '.canvas-container',
controls: '.controls',
menu: '.menu',
menuInnerWrap: '.menu__inner-wrap',
pauseBtn: '.pause-btn',
pauseBtnSVG: '.pause-btn use',
soundBtn: '.sound-btn',
soundBtnSVG: '.sound-btn use',
shellType: '.shell-type',
shellTypeLabel: '.shell-type-label',
shellSize: '.shell-size',
shellSizeLabel: '.shell-size-label',
quality: '.quality-ui',
qualityLabel: '.quality-ui-label',
skyLighting: '.sky-lighting',
skyLightingLabel: '.sky-lighting-label',
scaleFactor: '.scaleFactor',
scaleFactorLabel: '.scaleFactor-label',
autoLaunch: '.auto-launch',
autoLaunchLabel: '.auto-launch-label',
finaleModeFormOption: '.form-option--finale-mode',
finaleMode: '.finale-mode',
finaleModeLabel: '.finale-mode-label',
hideControls: '.hide-controls',
hideControlsLabel: '.hide-controls-label',
fullscreenFormOption: '.form-option--fullscreen',
fullscreen: '.fullscreen',
fullscreenLabel: '.fullscreen-label',
longExposure: '.long-exposure',
longExposureLabel: '.long-exposure-label',

// Help UI
helpModal: '.help-modal',
helpModalOverlay: '.help-modal__overlay',
helpModalHeader: '.help-modal__header',
helpModalBody: '.help-modal__body',
helpModalCloseBtn: '.help-modal__close-btn'
};

// Convert appNodes selectors to dom nodes
Object.keys(appNodes).forEach(key => {
appNodes[key] = document.querySelector(appNodes[key]);
});

// Remove fullscreen control if not supported.
if (!fullscreenEnabled()) {
appNodes.fullscreenFormOption.classList.add('remove');
}

// First render is called in init()
function renderApp(state) {
const pauseBtnIcon = `#icon-${state.paused ? 'play' : 'pause'}`;
const soundBtnIcon = `#icon-sound-${soundEnabledSelector() ? 'on' : 'off'}`;
appNodes.pauseBtnSVG.setAttribute('href', pauseBtnIcon);
appNodes.pauseBtnSVG.setAttribute('xlink:href', pauseBtnIcon);
appNodes.soundBtnSVG.setAttribute('href', soundBtnIcon);
appNodes.soundBtnSVG.setAttribute('xlink:href', soundBtnIcon);
appNodes.controls.classList.toggle('hide', state.menuOpen || state.config.hideControls);
appNodes.canvasContainer.classList.toggle('blur', state.menuOpen);
appNodes.menu.classList.toggle('hide', !state.menuOpen);
appNodes.finaleModeFormOption.style.opacity = state.config.autoLaunch ? 1 : 0.32;

appNodes.quality.value = state.config.quality;
appNodes.shellType.value = state.config.shell;
appNodes.shellSize.value = state.config.size;
appNodes.autoLaunch.checked = state.config.autoLaunch;
appNodes.finaleMode.checked = state.config.finale;
appNodes.skyLighting.value = state.config.skyLighting;
appNodes.hideControls.checked = state.config.hideControls;
appNodes.fullscreen.checked = state.fullscreen;
appNodes.longExposure.checked = state.config.longExposure;
appNodes.scaleFactor.value = state.config.scaleFactor.toFixed(2);

appNodes.menuInnerWrap.style.opacity = state.openHelpTopic ? 0.12 : 1;
appNodes.helpModal.classList.toggle('active', !!state.openHelpTopic);
if (state.openHelpTopic) {
const { header, body } = helpContent[state.openHelpTopic];
appNodes.helpModalHeader.textContent = header;
appNodes.helpModalBody.textContent = body;
}
}

store.subscribe(renderApp);

// Perform side effects on state changes
function handleStateChange(state, prevState) {
const canPlaySound = canPlaySoundSelector(state);
const canPlaySoundPrev = canPlaySoundSelector(prevState);

if (canPlaySound !== canPlaySoundPrev) {
if (canPlaySound) {
soundManager.resumeAll();
} else {
soundManager.pauseAll();
}
}
}

store.subscribe(handleStateChange);


function getConfigFromDOM() {
return {
quality: appNodes.quality.value,
shell: appNodes.shellType.value,
size: appNodes.shellSize.value,
autoLaunch: appNodes.autoLaunch.checked,
finale: appNodes.finaleMode.checked,
skyLighting: appNodes.skyLighting.value,
longExposure: appNodes.longExposure.checked,
hideControls: appNodes.hideControls.checked,
// Store value as number.
scaleFactor: parseFloat(appNodes.scaleFactor.value)
};
};

const updateConfigNoEvent = () => updateConfig();
appNodes.quality.addEventListener('input', updateConfigNoEvent);
appNodes.shellType.addEventListener('input', updateConfigNoEvent);
appNodes.shellSize.addEventListener('input', updateConfigNoEvent);
appNodes.autoLaunch.addEventListener('click', () => setTimeout(updateConfig, 0));
appNodes.finaleMode.addEventListener('click', () => setTimeout(updateConfig, 0));
appNodes.skyLighting.addEventListener('input', updateConfigNoEvent);
appNodes.longExposure.addEventListener('click', () => setTimeout(updateConfig, 0));
appNodes.hideControls.addEventListener('click', () => setTimeout(updateConfig, 0));
appNodes.fullscreen.addEventListener('click', () => setTimeout(toggleFullscreen, 0));
// Changing scaleFactor requires triggering resize handling code as well.
appNodes.scaleFactor.addEventListener('input', () => {
updateConfig();
handleResize();
});

Object.keys(nodeKeyToHelpKey).forEach(nodeKey => {
const helpKey = nodeKeyToHelpKey[nodeKey];
appNodes[nodeKey].addEventListener('click', () => {
store.setState({ openHelpTopic: helpKey });
});
});

appNodes.helpModalCloseBtn.addEventListener('click', () => {
store.setState({ openHelpTopic: null });
});

appNodes.helpModalOverlay.addEventListener('click', () => {
store.setState({ openHelpTopic: null });
});



// Constant derivations
const COLOR_NAMES = Object.keys(COLOR);
const COLOR_CODES = COLOR_NAMES.map(colorName => COLOR[colorName]);
// Invisible stars need an indentifier, even through they won't be rendered - physics still apply.
const COLOR_CODES_W_INVIS = [...COLOR_CODES, INVISIBLE];
// Map of color codes to their index in the array. Useful for quickly determining if a color has already been updated in a loop.
const COLOR_CODE_INDEXES = COLOR_CODES_W_INVIS.reduce((obj, code, i) => {
obj[code] = i;
return obj;
}, {});
// Tuples is a map keys by color codes (hex) with values of { r, g, b } tuples (still just objects).
const COLOR_TUPLES = {};
COLOR_CODES.forEach(hex => {
COLOR_TUPLES[hex] = {
r: parseInt(hex.substr(1, 2), 16),
g: parseInt(hex.substr(3, 2), 16),
b: parseInt(hex.substr(5, 2), 16),
};
});

// Get a random color.
function randomColorSimple() {
return COLOR_CODES[Math.random() * COLOR_CODES.length | 0];
}

// Get a random color, with some customization options available.
let lastColor;
function randomColor(options) {
const notSame = options && options.notSame;
const notColor = options && options.notColor;
const limitWhite = options && options.limitWhite;
let color = randomColorSimple();

// limit the amount of white chosen randomly
if (limitWhite && color === COLOR.White && Math.random() < 0.6) {
color = randomColorSimple();
}

if (notSame) {
while (color === lastColor) {
color = randomColorSimple();
}
}
else if (notColor) {
while (color === notColor) {
color = randomColorSimple();
}
}

lastColor = color;
return color;
}

function whiteOrGold() {
return Math.random() < 0.5 ? COLOR.Gold : COLOR.White;
}


// Shell helpers
function makePistilColor(shellColor) {
return (shellColor === COLOR.White || shellColor === COLOR.Gold) ? randomColor({ notColor: shellColor }) : whiteOrGold();
}

// Unique shell types
const crysanthemumShell = (size=1) => {
const glitter = Math.random() < 0.25;
const singleColor = Math.random() < 0.72;
const color = singleColor ? randomColor({ limitWhite: true }) : [randomColor(), randomColor({ notSame: true })];
const pistil = singleColor && Math.random() < 0.42;
const pistilColor = pistil && makePistilColor(color);
const secondColor = singleColor && (Math.random() < 0.2 || color === COLOR.White) ? pistilColor || randomColor({ notColor: color, limitWhite: true }) : null;
const streamers = !pistil && color !== COLOR.White && Math.random() < 0.42;
let starDensity = glitter ? 1.1 : 1.25;
if (isLowQuality) starDensity *= 0.8;
if (isHighQuality) starDensity = 1.2;
return {
shellSize: size,
spreadSize: 300 + size * 100,
starLife: 900 + size * 200,
starDensity,
color,
secondColor,
glitter: glitter ? 'light' : '',
glitterColor: whiteOrGold(),
pistil,
pistilColor,
streamers
};
};


const ghostShell = (size=1) => {
// Extend crysanthemum shell
const shell = crysanthemumShell(size);
// Ghost effect can be fast, so extend star life
shell.starLife *= 1.5;
// Ensure we always have a single color other than white
let ghostColor = randomColor({ notColor: COLOR.White });
// Always use streamers, and sometimes a pistil
shell.streamers = true;
const pistil = Math.random() < 0.42;
const pistilColor = pistil && makePistilColor(ghostColor);
// Ghost effect - transition from invisible to chosen color
shell.color = INVISIBLE;
shell.secondColor = ghostColor;
// We don't want glitter to be spewed by invisible stars, and we don't currently
// have a way to transition glitter state. So we'll disable it.
shell.glitter = '';

return shell;
};


const strobeShell = (size=1) => {
const color = randomColor({ limitWhite: true });
return {
shellSize: size,
spreadSize: 280 + size * 92,
starLife: 1100 + size * 200,
starLifeVariation: 0.40,
starDensity: 1.1,
color,
glitter: 'light',
glitterColor: COLOR.White,
strobe: true,
strobeColor: Math.random() < 0.5 ? COLOR.White : null,
pistil: Math.random() < 0.5,
pistilColor: makePistilColor(color)
};
};


const palmShell = (size=1) => {
const color = randomColor();
const thick = Math.random() < 0.5;
return {
shellSize: size,
color,
spreadSize: 250 + size * 75,
starDensity: thick ? 0.15 : 0.4,
starLife: 1800 + size * 200,
glitter: thick ? 'thick' : 'heavy'
};
};

const ringShell = (size=1) => {
const color = randomColor();
const pistil = Math.random() < 0.75;
return {
shellSize: size,
ring: true,
color,
spreadSize: 300 + size * 100,
starLife: 900 + size * 200,
starCount: 2.2 * PI_2 * (size+1),
pistil,
pistilColor: makePistilColor(color),
glitter: !pistil ? 'light' : '',
glitterColor: color === COLOR.Gold ? COLOR.Gold : COLOR.White,
streamers: Math.random() < 0.3
};
// return Object.assign({}, defaultShell, config);
};

const crossetteShell = (size=1) => {
const color = randomColor({ limitWhite: true });
return {
shellSize: size,
spreadSize: 300 + size * 100,
starLife: 750 + size * 160,
starLifeVariation: 0.4,
starDensity: 0.85,
color,
crossette: true,
pistil: Math.random() < 0.5,
pistilColor: makePistilColor(color)
};
};

const floralShell = (size=1) => ({
shellSize: size,
spreadSize: 300 + size * 120,
starDensity: 0.12,
starLife: 500 + size * 50,
starLifeVariation: 0.5,
color: Math.random() < 0.65 ? 'random' : (Math.random() < 0.15 ? randomColor() : [randomColor(), randomColor({ notSame: true })]),
floral: true
});

const fallingLeavesShell = (size=1) => ({
shellSize: size,
color: INVISIBLE,
spreadSize: 300 + size * 120,
starDensity: 0.12,
starLife: 500 + size * 50,
starLifeVariation: 0.5,
glitter: 'medium',
glitterColor: COLOR.Gold,
fallingLeaves: true
});

const willowShell = (size=1) => ({
shellSize: size,
spreadSize: 300 + size * 100,
starDensity: 0.6,
starLife: 3000 + size * 300,
glitter: 'willow',
glitterColor: COLOR.Gold,
color: INVISIBLE
});

const crackleShell = (size=1) => {
// favor gold
const color = Math.random() < 0.75 ? COLOR.Gold : randomColor();
return {
shellSize: size,
spreadSize: 380 + size * 75,
starDensity: isLowQuality ? 0.65 : 1,
starLife: 600 + size * 100,
starLifeVariation: 0.32,
glitter: 'light',
glitterColor: COLOR.Gold,
color,
crackle: true,
pistil: Math.random() < 0.65,
pistilColor: makePistilColor(color)
};
};

const horsetailShell = (size=1) => {
const color = randomColor();
return {
shellSize: size,
horsetail: true,
color,
spreadSize: 250 + size * 38,
starDensity: 0.9,
starLife: 2500 + size * 300,
glitter: 'medium',
glitterColor: Math.random() < 0.5 ? whiteOrGold() : color,
// Add strobe effect to white horsetails, to make them more interesting
strobe: color === COLOR.White
};
};

function randomShellName() {
return Math.random() < 0.5 ? 'Crysanthemum' : shellNames[(Math.random() * (shellNames.length - 1) + 1) | 0 ];
}

function randomShell(size) {
// Special selection for codepen header.
if (IS_HEADER) return randomFastShell()(size);
// Normal operation
return shellTypes[randomShellName()](size);
}

function shellFromConfig(size) {
return shellTypes[shellNameSelector()](size);
}

// Get a random shell, not including processing intensive varients
// Note this is only random when "Random" shell is selected in config.
// Also, this does not create the shell, only returns the factory function.
const fastShellBlacklist = ['Falling Leaves', 'Floral', 'Willow'];
function randomFastShell() {
const isRandom = shellNameSelector() === 'Random';
let shellName = isRandom ? randomShellName() : shellNameSelector();
if (isRandom) {
while (fastShellBlacklist.includes(shellName)) {
shellName = randomShellName();
}
}
return shellTypes[shellName];
}


const shellTypes = {
'Random': randomShell,
'Crackle': crackleShell,
'Crossette': crossetteShell,
'Crysanthemum': crysanthemumShell,
'Falling Leaves': fallingLeavesShell,
'Floral': floralShell,
'Ghost': ghostShell,
'Horse Tail': horsetailShell,
'Palm': palmShell,
'Ring': ringShell,
'Strobe': strobeShell,
'Willow': willowShell
};

const shellNames = Object.keys(shellTypes);

function init() {
// Remove loading state
document.querySelector('.loading-init').remove();
appNodes.stageContainer.classList.remove('remove');

// Populate dropdowns
function setOptionsForSelect(node, options) {
node.innerHTML = options.reduce((acc, opt) => acc += `<option value="${opt.value}">${opt.label}</option>`, '');
}

// shell type
let options = '';
shellNames.forEach(opt => options += `<option value="${opt}">${opt}</option>`);
appNodes.shellType.innerHTML = options;
// shell size
options = '';
['3"', '4"', '6"', '8"', '12"', '16"'].forEach((opt, i) => options += `<option value="${i}">${opt}</option>`);
appNodes.shellSize.innerHTML = options;

setOptionsForSelect(appNodes.quality, [
{ label: 'Low', value: QUALITY_LOW },
{ label: 'Normal', value: QUALITY_NORMAL },
{ label: 'High', value: QUALITY_HIGH }
]);

setOptionsForSelect(appNodes.skyLighting, [
{ label: 'None', value: SKY_LIGHT_NONE },
{ label: 'Dim', value: SKY_LIGHT_DIM },
{ label: 'Normal', value: SKY_LIGHT_NORMAL }
]);

// 0.9 is mobile default
setOptionsForSelect(
appNodes.scaleFactor,
[0.5, 0.62, 0.75, 0.9, 1.0, 1.5, 2.0]
.map(value => ({ value: value.toFixed(2), label: `${value*100}%` }))
);

// Begin simulation
togglePause(false);

// initial render
renderApp(store.state);

// Apply initial config
configDidUpdate();
}


function fitShellPositionInBoundsH(position) {
const edge = 0.18;
return (1 - edge*2) * position + edge;
}

function fitShellPositionInBoundsV(position) {
return position * 0.75;
}

function getRandomShellPositionH() {
return fitShellPositionInBoundsH(Math.random());
}

function getRandomShellPositionV() {
return fitShellPositionInBoundsV(Math.random());
}

function getRandomShellSize() {
const baseSize = shellSizeSelector();
const maxVariance = Math.min(2.5, baseSize);
const variance = Math.random() * maxVariance;
const size = baseSize - variance;
const height = maxVariance === 0 ? Math.random() : 1 - (variance / maxVariance);
const centerOffset = Math.random() * (1 - height * 0.65) * 0.5;
const x = Math.random() < 0.5 ? 0.5 - centerOffset : 0.5 + centerOffset;
return {
size,
x: fitShellPositionInBoundsH(x),
height: fitShellPositionInBoundsV(height)
};
}


// Launches a shell from a user pointer event, based on state.config
function launchShellFromConfig(event) {
const shell = new Shell(shellFromConfig(shellSizeSelector()));
const w = mainStage.width;
const h = mainStage.height;

shell.launch(
event ? event.x / w : getRandomShellPositionH(),
event ? 1 - event.y / h : getRandomShellPositionV()
);
}


// Sequences
// -----------

function seqRandomShell() {
const size = getRandomShellSize();
const shell = new Shell(shellFromConfig(size.size));
shell.launch(size.x, size.height);

let extraDelay = shell.starLife;
if (shell.fallingLeaves) {
extraDelay = 4600;
}

return 900 + Math.random() * 600 + extraDelay;
}

function seqRandomFastShell() {
const shellType = randomFastShell();
const size = getRandomShellSize();
const shell = new Shell(shellType(size.size));
shell.launch(size.x, size.height);

let extraDelay = shell.starLife;

return 900 + Math.random() * 600 + extraDelay;
}

function seqTwoRandom() {
const size1 = getRandomShellSize();
const size2 = getRandomShellSize();
const shell1 = new Shell(shellFromConfig(size1.size));
const shell2 = new Shell(shellFromConfig(size2.size));
const leftOffset = Math.random() * 0.2 - 0.1;
const rightOffset = Math.random() * 0.2 - 0.1;
shell1.launch(0.3 + leftOffset, size1.height);
setTimeout(() => {
shell2.launch(0.7 + rightOffset, size2.height);
}, 100);

let extraDelay = Math.max(shell1.starLife, shell2.starLife);
if (shell1.fallingLeaves || shell2.fallingLeaves) {
extraDelay = 4600;
}

return 900 + Math.random() * 600 + extraDelay;
}

function seqTriple() {
const shellType = randomFastShell();
const baseSize = shellSizeSelector();
const smallSize = Math.max(0, baseSize - 1.25);

const offset = Math.random() * 0.08 - 0.04;
const shell1 = new Shell(shellType(baseSize));
shell1.launch(0.5 + offset, 0.7);

const leftDelay = 1000 + Math.random() * 400;
const rightDelay = 1000 + Math.random() * 400;

setTimeout(() => {
const offset = Math.random() * 0.08 - 0.04;
const shell2 = new Shell(shellType(smallSize));
shell2.launch(0.2 + offset, 0.1);
}, leftDelay);

setTimeout(() => {
const offset = Math.random() * 0.08 - 0.04;
const shell3 = new Shell(shellType(smallSize));
shell3.launch(0.8 + offset, 0.1);
}, rightDelay);

return 4000;
}

function seqPyramid() {
const barrageCountHalf = IS_DESKTOP ? 7 : 4;
const largeSize = shellSizeSelector();
const smallSize = Math.max(0, largeSize - 3);
const randomMainShell = Math.random() < 0.78 ? crysanthemumShell : ringShell;
const randomSpecialShell = randomShell;

function launchShell(x, useSpecial) {
const isRandom = shellNameSelector() === 'Random';
let shellType = isRandom
? useSpecial ? randomSpecialShell : randomMainShell
: shellTypes[shellNameSelector()];
const shell = new Shell(shellType(useSpecial ? largeSize : smallSize));
const height = x <= 0.5 ? x / 0.5 : (1 - x) / 0.5;
shell.launch(x, useSpecial ? 0.75 : height * 0.42);
}

let count = 0;
let delay = 0;
while(count <= barrageCountHalf) {
if (count === barrageCountHalf) {
setTimeout(() => {
launchShell(0.5, true);
}, delay);
} else {
const offset = count / barrageCountHalf * 0.5;
const delayOffset = Math.random() * 30 + 30;
setTimeout(() => {
launchShell(offset, false);
}, delay);
setTimeout(() => {
launchShell(1 - offset, false);
}, delay + delayOffset);
}

count++;
delay += 200;
}

return 3400 + barrageCountHalf * 250;
}

function seqSmallBarrage() {
seqSmallBarrage.lastCalled = Date.now();
const barrageCount = IS_DESKTOP ? 11 : 5;
const specialIndex = IS_DESKTOP ? 3 : 1;
const shellSize = Math.max(0, shellSizeSelector() - 2);
const randomMainShell = Math.random() < 0.78 ? crysanthemumShell : ringShell;
const randomSpecialShell = randomFastShell();

// (cos(x*5π+0.5π)+1)/2 is a custom wave bounded by 0 and 1 used to set varying launch heights
function launchShell(x, useSpecial) {
const isRandom = shellNameSelector() === 'Random';
let shellType = isRandom
? useSpecial ? randomSpecialShell : randomMainShell
: shellTypes[shellNameSelector()];
const shell = new Shell(shellType(shellSize));
const height = (Math.cos(x*5*Math.PI + PI_HALF) + 1) / 2;
shell.launch(x, height * 0.75);
}

let count = 0;
let delay = 0;
while(count < barrageCount) {
if (count === 0) {
launchShell(0.5, false)
count += 1;
}
else {
const offset = (count + 1) / barrageCount / 2;
const delayOffset = Math.random() * 30 + 30;
const useSpecial = count === specialIndex;
setTimeout(() => {
launchShell(0.5 + offset, useSpecial);
}, delay);
setTimeout(() => {
launchShell(0.5 - offset, useSpecial);
}, delay + delayOffset);
count += 2;
}
delay += 200;
}

return 3400 + barrageCount * 120;
}
seqSmallBarrage.cooldown = 15000;
seqSmallBarrage.lastCalled = Date.now();


const sequences = [
seqRandomShell,
seqTwoRandom,
seqTriple,
seqPyramid,
seqSmallBarrage
];


let isFirstSeq = true;
const finaleCount = 32;
let currentFinaleCount = 0;
function startSequence() {
if (isFirstSeq) {
isFirstSeq = false;
if (IS_HEADER) {
return seqTwoRandom();
}
else {
const shell = new Shell(crysanthemumShell(shellSizeSelector()));
shell.launch(0.5, 0.5);
return 2400;
}
}

if (finaleSelector()) {
seqRandomFastShell();
if (currentFinaleCount < finaleCount) {
currentFinaleCount++;
return 170;
}
else {
currentFinaleCount = 0;
return 6000;
}
}

const rand = Math.random();

if (rand < 0.08 && Date.now() - seqSmallBarrage.lastCalled > seqSmallBarrage.cooldown) {
return seqSmallBarrage();
}

if (rand < 0.1) {
return seqPyramid();
}

if (rand < 0.6 && !IS_HEADER) {
return seqRandomShell();
}
else if (rand < 0.8) {
return seqTwoRandom();
}
else if (rand < 1) {
return seqTriple();
}
}


let activePointerCount = 0;
let isUpdatingSpeed = false;

function handlePointerStart(event) {
activePointerCount++;
const btnSize = 50;

if (event.y < btnSize) {
if (event.x < btnSize) {
togglePause();
return;
}
if (event.x > mainStage.width/2 - btnSize/2 && event.x < mainStage.width/2 + btnSize/2) {
toggleSound();
return;
}
if (event.x > mainStage.width - btnSize) {
toggleMenu();
return;
}
}

if (!isRunning()) return;

if (updateSpeedFromEvent(event)) {
isUpdatingSpeed = true;
}
else if (event.onCanvas) {
launchShellFromConfig(event);
}
}

function handlePointerEnd(event) {
activePointerCount--;
isUpdatingSpeed = false;
}

function handlePointerMove(event) {
if (!isRunning()) return;

if (isUpdatingSpeed) {
updateSpeedFromEvent(event);
}
}

function handleKeydown(event) {
// P
if (event.keyCode === 80) {
togglePause();
}
// O
else if (event.keyCode === 79) {
toggleMenu();
}
// Esc
else if (event.keyCode === 27) {
toggleMenu(false);
}
}

mainStage.addEventListener('pointerstart', handlePointerStart);
mainStage.addEventListener('pointerend', handlePointerEnd);
mainStage.addEventListener('pointermove', handlePointerMove);
window.addEventListener('keydown', handleKeydown);


// Account for window resize and custom scale changes.
function handleResize() {
const w = window.innerWidth;
const h = window.innerHeight;
// Try to adopt screen size, heeding maximum sizes specified
const containerW = Math.min(w, MAX_WIDTH);
// On small screens, use full device height
const containerH = w <= 420 ? h : Math.min(h, MAX_HEIGHT);
appNodes.stageContainer.style.width = containerW + 'px';
appNodes.stageContainer.style.height = containerH + 'px';
stages.forEach(stage => stage.resize(containerW, containerH));
// Account for scale
const scaleFactor = scaleFactorSelector();
stageW = containerW / scaleFactor;
stageH = containerH / scaleFactor;
}

// Compute initial dimensions
handleResize();

window.addEventListener('resize', handleResize);


// Dynamic globals
let currentFrame = 0;
let speedBarOpacity = 0;
let autoLaunchTime = 0;

function updateSpeedFromEvent(event) {
if (isUpdatingSpeed || event.y >= mainStage.height - 44) {
// On phones it's hard to hit the edge pixels in order to set speed at 0 or 1, so some padding is provided to make that easier.
const edge = 16;
const newSpeed = (event.x - edge) / (mainStage.width - edge * 2);
simSpeed = Math.min(Math.max(newSpeed, 0), 1);
// show speed bar after an update
speedBarOpacity = 1;
// If we updated the speed, return true
return true;
}
// Return false if the speed wasn't updated
return false;
}


// Extracted function to keep `update()` optimized
function updateGlobals(timeStep, lag) {
currentFrame++;

// Always try to fade out speed bar
if (!isUpdatingSpeed) {
speedBarOpacity -= lag / 30; // half a second
if (speedBarOpacity < 0) {
speedBarOpacity = 0;
}
}

// auto launch shells
if (store.state.config.autoLaunch) {
autoLaunchTime -= timeStep;
if (autoLaunchTime <= 0) {
autoLaunchTime = startSequence() * 1.25;
}
}
}


function update(frameTime, lag) {
if (!isRunning()) return;

const width = stageW;
const height = stageH;
const timeStep = frameTime * simSpeed;
const speed = simSpeed * lag;

updateGlobals(timeStep, lag);

const starDrag = 1 - (1 - Star.airDrag) * speed;
const starDragHeavy = 1 - (1 - Star.airDragHeavy) * speed;
const sparkDrag = 1 - (1 - Spark.airDrag) * speed;
const gAcc = timeStep / 1000 * GRAVITY;
COLOR_CODES_W_INVIS.forEach(color => {
// Stars
const stars = Star.active[color];
for (let i=stars.length-1; i>=0; i=i-1) {
const star = stars[i];
// Only update each star once per frame. Since color can change, it's possible a star could update twice without this, leading to a "jump".
if (star.updateFrame === currentFrame) {
continue;
}
star.updateFrame = currentFrame;

star.life -= timeStep;
if (star.life <= 0) {
stars.splice(i, 1);
Star.returnInstance(star);
} else {
const burnRate = Math.pow(star.life / star.fullLife, 0.5);
const burnRateInverse = 1 - burnRate;

star.prevX = star.x;
star.prevY = star.y;
star.x += star.speedX * speed;
star.y += star.speedY * speed;
// Apply air drag if star isn't "heavy". The heavy property is used for the shell comets.
if (!star.heavy) {
star.speedX *= starDrag;
star.speedY *= starDrag;
}
else {
star.speedX *= starDragHeavy;
star.speedY *= starDragHeavy;
}
star.speedY += gAcc;

if (star.spinRadius) {
star.spinAngle += star.spinSpeed * speed;
star.x += Math.sin(star.spinAngle) * star.spinRadius * speed;
star.y += Math.cos(star.spinAngle) * star.spinRadius * speed;
}

if (star.sparkFreq) {
star.sparkTimer -= timeStep;
while (star.sparkTimer < 0) {
star.sparkTimer += star.sparkFreq * 0.75 + star.sparkFreq * burnRateInverse * 4;
Spark.add(
star.x,
star.y,
star.sparkColor,
Math.random() * PI_2,
Math.random() * star.sparkSpeed * burnRate,
star.sparkLife * 0.8 + Math.random() * star.sparkLifeVariation * star.sparkLife
);
}
}

// Handle star transitions
if (star.life < star.transitionTime) {
if (star.secondColor && !star.colorChanged) {
star.colorChanged = true;
star.color = star.secondColor;
stars.splice(i, 1);
Star.active[star.secondColor].push(star);
if (star.secondColor === INVISIBLE) {
star.sparkFreq = 0;
}
}

if (star.strobe) {
// Strobes in the following pattern: on:off:off:on:off:off in increments of `strobeFreq` ms.
star.visible = Math.floor(star.life / star.strobeFreq) % 3 === 0;
}
}
}
}

// Sparks
const sparks = Spark.active[color];
for (let i=sparks.length-1; i>=0; i=i-1) {
const spark = sparks[i];
spark.life -= timeStep;
if (spark.life <= 0) {
sparks.splice(i, 1);
Spark.returnInstance(spark);
} else {
spark.prevX = spark.x;
spark.prevY = spark.y;
spark.x += spark.speedX * speed;
spark.y += spark.speedY * speed;
spark.speedX *= sparkDrag;
spark.speedY *= sparkDrag;
spark.speedY += gAcc;
}
}
});

render(speed);
}

function render(speed) {
const { dpr } = mainStage;
const width = stageW;
const height = stageH;
const trailsCtx = trailsStage.ctx;
const mainCtx = mainStage.ctx;

if (skyLightingSelector() !== SKY_LIGHT_NONE) {
colorSky(speed);
}

// Account for high DPI screens, and custom scale factor.
const scaleFactor = scaleFactorSelector();
trailsCtx.scale(dpr * scaleFactor, dpr * scaleFactor);
mainCtx.scale(dpr * scaleFactor, dpr * scaleFactor);

trailsCtx.globalCompositeOperation = 'source-over';
trailsCtx.fillStyle = `rgba(0, 0, 0, ${store.state.config.longExposure ? 0.0025 : 0.175 * speed})`;
trailsCtx.fillRect(0, 0, width, height);

mainCtx.clearRect(0, 0, width, height);

// Draw queued burst flashes
// These must also be drawn using source-over due to Safari. Seems rendering the gradients using lighten draws large black boxes instead.
// Thankfully, these burst flashes look pretty much the same either way.
while (BurstFlash.active.length) {
const bf = BurstFlash.active.pop();

const burstGradient = trailsCtx.createRadialGradient(bf.x, bf.y, 0, bf.x, bf.y, bf.radius);
burstGradient.addColorStop(0.024, 'rgba(255, 255, 255, 1)');
burstGradient.addColorStop(0.125, 'rgba(255, 160, 20, 0.2)');
burstGradient.addColorStop(0.32, 'rgba(255, 140, 20, 0.11)');
burstGradient.addColorStop(1, 'rgba(255, 120, 20, 0)');
trailsCtx.fillStyle = burstGradient;
trailsCtx.fillRect(bf.x - bf.radius, bf.y - bf.radius, bf.radius * 2, bf.radius * 2);

BurstFlash.returnInstance(bf);
}

// Remaining drawing on trails canvas will use 'lighten' blend mode
trailsCtx.globalCompositeOperation = 'lighten';

// Draw stars
trailsCtx.lineWidth = Star.drawWidth;
trailsCtx.lineCap = isLowQuality ? 'square' : 'round';
mainCtx.strokeStyle = '#fff';
mainCtx.lineWidth = 1;
mainCtx.beginPath();
COLOR_CODES.forEach(color => {
const stars = Star.active[color];
trailsCtx.strokeStyle = color;
trailsCtx.beginPath();
stars.forEach(star => {
if (star.visible) {
trailsCtx.moveTo(star.x, star.y);
trailsCtx.lineTo(star.prevX, star.prevY);
mainCtx.moveTo(star.x, star.y);
mainCtx.lineTo(star.x - star.speedX * 1.6, star.y - star.speedY * 1.6);
}
});
trailsCtx.stroke();
});
mainCtx.stroke();

// Draw sparks
trailsCtx.lineWidth = Spark.drawWidth;
trailsCtx.lineCap = 'butt';
COLOR_CODES.forEach(color => {
const sparks = Spark.active[color];
trailsCtx.strokeStyle = color;
trailsCtx.beginPath();
sparks.forEach(spark => {
trailsCtx.moveTo(spark.x, spark.y);
trailsCtx.lineTo(spark.prevX, spark.prevY);
});
trailsCtx.stroke();
});


// Render speed bar if visible
if (speedBarOpacity) {
const speedBarHeight = 6;
mainCtx.globalAlpha = speedBarOpacity;
mainCtx.fillStyle = COLOR.Blue;
mainCtx.fillRect(0, height - speedBarHeight, width * simSpeed, speedBarHeight);
mainCtx.globalAlpha = 1;
}


trailsCtx.setTransform(1, 0, 0, 1, 0, 0);
mainCtx.setTransform(1, 0, 0, 1, 0, 0);
}


// Draw colored overlay based on combined brightness of stars (light up the sky!)
// Note: this is applied to the canvas container's background-color, so it's behind the particles
const currentSkyColor = { r: 0, g: 0, b: 0 };
const targetSkyColor = { r: 0, g: 0, b: 0 };
function colorSky(speed) {
// The maximum r, g, or b value that will be used (255 would represent no maximum)
const maxSkySaturation = skyLightingSelector() * 15;
// How many stars are required in total to reach maximum sky brightness
const maxStarCount = 500;
let totalStarCount = 0;
// Initialize sky as black
targetSkyColor.r = 0;
targetSkyColor.g = 0;
targetSkyColor.b = 0;
// Add each known color to sky, multiplied by particle count of that color. This will put RGB values wildly out of bounds, but we'll scale them back later.
// Also add up total star count.
COLOR_CODES.forEach(color => {
const tuple = COLOR_TUPLES[color];
const count =  Star.active[color].length;
totalStarCount += count;
targetSkyColor.r += tuple.r * count;
targetSkyColor.g += tuple.g * count;
targetSkyColor.b += tuple.b * count;
});

// Clamp intensity at 1.0, and map to a custom non-linear curve. This allows few stars to perceivably light up the sky, while more stars continue to increase the brightness but at a lesser rate. This is more inline with humans' non-linear brightness perception.
const intensity = Math.pow(Math.min(1, totalStarCount / maxStarCount), 0.3);
// Figure out which color component has the highest value, so we can scale them without affecting the ratios.
// Prevent 0 from being used, so we don't divide by zero in the next step.
const maxColorComponent = Math.max(1, targetSkyColor.r, targetSkyColor.g, targetSkyColor.b);
// Scale all color components to a max of `maxSkySaturation`, and apply intensity.
targetSkyColor.r = targetSkyColor.r / maxColorComponent * maxSkySaturation * intensity;
targetSkyColor.g = targetSkyColor.g / maxColorComponent * maxSkySaturation * intensity;
targetSkyColor.b = targetSkyColor.b / maxColorComponent * maxSkySaturation * intensity;

// Animate changes to color to smooth out transitions.
const colorChange = 10;
currentSkyColor.r += (targetSkyColor.r - currentSkyColor.r) / colorChange * speed;
currentSkyColor.g += (targetSkyColor.g - currentSkyColor.g) / colorChange * speed;
currentSkyColor.b += (targetSkyColor.b - currentSkyColor.b) / colorChange * speed;

appNodes.canvasContainer.style.backgroundColor = `rgb(${currentSkyColor.r | 0}, ${currentSkyColor.g | 0}, ${currentSkyColor.b | 0})`;
}

mainStage.addEventListener('ticker', update);


// Helper used to semi-randomly spread particles over an arc
// Values are flexible - `start` and `arcLength` can be negative, and `randomness` is simply a multiplier for random addition.
function createParticleArc(start, arcLength, count, randomness, particleFactory) {
const angleDelta = arcLength / count;
// Sometimes there is an extra particle at the end, too close to the start. Subtracting half the angleDelta ensures that is skipped.
// Would be nice to fix this a better way.
const end = start + arcLength - (angleDelta * 0.5);

if (end > start) {
// Optimization: `angle=angle+angleDelta` vs. angle+=angleDelta
// V8 deoptimises with let compound assignment
for (let angle=start; angle<end; angle=angle+angleDelta) {
particleFactory(angle + Math.random() * angleDelta * randomness);
}
} else {
for (let angle=start; angle>end; angle=angle+angleDelta) {
particleFactory(angle + Math.random() * angleDelta * randomness);
}
}
}


/**
* Helper used to create a spherical burst of particles.
*
* @param  {Number} count               The desired number of stars/particles. This value is a suggestion, and the
*                                      created burst may have more particles. The current algorithm can't perfectly
*                                      distribute a specific number of points evenly on a sphere's surface.
* @param  {Function} particleFactory   Called once per star/particle generated. Passed two arguments:
*                                        `angle`: The direction of the star/particle.
*                                        `speed`: A multipler for the particle speed, from 0.0 to 1.0.
* @param  {Number} startAngle=0        For segmented bursts, you can generate only a partial arc of particles. This
*                                      allows setting the starting arc angle (radians).
* @param  {Number} arcLength=TAU       The length of the arc (radians). Defaults to a full circle.
*
* @return {void}              Returns nothing; it's up to `particleFactory` to use the given data.
*/
function createBurst(count, particleFactory, startAngle=0, arcLength=PI_2) {
// Assuming sphere with surface area of `count`, calculate various
// properties of said sphere (unit is stars).
// Radius
const R = 0.5 * Math.sqrt(count/Math.PI);
// Circumference
const C = 2 * R * Math.PI;
// Half Circumference
const C_HALF = C / 2;

// Make a series of rings, sizing them as if they were spaced evenly
// along the curved surface of a sphere.
for (let i=0; i<=C_HALF; i++) {
const ringAngle = i / C_HALF * PI_HALF;
const ringSize = Math.cos(ringAngle);
const partsPerFullRing = C * ringSize;
const partsPerArc = partsPerFullRing * (arcLength / PI_2);

const angleInc = PI_2 / partsPerFullRing;
const angleOffset = Math.random() * angleInc + startAngle;
// Each particle needs a bit of randomness to improve appearance.
const maxRandomAngleOffset = angleInc * 0.33;

for (let i=0; i<partsPerArc; i++) {
const randomAngleOffset = Math.random() * maxRandomAngleOffset;
let angle = angleInc * i + angleOffset + randomAngleOffset;
particleFactory(angle, ringSize);
}
}
}




// Various star effects.
// These are designed to be attached to a star's `onDeath` event.

// Crossette breaks star into four same-color pieces which branch in a cross-like shape.
function crossetteEffect(star) {
const startAngle = Math.random() * PI_HALF;
createParticleArc(startAngle, PI_2, 4, 0.5, (angle) => {
Star.add(
star.x,
star.y,
star.color,
angle,
Math.random() * 0.6 + 0.75,
600
);
});
}

// Flower is like a mini shell
function floralEffect(star) {
const count = 12 + 6 * quality;
createBurst(count, (angle, speedMult) => {
Star.add(
star.x,
star.y,
star.color,
angle,
speedMult * 2.4,
1000 + Math.random() * 300,
star.speedX,
star.speedY
);
});
// Queue burst flash render
BurstFlash.add(star.x, star.y, 46);
soundManager.playSound('burstSmall');
}

// Floral burst with willow stars
function fallingLeavesEffect(star) {
createBurst(7, (angle, speedMult) => {
const newStar = Star.add(
star.x,
star.y,
INVISIBLE,
angle,
speedMult * 2.4,
2400 + Math.random() * 600,
star.speedX,
star.speedY
);

newStar.sparkColor = COLOR.Gold;
newStar.sparkFreq = 144 / quality;
newStar.sparkSpeed = 0.28;
newStar.sparkLife = 750;
newStar.sparkLifeVariation = 3.2;
});
// Queue burst flash render
BurstFlash.add(star.x, star.y, 46);
soundManager.playSound('burstSmall');
}

// Crackle pops into a small cloud of golden sparks.
function crackleEffect(star) {
const count = isHighQuality ? 32 : 16;
createParticleArc(0, PI_2, count, 1.8, (angle) => {
Spark.add(
star.x,
star.y,
COLOR.Gold,
angle,
// apply near cubic falloff to speed (places more particles towards outside)
Math.pow(Math.random(), 0.45) * 2.4,
300 + Math.random() * 200
);
});
}



/**
* Shell can be constructed with options:
*
* spreadSize:      Size of the burst.
* starCount: Number of stars to create. This is optional, and will be set to a reasonable quantity for size if omitted.
* starLife:
* starLifeVariation:
* color:
* glitterColor:
* glitter: One of: 'light', 'medium', 'heavy', 'streamer', 'willow'
* pistil:
* pistilColor:
* streamers:
* crossette:
* floral:
* crackle:
*/
class Shell {
constructor(options) {
Object.assign(this, options);
this.starLifeVariation = options.starLifeVariation || 0.125;
this.color = options.color || randomColor();
this.glitterColor = options.glitterColor || this.color;

// Set default starCount if needed, will be based on shell size and scale exponentially, like a sphere's surface area.
if (!this.starCount) {
const density = options.starDensity || 1;
const scaledSize = this.spreadSize / 54;
this.starCount = Math.max(6, scaledSize * scaledSize * density);
}
}

launch(position, launchHeight) {
const width = stageW;
const height = stageH;
// Distance from sides of screen to keep shells.
const hpad = 60;
// Distance from top of screen to keep shell bursts.
const vpad = 50;
// Minimum burst height, as a percentage of stage height
const minHeightPercent = 0.45;
// Minimum burst height in px
const minHeight = height - height * minHeightPercent;

const launchX = position * (width - hpad * 2) + hpad;
const launchY = height;
const burstY = minHeight - (launchHeight * (minHeight - vpad));

const launchDistance = launchY - burstY;
// Using a custom power curve to approximate Vi needed to reach launchDistance under gravity and air drag.
// Magic numbers came from testing.
const launchVelocity = Math.pow(launchDistance * 0.04, 0.64);

const comet = this.comet = Star.add(
launchX,
launchY,
typeof this.color === 'string' && this.color !== 'random' ? this.color : COLOR.White,
Math.PI,
launchVelocity * (this.horsetail ? 1.2 : 1),
// Hang time is derived linearly from Vi; exact number came from testing
launchVelocity * (this.horsetail ? 100 : 400)
);

// making comet "heavy" limits air drag
comet.heavy = true;
// comet spark trail
comet.spinRadius = MyMath.random(0.32, 0.85);
comet.sparkFreq = 32 / quality;
if (isHighQuality) comet.sparkFreq = 8;
comet.sparkLife = 320;
comet.sparkLifeVariation = 3;
if (this.glitter === 'willow' || this.fallingLeaves) {
comet.sparkFreq = 20 / quality;
comet.sparkSpeed = 0.5;
comet.sparkLife = 500;
}
if (this.color === INVISIBLE) {
comet.sparkColor = COLOR.Gold;
}

// Randomly make comet "burn out" a bit early.
// This is disabled for horsetail shells, due to their very short airtime.
if (Math.random() > 0.4 && !this.horsetail) {
comet.secondColor = INVISIBLE;
comet.transitionTime = Math.pow(Math.random(), 1.5) * 700 + 500;
}

comet.onDeath = comet => this.burst(comet.x, comet.y);

soundManager.playSound('lift');
}

burst(x, y) {
// Set burst speed so overall burst grows to set size. This specific formula was derived from testing, and is affected by simulated air drag.
const speed = this.spreadSize / 96;

let color, onDeath, sparkFreq, sparkSpeed, sparkLife;
let sparkLifeVariation = 0.25;
// Some death effects, like crackle, play a sound, but should only be played once.
let playedDeathSound = false;

if (this.crossette) onDeath = (star) => {
if (!playedDeathSound) {
soundManager.playSound('crackleSmall');
playedDeathSound = true;
}
crossetteEffect(star);
}
if (this.crackle) onDeath = (star) => {
if (!playedDeathSound) {
soundManager.playSound('crackle');
playedDeathSound = true;
}
crackleEffect(star);
}
if (this.floral) onDeath = floralEffect;
if (this.fallingLeaves) onDeath = fallingLeavesEffect;

if (this.glitter === 'light') {
sparkFreq = 400;
sparkSpeed = 0.3;
sparkLife = 300;
sparkLifeVariation = 2;
}
else if (this.glitter === 'medium') {
sparkFreq = 200;
sparkSpeed = 0.44;
sparkLife = 700;
sparkLifeVariation = 2;
}
else if (this.glitter === 'heavy') {
sparkFreq = 80;
sparkSpeed = 0.8;
sparkLife = 1400;
sparkLifeVariation = 2;
}
else if (this.glitter === 'thick') {
sparkFreq = 16;
sparkSpeed = isHighQuality ? 1.65 : 1.5;
sparkLife = 1400;
sparkLifeVariation = 3;
}
else if (this.glitter === 'streamer') {
sparkFreq = 32;
sparkSpeed = 1.05;
sparkLife = 620;
sparkLifeVariation = 2;
}
else if (this.glitter === 'willow') {
sparkFreq = 120;
sparkSpeed = 0.34;
sparkLife = 1400;
sparkLifeVariation = 3.8;
}

// Apply quality to spark count
sparkFreq = sparkFreq / quality;

// Star factory for primary burst, pistils, and streamers.
let firstStar = true;
const starFactory = (angle, speedMult) => {
// For non-horsetail shells, compute an initial vertical speed to add to star burst.
// The magic number comes from testing what looks best. The ideal is that all shell
// bursts appear visually centered for the majority of the star life (excl. willows etc.)
const standardInitialSpeed = this.spreadSize / 1800;

const star = Star.add(
x,
y,
color || randomColor(),
angle,
speedMult * speed,
// add minor variation to star life
this.starLife + Math.random() * this.starLife * this.starLifeVariation,
this.horsetail ? this.comet && this.comet.speedX : 0,
this.horsetail ? this.comet && this.comet.speedY : -standardInitialSpeed
);

if (this.secondColor) {
star.transitionTime = this.starLife * (Math.random() * 0.05 + 0.32);
star.secondColor = this.secondColor;
}

if (this.strobe) {
star.transitionTime = this.starLife * (Math.random() * 0.08 + 0.46);
star.strobe = true;
// How many milliseconds between switch of strobe state "tick". Note that the strobe pattern
// is on:off:off, so this is the "on" duration, while the "off" duration is twice as long.
star.strobeFreq = Math.random() * 20 + 40;
if (this.strobeColor) {
star.secondColor = this.strobeColor;
}
}

star.onDeath = onDeath;

if (this.glitter) {
star.sparkFreq = sparkFreq;
star.sparkSpeed = sparkSpeed;
star.sparkLife = sparkLife;
star.sparkLifeVariation = sparkLifeVariation;
star.sparkColor = this.glitterColor;
star.sparkTimer = Math.random() * star.sparkFreq;
}
};


if (typeof this.color === 'string') {
if (this.color === 'random') {
color = null; // falsey value creates random color in starFactory
} else {
color = this.color;
}

// Rings have positional randomness, but are rotated randomly
if (this.ring) {
const ringStartAngle = Math.random() * Math.PI;
const ringSquash = Math.pow(Math.random(), 2) * 0.85 + 0.15;;

createParticleArc(0, PI_2, this.starCount, 0, angle => {
// Create a ring, squashed horizontally
const initSpeedX = Math.sin(angle) * speed * ringSquash;
const initSpeedY = Math.cos(angle) * speed;
// Rotate ring
const newSpeed = MyMath.pointDist(0, 0, initSpeedX, initSpeedY);
const newAngle = MyMath.pointAngle(0, 0, initSpeedX, initSpeedY) + ringStartAngle;
const star = Star.add(
x,
y,
color,
newAngle,
// apply near cubic falloff to speed (places more particles towards outside)
newSpeed,//speed,
// add minor variation to star life
this.starLife + Math.random() * this.starLife * this.starLifeVariation
);

if (this.glitter) {
star.sparkFreq = sparkFreq;
star.sparkSpeed = sparkSpeed;
star.sparkLife = sparkLife;
star.sparkLifeVariation = sparkLifeVariation;
star.sparkColor = this.glitterColor;
star.sparkTimer = Math.random() * star.sparkFreq;
}
});
}
// Normal burst
else {
createBurst(this.starCount, starFactory);
}
}
else if (Array.isArray(this.color)) {
if (Math.random() < 0.5) {
const start = Math.random() * Math.PI;
const start2 = start + Math.PI;
const arc = Math.PI;
color = this.color[0];
// Not creating a full arc automatically reduces star count.
createBurst(this.starCount, starFactory, start, arc);
color = this.color[1];
createBurst(this.starCount, starFactory, start2, arc);
} else {
color = this.color[0];
createBurst(this.starCount / 2, starFactory);
color = this.color[1];
createBurst(this.starCount / 2, starFactory);
}
}
else {
throw new Error('Invalid shell color. Expected string or array of strings, but got: ' + this.color);
}

if (this.pistil) {
const innerShell = new Shell({
spreadSize: this.spreadSize * 0.5,
starLife: this.starLife * 0.6,
starLifeVariation: this.starLifeVariation,
starDensity: 1.4,
color: this.pistilColor,
glitter: 'light',
glitterColor: this.pistilColor === COLOR.Gold ? COLOR.Gold : COLOR.White
});
innerShell.burst(x, y);
}

if (this.streamers) {
const innerShell = new Shell({
spreadSize: this.spreadSize * 0.9,
starLife: this.starLife * 0.8,
starLifeVariation: this.starLifeVariation,
starCount: Math.floor(Math.max(6, this.spreadSize / 45)),
color: COLOR.White,
glitter: 'streamer'
});
innerShell.burst(x, y);
}

// Queue burst flash render
BurstFlash.add(x, y, this.spreadSize / 4);

// Play sound, but only for "original" shell, the one that was launched.
// We don't want multiple sounds from pistil or streamer "sub-shells".
// This can be detected by the presence of a comet.
if (this.comet) {
// Scale explosion sound based on current shell size and selected (max) shell size.
// Shooting selected shell size will always sound the same no matter the selected size,
// but when smaller shells are auto-fired, they will sound smaller. It doesn't sound great
// when a value too small is given though, so instead of basing it on proportions, we just
// look at the difference in size and map it to a range known to sound good.
const maxDiff = 2;
const sizeDifferenceFromMaxSize = Math.min(maxDiff, shellSizeSelector() - this.shellSize);
const soundScale = (1 - sizeDifferenceFromMaxSize / maxDiff) * 0.3 + 0.7;
soundManager.playSound('burst', soundScale);
}
}
}



const BurstFlash = {
active: [],
_pool: [],

_new() {
return {}
},

add(x, y, radius) {
const instance = this._pool.pop() || this._new();

instance.x = x;
instance.y = y;
instance.radius = radius;

this.active.push(instance);
return instance;
},

returnInstance(instance) {
this._pool.push(instance);
}
};



// Helper to generate objects for storing active particles.
// Particles are stored in arrays keyed by color (code, not name) for improved rendering performance.
function createParticleCollection() {
const collection = {};
COLOR_CODES_W_INVIS.forEach(color => {
collection[color] = [];
});
return collection;
}


// Star properties (WIP)
// -----------------------
// transitionTime - how close to end of life that star transition happens

const Star = {
// Visual properties
drawWidth: 3,
airDrag: 0.98,
airDragHeavy: 0.992,

// Star particles will be keyed by color
active: createParticleCollection(),
_pool: [],

_new() {
return {};
},

add(x, y, color, angle, speed, life, speedOffX, speedOffY) {
const instance = this._pool.pop() || this._new();

instance.visible = true;
instance.heavy = false;
instance.x = x;
instance.y = y;
instance.prevX = x;
instance.prevY = y;
instance.color = color;
instance.speedX = Math.sin(angle) * speed + (speedOffX || 0);
instance.speedY = Math.cos(angle) * speed + (speedOffY || 0);
instance.life = life;
instance.fullLife = life;
instance.spinAngle = Math.random() * PI_2;
instance.spinSpeed = 0.8;
instance.spinRadius = 0;
instance.sparkFreq = 0; // ms between spark emissions
instance.sparkSpeed = 1;
instance.sparkTimer = 0;
instance.sparkColor = color;
instance.sparkLife = 750;
instance.sparkLifeVariation = 0.25;
instance.strobe = false;

this.active[color].push(instance);
return instance;
},

// Public method for cleaning up and returning an instance back to the pool.
returnInstance(instance) {
// Call onDeath handler if available (and pass it current star instance)
instance.onDeath && instance.onDeath(instance);
// Clean up
instance.onDeath = null;
instance.secondColor = null;
instance.transitionTime = 0;
instance.colorChanged = false;
// Add back to the pool.
this._pool.push(instance);
}
};


const Spark = {
// Visual properties
drawWidth: 0, // set in `configDidUpdate()`
airDrag: 0.9,

// Star particles will be keyed by color
active: createParticleCollection(),
_pool: [],

_new() {
return {};
},

add(x, y, color, angle, speed, life) {
const instance = this._pool.pop() || this._new();

instance.x = x;
instance.y = y;
instance.prevX = x;
instance.prevY = y;
instance.color = color;
instance.speedX = Math.sin(angle) * speed;
instance.speedY = Math.cos(angle) * speed;
instance.life = life;

this.active[color].push(instance);
return instance;
},

// Public method for cleaning up and returning an instance back to the pool.
returnInstance(instance) {
// Add back to the pool.
this._pool.push(instance);
}
};



const soundManager = {
baseURL: 'https://s3-us-west-2.amazonaws.com/s.cdpn.io/329180/',
ctx: new (window.AudioContext || window.webkitAudioContext),
sources: {
lift: {
volume: 1,
playbackRateMin: 0.85,
playbackRateMax: 0.95,
fileNames: [
'lift1.mp3',
'lift2.mp3',
'lift3.mp3'
]
},
burst: {
volume: 1,
playbackRateMin: 0.8,
playbackRateMax: 0.9,
fileNames: [
'burst1.mp3',
'burst2.mp3'
]
},
burstSmall: {
volume: 0.25,
playbackRateMin: 0.8,
playbackRateMax: 1,
fileNames: [
'burst-sm-1.mp3',
'burst-sm-2.mp3'
]
},
crackle: {
volume: 0.2,
playbackRateMin: 1,
playbackRateMax: 1,
fileNames: ['crackle1.mp3']
},
crackleSmall: {
volume: 0.3,
playbackRateMin: 1,
playbackRateMax: 1,
fileNames: ['crackle-sm-1.mp3']
}
},

preload() {
const allFilePromises = [];

function checkStatus(response) {
if (response.status >= 200 && response.status < 300) {
return response;
}
const customError = new Error(response.statusText);
customError.response = response;
throw customError;
}

const types = Object.keys(this.sources);
types.forEach(type => {
const source = this.sources[type];
const { fileNames } = source;
const filePromises = [];
fileNames.forEach(fileName => {
const fileURL = this.baseURL + fileName;
// Promise will resolve with decoded audio buffer.
const promise = fetch(fileURL)
.then(checkStatus)
.then(response => response.arrayBuffer())
.then(data => new Promise(resolve => {
this.ctx.decodeAudioData(data, resolve);
}));

filePromises.push(promise);
allFilePromises.push(promise);
});

Promise.all(filePromises)
.then(buffers => {
source.buffers = buffers;
});
});

return Promise.all(allFilePromises);
},

pauseAll() {
this.ctx.suspend();
},

resumeAll() {
// Play a sound with no volume for iOS. This 'unlocks' the audio context when the user first enables sound.
this.playSound('lift', 0);
// Chrome mobile requires interaction before starting audio context.
// The sound toggle button is triggered on 'touchstart', which doesn't seem to count as a full
// interaction to Chrome. I guess it needs a click? At any rate if the first thing the user does
// is enable audio, it doesn't work. Using a setTimeout allows the first interaction to be registered.
// Perhaps a better solution is to track whether the user has interacted, and if not but they try enabling
// sound, show a tooltip that they should tap again to enable sound.
setTimeout(() => {
this.ctx.resume();
}, 250);
},

// Private property used to throttle small burst sounds.
_lastSmallBurstTime: 0,

/**
* Play a sound of `type`. Will randomly pick a file associated with type, and play it at the specified volume
* and play speed, with a bit of random variance in play speed. This is all based on `sources` config.
*
* @param  {string} type - The type of sound to play.
* @param  {?number} scale=1 - Value between 0 and 1 (values outside range will be clamped). Scales less than one
*                             descrease volume and increase playback speed. This is because large explosions are
*                             louder, deeper, and reverberate longer than small explosions.
*                             Note that a scale of 0 will mute the sound.
*/
playSound(type, scale=1) {
// Ensure `scale` is within valid range.
scale = MyMath.clamp(scale, 0, 1);

// Disallow starting new sounds if sound is disabled, app is running in slow motion, or paused.
// Slow motion check has some wiggle room in case user doesn't finish dragging the speed bar
// *all* the way back.
if (!canPlaySoundSelector() || simSpeed < 0.95) {
return;
}

// Throttle small bursts, since floral/falling leaves shells have a lot of them.
if (type === 'burstSmall') {
const now = Date.now();
if (now - this._lastSmallBurstTime < 20) {
return;
}
this._lastSmallBurstTime = now;
}

const source = this.sources[type];

if (!source) {
throw new Error(`Sound of type "${type}" doesn't exist.`);
}

const initialVolume = source.volume;
const initialPlaybackRate = MyMath.random(
source.playbackRateMin,
source.playbackRateMax
);

// Volume descreases with scale.
const scaledVolume = initialVolume * scale;
// Playback rate increases with scale. For this, we map the scale of 0-1 to a scale of 2-1.
// So at a scale of 1, sound plays normally, but as scale approaches 0 speed approaches double.
const scaledPlaybackRate = initialPlaybackRate * (2 - scale);

const gainNode = this.ctx.createGain();
gainNode.gain.value = scaledVolume;

const buffer = MyMath.randomChoice(source.buffers);
const bufferSource = this.ctx.createBufferSource();
bufferSource.playbackRate.value = scaledPlaybackRate;
bufferSource.buffer = buffer;
bufferSource.connect(gainNode);
gainNode.connect(this.ctx.destination);
bufferSource.start(0);
}
};




// Kick things off.

function setLoadingStatus(status) {
document.querySelector('.loading-init__status').textContent = status;
}

// CodePen profile header doesn't need audio, just initialize.
if (IS_HEADER) {
init();
} else {
// Allow status to render, then preload assets and start app.
setLoadingStatus('Lighting Fuses');
setTimeout(() => {
soundManager.preload()
.then(
init,
reason => {
// Codepen preview doesn't like to load the audio, so just init to fix the preview for now.
init();
return Promise.reject(reason);
}
);
}, 0);
}
[endscript]
[_tb_end_tyrano_code]

[return  ]
[s  ]
