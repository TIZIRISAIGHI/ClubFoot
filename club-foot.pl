# Exercice n°1 
print ("Entrez votre nom svp\n");
$nom=<STDIN> ;
chop($nom); 
print ("Quel est votre prenom ?\n");
$prenom=<STDIN> ;
chop($prenom);
print ("Bonjour $prenom $nom, Bienvenue sur le site  ?\n");

# Exercice n°2 / Demander à un.e adhérent.e son âge et  l’informer en retour  du groupe dans lequel il.elle peut s'inscrire

print("Quel est votre age?\n");
$age=<STDIN>;
chop($age);
if ($age>=9 && $age<= 11 ) { 
		print ("Votre groupe est A. \n");
}
	
if ($age>=12 && $age<=14) { 
		print ("Votre groupe est B \n");
}

if ($age>=15 && $age<= 18  ) { 
		print ("Votre groupe est C. \n");
}
else 
{ 
    print" votre age ne correspond pas aux critères d'inscription" 
}


# Exercice 3:  Les adhérent.e.s sont identifié.e.s par leur nom, que l’on considèrera ici comme unique (deux personnes ne peuvent pas avoir le même nom)
print" entrez votre nom svp \n"
$nom=<STDIN> ;
chop($nom); 
if ($nom !=$nomexistant)
{
print("Bienvenue  au club de football junior !\n");
}
else
{
print("ce nom existe dèja veuillez entrer un nouveau nom svp\n");
} 


# Vérifie si le groupe est complet ou non
if (scalar(keys %$groupe) >= 10) {
    print "Le groupe est complet. L'adhérent est placé en liste d'attente.\n";
    $liste_attente{$nom} = $age;
} 

# Déclaration des variables
my $agemA = 9;
my $agexA = 11;
my $agemB = 12;
my $agexB = 14;
my $agemC = 15;
my $agexC = 18;
my @inscrits;
my @liste_attente;

# Lecture des inscriptions
print "Bienvenue au club de football junior !\n";
print "Pour vous inscrire, veuillez entrer votre prénom et votre âge :\n";
while (my $prenom = <STDIN>) {
    chomp $prenom;
    my $age = <STDIN>;
    chomp $age;
}   
    # Vérification de l'âge
    if ($age >= $agemA && $age <= $agexA) {
        push @inscrits, [$prenom, $age, 'A'];
    } elsif ($age >= $agemB && $age <= $agexB) {
        push @inscrits, [$prenom, $age, 'B'];
    } elsif ($age >= $agemC && $age <= $agexC) {
        push @inscrits, [$prenom, $age, 'C'];
    } else {
        push @liste_attente, [$prenom, $age];
    }
    
    

#Exercice 5 Demander à l’utilisateur son nom et lui dire en retour dans quel groupe il.elle est inscrit.e

print "Veuillez saisir votre nom : ";
my $nom= <STDIN>;
chop($nom);
if (exists $inscriptionsA{$nom}) {
  print "Vous êtes inscrit.e dans le groupe A.\n";
} elsif (exists $inscriptionsB{$nom}) {
  print "Vous êtes inscrit.e dans le groupe B.\n";
} elsif (exists $inscriptionsC{$nom}) {
  print "Vous êtes inscrit.e dans le groupe C.\n";
} elsif (grep {$ eq $nom} @attente) {
  print "Vous êtes en liste d'attente.\n";
} 
else {
  print "Vous n'êtes pas inscrit.e au club.\n";
}


# Exercice 4 ET 6

# Liste de tous les adhérents inscrits
print "Liste de tous les adhérents inscrits :\n";
foreach my $adh (keys %inscrits) {
    print "$adh ($inscrits{$adh})\n";
}

# Nombre d'adhérents inscrits dans chaque groupe
print "Nombre d'adhérents inscrits dans chaque groupe :\n";
print "Groupe A : $nba\n";
print "Groupe B : $nbb\n";
print "Groupe C : $nbc\n\n";

# Nombre total de nouveaux adhérents inscrits
my $nbsomme = $nba + $nbb + $nbc;
print "Nombre total de nouveaux adhérents inscrits : $nbsomme\n";

# Liste d'attente
print "Liste d'attente :\n";
foreach my $adh (@attente) {
    print "$adh\n";
}
print "\nNombre de personnes sur liste d'attente : " . scalar(@attente) . "\n";
