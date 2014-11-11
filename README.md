GameWall Source Code
====================

This used to be a toy project of mine when I was a teenager.
Found out those sources on an old hard drive. Figured it was funny.
Let's save them somewhere for posterity !

Featuring the worst&funniest hacks ever possible on a Windows platform.

- 100% pure ASM code
- Code that dynamically changes itself (jump in the middle of instructions, etc)
- Decryption layers for some parts of the code
- Hard Demo: the paying features are physically removed from the compiled code and reinserted when you buy the keyfile, which is encrypted, relocatable code...
- Kernel drivers for Windows 9x & NT (!) to hide the process by patching the kernel process structures in-memory
- Extremely invasive library that hooks itself in any process to detect if there's usage of DirectX DLLs somewhere
- Funny network propagation of the settings via named network pipes exploitation

I don't remember any more atrocities so far, but there probably are.

And yeah, I did not use version control then.



Original README (french, funny)
===============================



                   _____________________
.............::::::::  GameWall v2.4  ::::::::.............



    Ceci est une version fran�aise et fonctionnelle du GameWall, le seul 
outil existant actuellement capable de bloquer tout jeu vid�o utilisant les 
technologies DirectX ou OpenGL : en bref, 99 pour cent d'entre eux !

_
1\ Utilit�

    Son utilit� est �vidente : dans les milieux scolaires/universitaires, ou 
    dans le monde du travail, le GameWall a sa place parmi les logiciels de 
    controle patronal, afin d'optimiser l'utilisation faite des mat�riels 
    informatiques mis � la disposition de l'�tudiant ou de l'employ�.
    De meme, chez les particuliers le GameWall peut etre un atout pr�cieux pour 
    faire respecter � ses enfants ou � soi meme des horaires pr�cis de d�tente.
    

  Fonctionnalit�s :
    
    -   Ind�tectable par n'importe quel listeur de processus, toutes versions de 
        Windows confondues
                
    -   Une forte s�curit� : algorithmes cryptographiques divers ( CRC32, MD5 ) 
        utilis�s pour chaque v�rification de donn�es
        
    -   Une protection par mot de passe, modifiable, controle l'acc�s � la 
        configuration du GameWall. Ces mots de passe sont ne peuvent etre ni 
        devin�s, ni trouv�s ( algorithme MD5 irr�versible ) .
        
    -   Possibilit� de s�lectionner, parmi les jeux lanc�s ( dont le lancement a 
        �t� d�tect� )  des programmes autoris�s � etre utilis�s et que le 
        GameWall ne bloquera donc plus � l'avenir, jusqu'� retirement de la 
        liste privil�gi�e. ( liste crypt�e notamment )
        
    -   S�curit� dans les options de configuration : la moindre modification 
        externe des param�tres du programme entrainera une remise en fonction 
        des valeurs par d�faut.
        
    -   Controle horaire : il est possible de s�lectionner, pour chaque jour de 
        la semaine, une dur�e � ne pas d�passer, dur�e pouvant s'�taler, en 
        plusieurs fois si vous le souhaitez, sur toute la journ�e, ou 
        seulement � partir d'une heure que vous pouvez fixer. Utilisation 
        intuitive.
        
   -    Lancement discret � chaque red�marrage de l'ordinateur : encore une 
        fois, impossible de d�sactiver cette relance sauf � la d�sinstallation.
	    ( ou au choix de l'administrateur )
        
   -    Possibilit�, activ�e par d�faut, d'empecher l'utilisateur de modifier la 
        date ou l'heure de l'ordinateur : � mettre en relation avec le controle 
        horaire !
        
   -    Quelques autres fonctionnalit�s, plus discr�tes et � d�tailler : 
        affichage d'un message pr�ventif � la derni�re minute avant 
        fermeture d'un jeu vid�o, possibilit� de supprimer aux non-
        administrateurs l'acc�s � la configuration...
        
   -    Jeux vid�o Windows de base bloqu�s.
        
  Non impl�ment� actuellement :
  
    -   Am�liorer le contr�le horaire selon ce qui est pr�vu.


_
2\ Utilisation
    Installez puis lancez le GameWall. Il suffit de presser la touche F12 pour 
    obtenir une fenetre demandant le mot de passe d'acc�s � la configuration.
    Ce mot de passe est par d�faut 'First GameWall Password', sans les 
    guillemets et en respectant la casse.
    Celui-ci peut etre modifi� dans un des onglets de la boite de configuration.
    Pour plus de pr�cisions, voyez le fichier d'aide de base sur
    http://perso.wanadoo.fr/farsight/gamewall.htm




Langage de programmation utilis�  : Assembleur Win32
Compilateur utilis�               : MASM32 ( free )

Systemes d'exploitation support�s : Win95/98/NT/2000/XP   

  [ non test� sous Windows 2003 Server � l'heure actuelle ]
