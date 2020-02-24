Personajes Dan, Anzu, Tyler, Saul, Roger, Ojo, Pupila, jugador1, jugador2;
Battle suelo, sol, cielo, cielo2;
Pantalla titulo, textama, texinst, rectrandom, nombreDan, nombreAnzu, nombreSaul, nombreRoger;
int pantalla;
int contador = 0;

void setup()
{
  size(900, 800);
  //head
 Dan = new Personajes (1);
 Anzu = new Personajes (2);
 Tyler = new Personajes (3);
 Saul = new Personajes (4);
Roger = new Personajes (5);
 Ojo = new Personajes (1);
 Pupila = new Personajes (7);
 suelo = new Battle(2);
 sol = new Battle(1);
 cielo = new Battle(3);
 cielo2 = new Battle(4);
 titulo = new Pantalla(1);
 textama = new Pantalla(1);
 texinst = new Pantalla(1);
 rectrandom = new Pantalla(1);
 nombreDan = new Pantalla(2);
 nombreAnzu = new Pantalla(2);
 nombreSaul = new Pantalla(2);
 nombreRoger = new Pantalla(2);
pantalla=1;

 
}
void draw()
{
cambiodepantalla (pantalla);
}
void cambiodepantalla(int pantalla){
  
  switch (pantalla)
  {
    case 1:
    background(#A20303);
    
    titulo.display();
    textama.display();
    texinst.display();
    rectrandom.display();
 

    break;
    
    case 2:
        background(#FB0505);
  Dan.display();
  Anzu.display();
  Tyler.display();
  Saul.display();
  Roger.display();
  Ojo.display();
  Pupila.display();
  break;
  
    case 3:
  background(#F17D09);
  sol.display();
  suelo.display();
  cielo.display();
  cielo2.display();
    
       
    break;
    
    case 4:
        background(255);

    break;
    
         
  }
}
void keyPressed()
{
  if (pantalla ==1)
  {
    if(key== ENTER)
    {
      pantalla++;
    }
  }
}
class Personajes
{
  float d1, d2, tamano, t1, altura;
float pd1, pd2, pa1, pa2, pt1, pt2, ps1, ps2, pr1, pr2;
float textselec;
float Sp1, Sp2;
float o1, o2;
float tamojo;
float Pu1, Pu2;
float Pupojo;
float Nd1, Nd2;
float nombreDan;
float Na1, Na2;
float nombreAnzu;
float Nt1, Nt2;
float nombreTyler;
float Ns1, Ns2;
float nombreSaul;
float Nr1, Nr2;
float nombreRoger;
int identificador;
Personajes(float d1_, float d2_, float pd1_, float pd2_, float pa1_, float pa2_, float t_, float pr1_, float pr2_){
  
  d1 = d1_;
  d2 = d2_;
  pd1 = pd1_;
  pd2 = pd2_;
  pa1 = pa1_;
  pa2 = pa2_;
  tamano = t_;
  pr1 = pr1_;
  pr2 = pr2_;
}
Personajes(int ident){
  identificador = ident;
  d1 = 50;
  d2 = 150;
  tamano = int (100);
  t1 = 100;
  pd1 = 100;
  pd2 = 250;
  pa1 = 280;
  pa2 = 350;
  pt1 = 400;
  pt2 = 295;
  ps1 = 560;
  ps2 = 310;
  pr1 = 790;
  pr2 = 345;
  o1 = 125;
  o2 = 315;
  tamojo = 35;
  Sp1 = 200;
  Sp2 = 180;
  textselec = 50;
  Pu1 = 125;
  Pu2 = 315;
  Pupojo = 20;
  Nd1 = 100;
  Nd2 = 430;
  nombreDan = 20;
  Na1 = 250;
  Na2 = 430;
  nombreAnzu = 20;
  Nt1 = 430;
  Nt2 = 430;
  nombreTyler= 20;
  Ns1 = 590;
  Ns2 = 430;
  nombreSaul = 20;
  Nr1 = 760;
  Nr2 = 430;
  nombreRoger =20;
  
}
void display(){
  switch (identificador)
  {
    case 1:
        //Dan
         noStroke();
         fill(#07796C);
          rect(pd1, pd2, d1, d2);
          fill (255);
          ellipse ( o1,o2,tamojo,tamojo);
          fill (0);
          ellipse (Pu1,Pu2,Pupojo,Pupojo);
          textSize(nombreDan);
          fill(255);
          text("Dan", Na1, Na2);
    break;
    case 2:
    noStroke();
        //Anzu
        fill(#CD0D79);
        ellipse(pa1, pa2, tamano, tamano);
         textSize( nombreAnzu);
          fill(255);
          text("Anzu", Nt1, Nt2);
    break;
    case 3:
    noStroke();
     //Tyler
     fill(#0DAB7B);
     square(pt1, pt2, t1);
      textSize(  nombreTyler);
          fill(255);
          text("Tyler", Ns1, Ns2);
     break;
     case 4:
      noStroke();
     //Saul
        fill(#4509A2);
        triangle(ps1, ps2+altura, ps1+tamano, ps2+altura, ps1+(tamano/2), ps2);
     case 5:
       noStroke();
      //Roger
        fill(#181264);
        ellipse(pr1, pr2, tamano, tamano);
     
      
    
  }
}

}
class Pantalla
{
   float p1, p2;
  float tamanotex;
  float I1, I2;
  float tamanoins;
  //Rectángulos random posicion
  float Rr1, Rr2;
  //Rectángulos random tamaño
  float Rt1, Rt2;
  int Rr;
  int identif;

  Pantalla (int iden)
  {
    identif=iden;
  }
  
   Pantalla(float p1_, float p2_, float tamanotex_){
    
    p1 = p1_;
    p2 = p2_;
    tamanotex = tamanotex_;
    
   }
   void DibujoPantalla()
   {
     switch (identif)
     {
       case 1:
       p1 = 22;
    p2 = 30;
    tamanotex = 50;
    I1 = 313;
    I2 = 500;
    tamanoins = 25;
       
       break;
     }
     
   }
 //   Pantalla( ){
 //}
     void display(){
       switch (identif)
       {
         case 1:
               //Titulo principal
          textSize(50);
          fill(#1B87BA);
          text("Geometric Hysteria", 220, 350);
          //Instruccion
          textSize(25);
          fill(#1B87BA);
          text("Pulsa ENTER para comenzar", 313, 550);
         break;
       }
    
    
}

}
class Battle
{
  //Posicion del suelo
  float s1, s2;
  //Tamaño suelo
  float st1, st2;
  //Sol posicion
  float psun1, psun2;
  //Sol tamaño
  float tamasun;
  //2 cielos posicion
  float c1, c2;
  //1 cielo tamaño
  float ct1, ct2;
  //2 cielo posicion;
  float c21, c22;
  //2 cielo tamaño;
  float c2t1, c2t2;
  int identificador;
  
  Battle (int id)
  {
    identificador = id;
  }
   
   
   Battle(){
    s1 = 0;
    s2 = 500;
    st1 = 400;
    st2 = 1200;
    psun1 = 450;
    psun2 = 480;
    tamasun = int (300);
    c1 = 0;
    c2 = 0;
    ct1 = 100;
    ct2 = 1200;
    c21 = 0; 
    c22 = 0;
    c2t1 = 220;
    c2t2 =1200;
  }
  
  void display(){
    switch (identificador)
    {
      case 1:
          //Sol
    fill(#D4EB12);
    ellipse(psun1, psun2, tamasun, tamasun);
      break;
         case 2:
    //Suelo
    fill(#C10202);
    rect(s1, s2, st2, st1);
      break;
         case 3:
             // 1er cielo
    fill(#D23D05);
    rect(c1, c2, ct2, ct1);
      break;
         case 4:
          // 2do cielo
    fill(#D15906);
    rect(c21, c22, c2t2, c2t1);
      break;
    }
    noStroke();

   
 
    
   
  }
}
