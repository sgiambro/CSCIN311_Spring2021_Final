--Salvatore Giambrone

/* _________________________________________________TABLES_________________________________________________ */
DROP TABLE ClothesType;
DROP TABLE Customer;
DROP TABLE Employee;
DROP TABLE Position;
DROP TABLE Seniority;
DROP TABLE Prize;
DROP TABLE CompleteItems;


CREATE TABLE ClothesType(
Type        VARCHAR2(20)   PRIMARY KEY,
Delicate    VARCHAR2(3),
Cost        NUMBER(5,2)
constraint Cost_CK CHECK (Cost >= 0)
);
    
INSERT INTO ClothesType VALUES ('Shirt','No','2.00');
INSERT INTO ClothesType VALUES ('Pants','No','5.00');
INSERT INTO ClothesType VALUES ('Shorts','No','4.50');
INSERT INTO ClothesType VALUES ('Sweater','No','7.00');
INSERT INTO ClothesType VALUES ('Jacket','No','7.00');
INSERT INTO ClothesType VALUES ('Coat','No','9.00');
INSERT INTO ClothesType VALUES ('Skirt','No','4.00');
INSERT INTO ClothesType VALUES ('Suit','Yes','15.00');
INSERT INTO ClothesType VALUES ('Dress','Yes','10.00');
INSERT INTO ClothesType VALUES ('Vest','No','3.00');
INSERT INTO ClothesType VALUES ('Shoes','Yes','6.50');
INSERT INTO ClothesType VALUES ('Hat','Yes','4.00');
INSERT INTO ClothesType VALUES ('Underwear','Yes','1.50');
INSERT INTO ClothesType VALUES ('Socks','No','1.00');
INSERT INTO ClothesType VALUES ('Mask','Yes','0.50');
INSERT INTO ClothesType VALUES ('Scarf','No','2.50');
INSERT INTO ClothesType VALUES ('Twin','No','13.00');
INSERT INTO ClothesType VALUES ('Full','No','17.00');
INSERT INTO ClothesType VALUES ('Queen','No','22.00');
INSERT INTO ClothesType VALUES ('King','No','26.00');
INSERT INTO ClothesType VALUES ('Blanket','No','8.00');
INSERT INTO ClothesType VALUES ('None' ,'No','0');


drop sequence CustomerID;
create sequence CustomerID increment by 1 start with 1;

CREATE TABLE Customer(
CustomerID   NUMBER    PRIMARY KEY,
First       VARCHAR2(50),
Last        VARCHAR2(50),
Clothes     VARCHAR2(150),
Color       VARCHAR2(150),
Express     VARCHAR2(3),
Tip         NUMBER(5,2),
constraint Tip_CK CHECK (Tip >= 0),
constraint Customer_UQ UNIQUE (First, Last, Clothes, Color)
);


INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Ariella' , 'Jacobson' , 'Full,Twin,Jacket' , 'Black,Grey,Pink' , 'NO' , '.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Chad' , 'Willis' , 'Scarf,Pants,Dress,Hat,Sweater,Full,Shoes,Dress' , 'White,Black,Black,Red,Red,Black,Black,Grey' , 'NO' , '20' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Sasha' , 'Moore' , 'King,Blanket,Socks,Coat' , 'Grey,Yellow,Grey,Red' , 'NO' , '100.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Shawn' , 'Mair' , 'Pants,Underwear,Jacket' , 'White,Green,Green' , 'YES' , '.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Alannah' , 'Beaumont' , 'Shirt,Dress,Mask,Dress' , 'White,Pink,Green,Black' , 'YES' , '6.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Huzaifah' , 'Bright' , 'Shorts,Sweater,Vest,Twin,Skirt,Jacket' , 'Grey,Black,Orange,Blue,Blue,Black' , 'NO' , '0' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Morgan' , 'Joseph' , 'Scarf,Skirt,Scarf,Socks' , 'White,Orange,Black,White' , 'NO' , '.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Theodore' , 'Turnbull' , 'Full,Shorts,Mask,Dress' , 'Black,Red,Black,Grey' , 'NO' , '1.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Safia' , 'Walmsley' , 'Scarf,Pants,Scarf,Scarf,Underwear,Vest' , 'Red,Purple,Purple,White,White,Blue' , 'NO' , '.50' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Gideon' , 'Novak' , 'Full,Underwear,Shoes,Dress,Mask,Jacket,Vest,Suit' , 'White,White,Black,Black,Black,Black,White,White' , 'NO' , '1' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Samad' , 'Harrell' , 'Mask,Mask,Blanket' , 'White,Red,White' , 'NO' , '5.50' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Marina' , 'Watkins' , 'Shorts,Dress,Jacket,Dress' , 'Black,Purple,Grey,Grey' , 'NO' , '51.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Rita' , 'Robbins' , 'Sweater' , 'White' , 'YES' , '51.25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Zaine' , 'Mclaughlin' , 'Sweater,Scarf,Skirt' , 'White,White,White' , 'YES' , '5' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Kelsey' , 'Wallis' , 'Mask,Jacket,Hat,Vest,Pants' , 'White,White,White,Red,White' , 'NO' , '.25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Iyla ' , 'Taylor' , 'Hat,Coat,Dress,Shirt' , 'Red,Grey,Blue,Black' , 'NO' , '25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Isobelle' , 'Moyer' , 'Suit,Full,Dress,Jacket,Mask,Hat' , 'Pink,White,Yellow,Blue,Red,Orange' , 'NO' , '.50' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Amy' , 'Beasley' , 'Mask' , 'Orange' , 'NO' , '50.50' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Reya' , 'Coffey' , 'Coat,Shorts,Suit,Pants,King,Queen,Skirt,Pants' , 'Blue,Red,Yellow,White,Red,Black,Black,Blue' , 'NO' , '5.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Kourtney' , 'Houghton' , 'Twin,Shoes,Full,Underwear,Shorts,Socks,Queen,Mask' , 'White,White,White,Blue,Black,Red,Yellow,Black' , 'NO' , '1.25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Laylah' , 'Melton' , 'Full,Underwear,Underwear,Underwear,Socks,Jacket' , 'Black,Yellow,Blue,White,Red,Black' , 'NO' , '.25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Layton' , 'Robin' , 'Vest' , 'Blue' , 'NO' , '6.50' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Kiyan' , 'Hogg' , 'Skirt,Sweater' , 'White,Black' , 'NO' , '.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Rhianna' , 'Bloggs' , 'King,Scarf,Skirt,Coat,Scarf,Pants' , 'White,Orange,Grey,Pink,Black,Black' , 'YES' , '1.50' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Gurleen' , 'Alexander' , 'Vest,Dress,Sweater,Shorts,Scarf,Coat,Scarf,Dress,Socks' , 'Green,Black,White,Grey,Orange,Black,Red,Blue,Green' , 'YES' , '1.50' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Rhyley' , 'Whitehouse' , 'Shoes,Shoes,Shoes' , 'Black,Red,Pink' , 'YES' , '.25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Hadley' , 'Dawson' , 'Mask' , 'White' , 'NO' , '5' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Kaiden' , 'Graham' , 'Dress,Vest' , 'Grey,Yellow' , 'NO' , '0' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Harvey' , 'Mcmanus' , 'Scarf,Hat,Suit' , 'Black,Blue,Black' , 'YES' , '30.50' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Layan' , 'Couch' , 'King,Full,Coat,Underwear,Scarf,Full' , 'White,Yellow,White,Black,White,Black' , 'NO' , '11' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Courteney' , 'Oliver' , 'Jacket,Mask,Queen' , 'Orange,Black,Black' , 'NO' , '6.25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Zofia' , 'Nolan' , 'Mask' , 'Green' , 'NO' , '.25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Zohaib' , 'Good' , 'Shorts,Blanket,Queen,Shorts,Pants,Shoes,Twin' , 'Red,Grey,Grey,Purple,White,Grey,Orange' , 'NO' , '0' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Chelsie' , 'Cousins' , 'Hat,Mask,Hat,Dress,Scarf' , 'Green,Black,Blue,Red,Black' , 'NO' , '.50' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Ria' , 'Guerra' , 'Hat' , 'Grey' , 'YES' , '5.25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Sharmin' , 'Koch' , 'Shorts,Sweater,Shorts,Shoes' , 'Green,White,Black,Grey' , 'NO' , '10.50' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Nicole' , 'Riley' , 'Pants,Pants,Socks,Shoes,Blanket,Underwear,Scarf,Shirt,Hat' , 'White,Black,Grey,White,Grey,White,Red,Grey,Black' , 'NO' , '10' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Christian' , 'Campbell' , 'Skirt,Underwear,Dress,Underwear,Vest' , 'Black,Pink,White,White,Black' , 'NO' , '21.25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Patrick' , 'Busby' , 'Jacket,Coat,Shoes,Shirt,King,Pants,Full,Shorts,Jacket' , 'Black,White,Black,Purple,White,Grey,White,Black,White' , 'NO' , '10.50' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Jem' , 'Ibarra' , 'Pants,Dress' , 'White,Green' , 'NO' , '.25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Priscilla' , 'Browning' , 'Scarf,Dress,Underwear,Scarf,Pants,Twin' , 'White,White,White,Blue,White,Grey' , 'NO' , '1' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Monika' , 'Macias' , 'Socks,Queen,Socks,Queen,Underwear,Queen,Shorts,Suit,Skirt' , 'Black,Orange,White,Grey,Black,Orange,Green,Green,Black' , 'NO' , '0' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Zakir' , 'Rose' , 'Dress,Scarf,Socks,Blanket,Shorts' , 'Grey,Black,Orange,Black,White' , 'NO' , '10' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Monica' , 'Mustafa' , 'Dress,Socks,Coat,Pants,Dress,Shoes,Skirt,Shirt,Skirt,Shorts' , 'Black,Purple,White,Blue,Grey,Red,Black,Pink,Red,Orange' , 'NO' , '.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Kirk' , 'Vaughn' , 'Sweater,Vest' , 'Black,Red' , 'NO' , '15.25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Forrest' , 'Finnegan' , 'King,Shoes,Mask,Hat,Full,Scarf,Pants' , 'White,Blue,White,Yellow,Black,Grey,White' , 'NO' , '0' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Rayhaan' , 'Brooks' , 'Queen,Dress,Shoes,Coat,Hat,King,Mask,Hat,Jacket,Underwear' , 'Grey,Grey,White,Grey,White,White,Green,White,Red,Pink' , 'NO' , '.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Iris' , 'Bray' , 'Skirt,Vest,Twin,Hat' , 'Black,White,Black,Red' , 'NO' , '.25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Jimmie' , 'Flores' , 'Hat,Shoes,Mask,Skirt,Pants,Blanket,Vest' , 'Pink,Grey,Black,Black,Black,Blue,White' , 'NO' , '1.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Naya' , 'Charlton' , 'Skirt,Suit' , 'Grey,Black' , 'NO' , '.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Dainton' , 'Almond' , 'Suit,Shorts,Shoes' , 'Purple,Orange,Black' , 'NO' , '.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Landon' , 'Vincent' , 'Suit,Suit,Shorts,Shorts,Scarf,Socks,Shirt,Mask,Mask' , 'Green,White,Blue,Green,Grey,Pink,Blue,White,Green' , 'YES' , '0' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Tasnim' , 'Watts' , 'Suit,Underwear,Suit,Suit,King,Underwear,Blanket' , 'Black,White,White,White,White,Green,Black' , 'NO' , '.25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Mae' , 'Kim' , 'Scarf' , 'Purple' , 'NO' , '5' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Julien' , 'Blackwell' , 'Shorts' , 'White' , 'NO' , '.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Callum' , 'Farrell' , 'Full,Full,Full,Socks,Mask,Shorts,Sweater' , 'Pink,Grey,White,Purple,Grey,White,Black' , 'NO' , '6.25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Miles' , 'Russo' , 'Full,Queen' , 'Black,Pink' , 'NO' , '.25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Tevin' , 'Craft' , 'Shirt,Socks,Pants,Jacket,Sweater,Underwear,Shorts,Shirt' , 'Red,Pink,Pink,Purple,Orange,White,Blue,White' , 'NO' , '1' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Huxley' , 'Neville' , 'Vest,Full' , 'Pink,Black' , 'NO' , '.50' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Alya' , 'Parks' , 'Jacket,Suit,Suit,Shorts,Underwear,Queen,Queen,Underwear' , 'Black,Black,Red,Blue,Grey,Pink,Purple,White' , 'NO' , '.25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Ellena' , 'Mcgee' , 'Pants,Blanket,Skirt,Sweater,King,Suit,Suit,Jacket,Coat,Twin' , 'Black,Black,White,Black,Black,Black,Grey,Blue,Green,Black' , 'YES' , '0' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Rhea' , 'Hancock' , 'Shoes,Blanket,Full,Shorts,Socks,Coat,Underwear,Queen,Mask,Shirt' , 'Blue,Black,White,Grey,White,Red,White,Red,Purple,Pink' , 'YES' , '5.25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Jaydn' , 'Gutierrez' , 'Hat,Mask,King,Shorts,Shirt,King,Vest,Underwear,Shoes' , 'White,Purple,Black,White,Red,Orange,Yellow,Grey,White' , 'NO' , '11.25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Sheldon' , 'Rawlings' , 'Full,Queen,Full,Hat,Socks' , 'Red,Blue,White,Grey,Black' , 'NO' , '.25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Aleyna' , 'Goodman' , 'Queen,Hat,Full,Pants,Pants,Underwear,Full,Vest,Blanket' , 'Blue,Grey,White,Grey,Purple,Black,Grey,Blue,Red' , 'NO' , '.25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Micheal' , 'Clarkson' , 'Pants,Socks,Mask' , 'Black,White,Grey' , 'NO' , '.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Rhiann' , 'Wilkerson' , 'Blanket,Sweater,Underwear,Full,Full,Scarf' , 'White,Blue,Black,Red,Red,Orange' , 'NO' , '.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Byron' , 'Bevan' , 'Dress,Hat,Jacket,Hat,Twin,Jacket,Twin,Pants' , 'Purple,Orange,Black,Black,Orange,Red,Blue,Pink' , 'YES' , '1' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Saul' , 'Rojas' , 'Hat' , 'Red' , 'NO' , '.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Calista' , 'Aguirre' , 'Shirt,Skirt,Jacket,King,Pants,Jacket,Twin,Skirt,Shirt,Suit' , 'White,Blue,Black,White,Grey,Purple,Grey,Blue,White,Red' , 'NO' , '.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Timothy' , 'Marin' , 'Shorts,Skirt,Shirt,Shoes,Socks,Blanket,Hat,Blanket' , 'Black,Yellow,White,Black,Orange,Purple,White,Blue' , 'YES' , '0' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Andre' , 'Cline' , 'Queen,Pants' , 'Grey,Grey' , 'NO' , '.50' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Jacques' , 'Kirby' , 'Dress' , 'Purple' , 'NO' , '5' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Andreea' , 'Adam' , 'Mask' , 'Grey' , 'NO' , '.25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Adrian' , 'Carey' , 'Queen,Shirt,Sweater' , 'Blue,Grey,Red' , 'NO' , '1.25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Tim' , 'Barrera' , 'Hat,Shorts,Hat,Shoes,Full,Scarf' , 'Black,Black,White,Pink,Grey,Grey' , 'NO' , '.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Albert' , 'Rollins' , 'Skirt,Mask,Vest,Full,Mask,Vest,Scarf,Pants' , 'White,Black,Black,Red,Black,White,Grey,Black' , 'NO' , '11.25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Bryan' , 'Hunter' , 'Skirt,Coat,Queen,Jacket' , 'White,Grey,Pink,Purple' , 'NO' , '.25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Darcy' , 'Stark' , 'Shorts,Queen,Skirt,Hat,Socks,Vest,Pants,Full,Jacket' , 'Grey,Grey,Grey,Black,Grey,Black,Yellow,Grey,Pink' , 'NO' , '1.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Heena' , 'Mcarthur' , 'Vest,Dress,Socks,Coat,Blanket,Shirt,Socks,Shorts,Scarf,Skirt' , 'Orange,White,Red,Purple,Blue,Blue,Grey,Black,White,Grey' , 'NO' , '.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Perry' , 'Carroll' , 'Twin,Sweater,Shorts,Hat,Twin,Full' , 'Blue,Red,Black,Black,Yellow,Green' , 'NO' , '5.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Simra' , 'Amos' , 'Shirt,Shoes,Queen,Queen,Queen,Dress,Dress,Shirt' , 'White,White,Blue,White,Black,Yellow,Black,Black' , 'NO' , '0' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Julian' , 'Bowes' , 'Shorts,Blanket,Queen' , 'Green,Pink,Black' , 'NO' , '.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Jolene' , 'Fraser' , 'Jacket,Full,Shoes' , 'White,Black,Black' , 'NO' , '.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Tyriq' , 'Lutz' , 'Jacket,Mask,Blanket' , 'Grey,White,Black' , 'NO' , '5.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Fenella' , 'Mcculloch' , 'Suit,Skirt,Shorts,Twin,Dress,Queen' , 'White,Black,Orange,Green,White,Black' , 'NO' , '.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Elinor' , 'Underwood' , 'Shorts,Shorts,Dress,Blanket,Scarf' , 'Blue,Black,Black,Pink,Green' , 'NO' , '1' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Jeremy' , 'Sparks' , 'Blanket,Blanket,Suit,Suit,Scarf' , 'Black,White,Pink,Red,Black' , 'NO' , '10.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Fraya' , 'Hahn' , 'Queen,Dress,Shorts,Scarf,Queen,Coat,Dress,Vest,Full' , 'Red,Purple,Green,Grey,Blue,Purple,Grey,Blue,Black' , 'YES' , '0' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Luna' , 'Stacey' , 'Twin' , 'Black' , 'YES' , '20.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Yusra' , 'Stokes' , 'Pants,Socks' , 'Pink,Red' , 'NO' , '.25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Graham' , 'Christie' , 'Pants,Socks,Shirt,Shoes,Suit,Socks' , 'Grey,Grey,Blue,Green,Grey,White' , 'NO' , '.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Cavan' , 'Stott' , 'King,Hat,Full,Scarf,Hat,Underwear,Sweater,Coat,Sweater,Sweater' , 'Orange,Blue,Black,Red,Grey,Red,Red,Green,Grey,White' , 'NO' , '5.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Thelma' , 'Anthony' , 'Skirt,King,Suit,Scarf,Sweater,Sweater,Mask,Shirt,Queen,Dress' , 'Yellow,Green,Pink,Black,Black,Green,Black,White,Black,White' , 'NO' , '.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Tate' , 'Sierra' , 'Full,Shorts,Pants,Dress,Coat' , 'Black,Blue,White,White,Grey' , 'NO' , '.50' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Nayla' , 'Monaghan' , 'King,Scarf,Shirt' , 'Grey,White,Blue' , 'NO' , '.50' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Keyaan' , 'Collins' , 'Vest,Hat,Full,King' , 'Black,White,Grey,White' , 'YES' , '10.50' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Ruairi' , 'Nelson' , 'Hat,Shirt,Underwear,Vest' , 'Yellow,Grey,Blue,Pink' , 'NO' , '.50' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Anisa' , 'Hartman' , 'Suit,Pants,Queen,Socks,Shorts' , 'Yellow,Black,White,Green,Black' , 'NO' , '.50' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Tiffany' , 'Blackmore' , 'Underwear,Hat,Full,Coat,Full' , 'Black,Orange,Grey,Pink,Purple' , 'NO' , '.25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Salvatore' , 'Giambrone' , 'Shorts,King,Twin,Suit' , 'Black,Orange,Green,Blue' , 'No' , '.01' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Raiden' , 'Ware' , 'Blanket' , 'Red' , 'NO' , '1.25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Yosef' , 'Talley' , 'Suit,Jacket,Shirt' , 'Green,Black,Orange' , 'NO' , '50' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Akeel' , 'Mckenzie' , 'Coat,Socks,Underwear' , 'Black,Green,Blue' , 'NO' , '1.25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Zacharia' , 'Redfern' , 'Queen,Shirt,Socks' , 'Black,Grey,Blue' , 'NO' , '.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Laila' , 'Wagstaff' , 'Dress,Hat,Socks,Shirt,Underwear,Shorts,Coat,Sweater' , 'Black,White,Black,Grey,Black,Blue,White,Red' , 'NO' , '1' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Duke' , 'Macleod' , 'Socks,Twin,Suit,Queen,Queen' , 'Black,Grey,Red,Purple,Black' , 'NO' , '0' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Edan' , 'Flynn' , 'Dress,Twin,Full' , 'White,Black,Blue' , 'NO' , '.25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Malaikah' , 'Keller' , 'Shirt,Suit' , 'Pink,Red' , 'NO' , '.25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Stacy' , 'Appleton' , 'Blanket,Underwear,King,Mask,Hat,Hat,Queen' , 'Grey,Black,White,Black,Blue,Red,Orange' , 'NO' , '5' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Alexander' , 'Mcmanus' , 'Shorts,Socks,Shoes,Shirt,Sweater,Queen' , 'Black,Grey,White,Red,Yellow,White' , 'NO' , '10.50' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Tayler' , 'Mclellan' , 'Full,Skirt,Dress,Hat,Shoes,Dress,Shirt,Queen,Mask' , 'Black,Orange,Pink,Grey,Black,Red,Grey,Black,White' , 'NO' , '.25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Beatriz' , 'Schroeder' , 'Shirt,Mask,Shirt,Socks,Skirt,Twin,Suit,Skirt,Suit' , 'Black,White,Yellow,Purple,Yellow,Black,White,Blue,Pink' , 'NO' , '.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Elicia' , 'Strong' , 'Vest,Shirt,Socks,Vest,Sweater,Dress' , 'Black,White,Pink,Purple,Blue,White' , 'N' , '10.50' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Kier' , 'Phan' , 'Suit,Dress,Twin' , 'Black,Blue,White' , 'NO' , '.50' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Amiya' , 'Cousins' , 'Blanket,Shoes,Suit,Dress,Twin,Skirt,Shoes,Scarf' , 'Blue,Black,Purple,Purple,Purple,White,Blue,White' , 'NO' , '.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Ella' , 'Arellano' , 'Dress,Dress,Blanket' , 'Black,Grey,White' , 'NO' , '1.50' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Judy' , 'Hollis' , 'Jacket,Jacket,Mask,Skirt,Coat,Shoes' , 'Orange,Red,Grey,Red,Green,Grey' , 'NO' , '100.25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Sophia' , 'Mccaffrey' , 'Sweater,Scarf,Dress,Sweater,Twin,Hat,Queen' , 'Black,White,Green,Pink,Blue,Yellow,Green' , 'NO' , '16.25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Rheanna' , 'Mccabe' , 'Coat,Shorts,Dress,King' , 'Grey,Black,White,Grey' , 'NO' , '.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Dominika' , 'Obrien' , 'Blanket,Shorts,Shirt,Queen,Twin,Full,Twin' , 'Blue,Grey,Red,Grey,White,White,White' , 'YES' , '.50' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Quentin' , 'Salazar' , 'Pants,Scarf,Shoes,Mask,Shoes,Sweater,Pants,Scarf,Jacket,Shoes' , 'Yellow,Purple,Black,Pink,Black,White,Pink,Blue,Purple,Pink' , 'NO' , '.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Toyah' , 'Ho' , 'Scarf,Jacket,Vest' , 'White,Black,Black' , 'NO' , '.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Arnas' , 'Ryan' , 'Skirt' , 'Black' , 'NO' , '.50' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Mohammod' , 'Kaye' , 'Dress,Mask,King,Dress,Scarf,Socks,Full,Mask' , 'Blue,Grey,Black,Grey,White,Purple,Grey,Green' , 'NO' , '5.25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Nikhil' , 'Pope' , 'Sweater,Twin,Mask,Hat,Sweater,Full,Twin,Shirt,Mask' , 'Black,Orange,Orange,Black,Pink,White,Black,Pink,Green' , 'NO' , '.25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Freja' , 'Costa' , 'Queen,Shoes,Blanket,Shorts,Full,King' , 'White,Black,Blue,White,Grey,White' , 'NO' , '.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Ayoub' , 'Norton' , 'Blanket,Twin,Shorts' , 'Red,Purple,Blue' , 'NO' , '.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Dannielle' , 'Walsh' , 'Twin,Underwear,Suit,Scarf,King' , 'Green,Black,White,Grey,Black' , 'NO' , '0' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Harlow' , 'Cameron' , 'Coat,Blanket' , 'Red,Blue' , 'NO' , '35.25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Alisa' , 'Flower' , 'Skirt,Pants,Jacket,Shirt,Jacket,Skirt,Vest,Vest' , 'White,White,Black,Yellow,Yellow,Black,Black,Black' , 'NO' , '.50' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Sumaya' , 'Becker' , 'Mask,Pants,Skirt,Twin,Full,Dress,Shoes,Shoes,Sweater' , 'Green,Green,Black,White,Pink,Orange,Black,Blue,Purple' , 'NO' , '5.25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Khadija' , 'Melia' , 'Socks,Shorts,Suit,Shirt,Suit,Shorts,Jacket,Queen' , 'Yellow,Grey,Orange,Pink,Black,Black,White,White' , 'NO' , '1' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Elif' , 'Brewer' , 'Hat,Dress,Scarf,Skirt,Shorts,Jacket,Twin' , 'Grey,Blue,Red,Blue,White,Yellow,Orange' , 'NO' , '.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Gabriella' , 'Cordova' , 'Jacket,Jacket,Coat' , 'Pink,White,White' , 'NO' , '21.25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Poppy' , 'Thompson' , 'Pants,Shirt,Shoes,Socks,Queen,Full' , 'Purple,Black,Black,Black,Yellow,Red' , 'NO' , '.25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Petra' , 'Ballard' , 'Dress,Blanket,Mask,Vest,Underwear' , 'Red,Black,Black,Red,Blue' , 'YES' , '1.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Jarvis' , 'Cantrell' , 'Shirt,Suit,Coat,Hat,Scarf,Dress,Mask,Socks,Pants,Coat' , 'Pink,White,Grey,Black,Grey,Black,Pink,Orange,Black,Blue' , 'NO' , '.25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Amiyah' , 'Castillo' , 'King' , 'Black' , 'NO' , '5.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Valentino' , 'Bass' , 'Scarf,Socks,Vest,Coat,Shoes,Coat,Vest,Full' , 'Black,Black,White,Black,Blue,White,White,Grey' , 'NO' , '0' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Henri' , 'Kaufman' , 'Full,Queen,Twin,Vest,Skirt,Skirt' , 'White,Blue,White,White,Black,Purple' , 'YES' , '0' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Cristiano' , 'Joseph' , 'King,Shorts,Coat,Underwear,Sweater,Shoes,Hat,Suit,Hat,Sweater' , 'Grey,Black,Green,Red,Green,Black,Grey,Grey,Black,Green' , 'NO' , '.25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Orion' , 'Whittington' , 'Coat' , 'Black' , 'NO' , '0' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Samuel' , 'Underwood' , 'Hat' , 'Black' , 'NO' , '.25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Mamie' , 'Webster' , 'Twin,King,Pants' , 'Blue,Black,Grey' , 'YES' , '21.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Giovanni' , 'Greig' , 'Skirt,Vest' , 'White,Black' , 'NO' , '.50' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Louise' , 'Salter' , 'Scarf,Socks,Shoes,Vest,Queen,Jacket,Mask' , 'Yellow,Grey,Black,Purple,Black,White,Grey' , 'NO' , '15.25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Ariyan' , 'Guzman' , 'Dress,Queen' , 'Blue,Orange' , 'NO' , '1' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Menaal' , 'Thornton' , 'Coat,Coat,King,Socks,Queen,Suit,Mask,Shorts,Queen' , 'Black,White,Black,Yellow,Grey,Green,White,Purple,White' , 'NO' , '.25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Stefania' , 'Hutchinson' , 'Queen,Mask,Hat,Mask,Mask,Skirt,Suit' , 'Grey,White,Black,Black,Grey,White,White' , 'NO' , '.50' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Nataniel' , 'Palmer' , 'Blanket,King,Jacket,Pants,Suit,Blanket,Shoes,Socks,Shoes' , 'Green,Black,Purple,White,Red,Black,Black,Blue,Black' , 'NO' , '.50' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Lewys' , 'Mellor' , 'Shirt,Coat,Shirt,Queen' , 'Black,White,Yellow,Black' , 'NO' , '15' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Maximilian' , 'Alfaro' , 'Full,Suit,King,Blanket,King,Dress,King,Scarf,Full,Shirt' , 'Red,Blue,White,Grey,White,Yellow,Orange,Purple,Pink,Grey' , 'NO' , '5.50' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Teddy' , 'Dillard' , 'Underwear,Pants,Jacket' , 'White,White,Yellow' , 'YES' , '1.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Lilly' , 'Crossley' , 'Skirt,Queen,Sweater,Underwear' , 'White,White,Orange,Yellow' , 'NO' , '1' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Shivam' , 'Davie' , 'Suit,King,Coat' , 'Black,Grey,Grey' , 'YES' , '.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Romana' , 'House' , 'Shirt,Shorts,Socks,Scarf,Jacket,Sweater,Pants,Twin,Hat,Twin' , 'Blue,Black,Yellow,Blue,Yellow,Blue,Black,Black,Orange,Black' , 'YES' , '5.50' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Kaif' , 'Mays' , 'Underwear,Coat,King,Shirt,Mask,Shirt,Pants,Shoes,Blanket,Dress' , 'White,Blue,Grey,White,Grey,Grey,Orange,Black,Grey,Orange' , 'NO' , '10.25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Alishba' , 'Leech' , 'Scarf,Full,Sweater,Vest,Socks,Blanket' , 'White,Grey,Blue,Blue,Grey,Black' , 'NO' , '5.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Vivienne' , 'Salas' , 'Dress,Pants,Hat' , 'Purple,Red,White' , 'NO' , '.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Dennis' , 'Wolfe' , 'Shirt,Suit' , 'Grey,Grey' , 'NO' , '0' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Nadia' , 'Ford' , 'Sweater,Shorts,Queen,Pants,Scarf,Queen' , 'Black,White,White,Red,Blue,White' , 'NO' , '0' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Lillie' , 'Montes' , 'Socks,Jacket,Shirt,Sweater,Suit,Underwear,Socks,Mask' , 'Blue,Blue,White,White,Orange,Blue,Blue,Grey' , 'NO' , '0' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Aaminah' , 'Moore' , 'Sweater,Scarf,Full,Socks,Shorts,Dress' , 'Red,Blue,Black,Pink,Pink,Yellow' , 'NO' , '.25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Anjali' , 'Floyd' , 'Coat,Shoes,Shoes,Shoes,Queen,Sweater,Underwear,Shoes' , 'Grey,Black,Grey,Blue,Orange,White,Black,Blue' , 'NO' , '.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Bjorn' , 'Simon' , 'Hat,Shoes,King,Twin,Hat,Vest' , 'Black,White,White,White,Black,White' , 'NO' , '.25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Matt' , 'Estrada' , 'Scarf,Socks,Shoes,Dress,Hat,Twin,Coat,Underwear,Coat,Vest' , 'Black,Pink,Blue,White,Yellow,Orange,Black,Black,Black,Black' , 'NO' , '.50' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Mikhail' , 'Bolton' , 'Shorts,Sweater' , 'White,Black' , 'NO' , '6.25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Raul' , 'Stark' , 'Scarf,Vest' , 'Purple,Orange' , 'NO' , '1' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Mya' , 'Blankenship' , 'Hat,Twin,Shorts' , 'Grey,Red,Grey' , 'NO' , '.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Arisha' , 'Harmon' , 'Shorts,Underwear,Shorts,Shorts,Queen,Shoes,Coat,Dress' , 'White,Yellow,Purple,Green,White,White,Yellow,White' , 'NO' , '0' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Rose' , 'Hendrix' , 'Scarf,Dress,Blanket,Vest,Shoes,Socks,Underwear,Blanket' , 'Orange,Black,Blue,Green,Red,Yellow,Black,Grey' , 'YES' , '25.25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Sadie' , 'Williamson' , 'Shirt' , 'Black' , 'NO' , '.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Safaa' , 'Lynch' , 'Underwear,Suit,Scarf,Suit,Jacket,Shoes,Vest,Blanket' , 'Red,White,Black,White,Black,White,Green,Blue' , 'NO' , '0' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Keir' , 'Reese' , 'Twin,Full,Full,Hat,Skirt,Jacket,Shirt,Shorts,Dress' , 'Black,Blue,Black,Purple,Green,White,White,Blue,Black' , 'NO' , '5' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Lilli' , 'Sumner' , 'Suit,Mask,Skirt,Full' , 'Purple,Green,Grey,Grey' , 'NO' , '.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Sumner' , 'Davison' , 'Socks,Shoes,Sweater,Coat' , 'Grey,Purple,Orange,Grey' , 'NO' , '50.25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Ali' , 'Stevenson' , 'Underwear,Skirt,Pants,Jacket,Full,Blanket,Queen,Shoes,Pants,Queen' , 'Grey,Orange,Orange,Blue,Blue,Grey,White,White,Green,Grey' , 'YES' , '5.50' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Kloe' , 'Wickens' , 'Queen,Twin,Full,Full' , 'Grey,Red,Grey,Black' , 'NO' , '.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Jamal' , 'Redmond' , 'Pants,Socks,Scarf,Skirt,Coat' , 'Black,Grey,Purple,Blue,Red' , 'NO' , '0' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Jared' , 'Castro' , 'Queen,Blanket,Jacket,Full' , 'Purple,White,Black,Black' , 'NO' , '.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Ariah' , 'Armitage' , 'Shoes,Suit,Shirt,King,Skirt' , 'Grey,Black,Pink,Purple,Green' , 'YES' , '0' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Ariel' , 'Griffin' , 'Twin,Shorts,Suit,Shoes,Twin,Vest,Full' , 'White,White,Yellow,White,Pink,Black,White' , 'NO' , '.50' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Lina' , 'Hayward' , 'Suit,Socks,King,Shirt,Shorts,Full,Shoes,Socks' , 'Grey,Grey,Orange,Black,Black,White,Black,Black' , 'NO' , '0' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Sid' , 'Guy' , 'Coat,Skirt,Blanket' , 'White,Black,Yellow' , 'NO' , '1.50' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Autumn' , 'Manning' , 'Skirt,Vest,Socks,Full,Dress,Jacket,Suit,Sweater,Twin,Full' , 'White,Red,Black,Grey,Black,Blue,White,Purple,Grey,Red' , 'NO' , '.25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Nina' , 'Rahman' , 'King,Shorts,Blanket,Shoes,Mask' , 'White,Black,Red,Purple,Black' , 'NO' , '1' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'James' , 'Rowley' , 'Shorts,Vest' , 'Pink,White' , 'NO' , '.25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Aarav' , 'Ortiz' , 'Scarf,Scarf,Scarf,Scarf,Hat,Pants' , 'Blue,Black,Blue,Black,Grey,Red' , 'NO' , '1' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Piotr' , 'Smart' , 'Socks,Mask,Dress,Shoes' , 'White,Blue,Grey,Grey' , 'NO' , '10.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Edwin' , 'Myers' , 'King' , 'Blue' , 'YES' , '.25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Abdullah' , 'Mcintosh' , 'King' , 'Purple' , 'NO' , '.25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Blane' , 'Moran' , 'Full,Blanket,Dress,Jacket,Pants,Jacket,Coat,Mask' , 'Pink,White,White,Blue,Black,Grey,Grey,White' , 'NO' , '5.25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Tymon' , 'Gough' , 'Suit,Twin,Dress,Full,Jacket,Shirt,Twin,Skirt,Jacket,Vest' , 'Black,Black,Orange,Black,White,Black,Black,Orange,White,Red' , 'NO' , '1' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Zayne' , 'Sadler' , 'Shoes,Pants,Scarf' , 'Black,Black,Black' , 'NO' , '10.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Cherish' , 'Neale' , 'Sweater,King,Socks,Socks,Full,King,Full,Vest,Shoes' , 'Black,Black,Grey,White,Grey,White,White,White,White' , 'NO' , '.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Manisha' , 'Scott' , 'Scarf,Skirt,Pants,Mask,Suit,Twin' , 'White,White,White,Black,White,Black' , 'NO' , '.75' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Sulayman' , 'Vinson' , 'Hat,Shirt,Sweater,Twin,Queen,Full,Skirt' , 'Green,White,Yellow,Grey,Purple,Pink,Pink' , 'YES' , '.25' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Sahara' , 'Kemp' , 'Scarf,Suit' , 'Green,Purple' , 'NO' , '.50' );
INSERT INTO Customer VALUES ( CustomerID.NextVal, 'Talha' , 'Monaghan' , 'Full,King,Shirt,Coat,Shorts,Sweater,Vest' , 'Grey,Yellow,Purple,White,Black,Black,Blue' , 'NO' , '1.50' );

drop sequence EmployeeID;
create sequence EmployeeID increment by 1 start with 1;

CREATE TABLE Employee(
EmployeeID   NUMBER    PRIMARY KEY,
First        VARCHAR2(50),
Last         VARCHAR2(50),
PositionID   NUMBER,
Age          NUMBER,
Work         VARCHAR2(10),
SeniorityID  NUMBER
);

INSERT INTO Employee VALUES ( EmployeeID.NextVal, 'Chad' , 'Willis' , '1' , '40' , 'GOOD' , '3' );
INSERT INTO Employee VALUES ( EmployeeID.NextVal, 'Lee' , 'Hirst' , '5' , '17' , 'OK' , '1' );
INSERT INTO Employee VALUES ( EmployeeID.NextVal, 'Nicolas' , 'Vargas' , '3' , '34' , 'EXCELLENT' , '4' );
INSERT INTO Employee VALUES ( EmployeeID.NextVal, 'Romana' , 'House' , '3' , '40' , 'OK' , '3' );
INSERT INTO Employee VALUES ( EmployeeID.NextVal, 'Farhan' , 'Dougherty' , '3' , '61' , 'BAD' , '5' );
INSERT INTO Employee VALUES ( EmployeeID.NextVal, 'Bjorn' , 'Simon' , '3' , '37' , 'BAD' , '2' );
INSERT INTO Employee VALUES ( EmployeeID.NextVal, 'Keanu' , 'Davenport' , '3' , '48' , 'OK' , '4' );
INSERT INTO Employee VALUES ( EmployeeID.NextVal, 'Havin' , 'Atherton' , '4' , '60' , 'OK' , '5' );
INSERT INTO Employee VALUES ( EmployeeID.NextVal, 'Dolores' , 'Nieves' , '3' , '54' , 'BAD' , '1' );
INSERT INTO Employee VALUES ( EmployeeID.NextVal, 'Tracey' , 'Tran' , '3' , '35' , 'OK' , '3' );
INSERT INTO Employee VALUES ( EmployeeID.NextVal, 'Abdallah' , 'Kerr' , '5' , '19' , 'EXCELLENT' , '2' );
INSERT INTO Employee VALUES ( EmployeeID.NextVal, 'Falak' , 'Macleod' , '5' , '29' , 'OK' , '3' );
INSERT INTO Employee VALUES ( EmployeeID.NextVal, 'Micheal' , 'Clarkson' , '5' , '21' , 'GOOD' , '2' );
INSERT INTO Employee VALUES ( EmployeeID.NextVal, 'Aneeka' , 'Mata' , '2' , '25' , 'OK' , '1' );
INSERT INTO Employee VALUES ( EmployeeID.NextVal, 'Randall' , 'Jarvis' , '3' , '27' , 'GOOD' , '2' );
INSERT INTO Employee VALUES ( EmployeeID.NextVal, 'Chelsie' , 'Cousins' , '2' , '18' , 'OK' , '1' );
INSERT INTO Employee VALUES ( EmployeeID.NextVal, 'Stefania' , 'Hutchinson' , '5' , '31' , 'BAD' , '5' );
INSERT INTO Employee VALUES ( EmployeeID.NextVal, 'Harleen' , 'Anderson' , '4' , '26' , 'GOOD' , '3' );
INSERT INTO Employee VALUES ( EmployeeID.NextVal, 'Emilis' , 'Mcneill' , '3' , '18' , 'OK' , '2' );
INSERT INTO Employee VALUES ( EmployeeID.NextVal, 'Lani' , 'Barron' , '4' , '34' , 'EXCELLENT' , '4' );


CREATE TABLE Position(
PID         NUMBER  PRIMARY KEY,
Position    VARCHAR2(20),
Task        VARCHAR2(100),
Pay         NUMBER(4,2),
constraint Pay_CK CHECK (Pay >= 0)
);

INSERT INTO Position VALUES ( '1' , 'Manager' , 'oversee and lead the employees '   , '20' );
INSERT INTO Position VALUES ( '2' , 'Front Desk' , 'customer service, managing orders, and getting supplies'   , '10.75' );
INSERT INTO Position VALUES ( '3' , 'Cleaner' , 'repair and clean items'   , '12.50' );
INSERT INTO Position VALUES ( '4' , 'Machine Operator' , 'setting up, adjusting, and fixing machines'   , '15' );
INSERT INTO Position VALUES ( '5' , 'Sorter' , 'sort items bases on color, type, and/or their owner'   , '11.25' );


Create TABLE Seniority(
SID         NUMBER  PRIMARY KEY,
Seniority   VARCHAR2(10),
Vacation    NUMBER,
SickDays    NUMBER,
Benefits    VARCHAR2(200),
constraint Vacation_CK CHECK (Vacation >= 0),
constraint Sick_CK CHECK (SickDays >= 0)
);

INSERT INTO Seniority VALUES ( '1' , 'NEW' , '5' , '7' , 'NONE' );
INSERT INTO Seniority VALUES ( '2' , '1-3' , '10' , '8' , '10% Discount, Health Insurance' );
INSERT INTO Seniority VALUES ( '3' , '4-6' , '15' , '9' , '20% Discount, Health Insurance, Life Insurance, Vision Insurance' );
INSERT INTO Seniority VALUES ( '4' , '7-9' , '17' , '9' , '35% Discount, Health Insurance, Life Insurance, Vision Insurance, Retirement Benefits' );
INSERT INTO Seniority VALUES ( '5' , '10+' , '20' , '10' , '50% Discount, Health Insurance, Life Insurance, Vision Insurance, Retirement Benefits, Picture On Wall' );


Create TABLE Prize(
Lower       NUMBER(5,2) PRIMARY KEY,
Upper       NUMBER(5,2),
Prize       VARCHAR2(200)
);

INSERT INTO Prize VALUES ( '0.01' , '1' , 'Name On Poster(Black)' );
INSERT INTO Prize VALUES ( '1' , '5' , 'Name On Poster(Green), Sticker' );
INSERT INTO Prize VALUES ( '5' , '10' , 'Name On Poster(Blue), Sticker, Pen' );
INSERT INTO Prize VALUES ( '10' , '20' , 'Name On Poster(Red), Sticker, Pen, Lanyard' );
INSERT INTO Prize VALUES ( '20' , '50' , 'Name On Poster(Orange), Sticker, Pen, Lanyard, Company Themed Socks' );
INSERT INTO Prize VALUES ( '50' , '100' , 'Name On Poster(Purple), Sticker, Pen, Lanyard, Company Themed Socks and Shirt ' );
INSERT INTO Prize VALUES ( '100' , '999' , 'Name On Poster(Gold), Sticker, Pen, Lanyard, Company Themed Socks and Shirt and Bottle ' );



Create TABLE CompleteItems
    as (select CustomerID,First, Last,
         REGEXP_SUBSTR(clothes, '[[:alpha:]]+', 1, 1, 'i') || ' ' || REGEXP_SUBSTR(color, '[[:alpha:]]+', 1, 1, 'i') as "ITEM ONE" ,
         REGEXP_SUBSTR(clothes, '[[:alpha:]]+', 1, 2, 'i') || ' ' || REGEXP_SUBSTR(color, '[[:alpha:]]+', 1, 2, 'i') as "ITEM TWO" ,
         REGEXP_SUBSTR(clothes, '[[:alpha:]]+', 1, 3, 'i') || ' ' || REGEXP_SUBSTR(color, '[[:alpha:]]+', 1, 3, 'i') as "ITEM THREE" ,
         REGEXP_SUBSTR(clothes, '[[:alpha:]]+', 1, 4, 'i') || ' ' || REGEXP_SUBSTR(color, '[[:alpha:]]+', 1, 4, 'i') as "ITEM FOUR" ,
         REGEXP_SUBSTR(clothes, '[[:alpha:]]+', 1, 5, 'i') || ' ' || REGEXP_SUBSTR(color, '[[:alpha:]]+', 1, 5, 'i') as "ITEM FIVE" ,
         REGEXP_SUBSTR(clothes, '[[:alpha:]]+', 1, 6, 'i') || ' ' || REGEXP_SUBSTR(color, '[[:alpha:]]+', 1, 6, 'i') as "ITEM SIX" ,
         REGEXP_SUBSTR(clothes, '[[:alpha:]]+', 1, 7, 'i') || ' ' || REGEXP_SUBSTR(color, '[[:alpha:]]+', 1, 7, 'i') as "ITEM SEVEN" ,
         REGEXP_SUBSTR(clothes, '[[:alpha:]]+', 1, 8, 'i') || ' ' || REGEXP_SUBSTR(color, '[[:alpha:]]+', 1, 8, 'i') as "ITEM EIGHT" ,
         REGEXP_SUBSTR(clothes, '[[:alpha:]]+', 1, 9, 'i') || ' ' || REGEXP_SUBSTR(color, '[[:alpha:]]+', 1, 9, 'i') as "ITEM NINE" ,
         REGEXP_SUBSTR(clothes, '[[:alpha:]]+', 1, 10, 'i') || ' ' || REGEXP_SUBSTR(color, '[[:alpha:]]+', 1, 10, 'i') as "ITEM TEN" 
        from customer);


select * from ClothesType;
select * from Customer;
select * from Employee;
select * from Position;
select * from Seniority;
select * from Prize;
select * from CompleteItems;
/* _________________________________________________VIEWS_________________________________________________ */

DROP view Menu;
DROP view BadWorkers;
DROP view posPay;
DROP view TipList;
DROP view Rushed;
Drop view AgeBen;
DROP view CustomerPrizes;
DROP view NumItems;
DROP view ONE;
DROP view TWO;
DROP view THREE;
DROP view FOUR;
DROP view FIVE;
DROP view SIX;
DROP view SEVEN;
DROP view EIGHT;
DROP view NINE;
DROP view TEN;

--Menu of all items and their cost to be cleaned
create or replace view Menu as
select RPAD(type , 30 , '.') as ITEMS , '$' || cost as COST
FROM clothestype
where type != 'None';

--Has all employees who have a bad preformance record at their job
create or replace view BadWorkers as
select RPAD(first || ' ' || last , 25 , ' ') as NAME , work as WORK
from employee
where work = 'BAD';

--All employee's position and pay at the company
create or replace view PosPay as
select RPAD(first || ' ' || last , 25 , ' ') as NAME , position as POSITION , pay as PAY
from employee , position
where PositionID = PID
order by position;

--Every customer and the amount they tipped from greatest to least
create or replace view TipList as
select RPAD(first || ' ' || last , 25 , ' ') as NAME , RPAD(tip, 6, ' ') as TIP
from customer
order by tip*100 desc;

--Every customer thet has a express order
create or replace view Rushed as
select RPAD(first || ' ' || last , 25 , ' ') NAME , LPAD(express, 8,' ') as "RUSHED ORDER"
from customer
where express = 'YES';

--All employee's seniority at the company and the benifits that come with it
create or replace view AgeBen as
select RPAD(first || ' ' || last , 25 , ' ') as NAME , seniority as "YEARS AT COMPANY" , benefits as BENEFITS
from employee , seniority
where SeniorityID = SID
order by(LENGTH(benefits));

--Every customer that tipped and the prize they recived
create or replace view CustomerPrizes as
select RPAD(first || ' ' || last , 25 , ' ') as NAME , prize as "PRIZE WON"
from customer , prize
where tip >= lower and tip < upper
order by tip*100 desc;

--Every customer and the number of items they have
create or replace view NumItems as
select RPAD(first || ' ' || last , 25 , ' ') as NAME ,
       decode(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(clothes , 'Shirt' , ' '), 'Pants' , ' ' ), 'Shorts' , ' ' ), 'Sweater' , ' ' ), 'Jacket' , ' ' ), 'Coat' , ' ' ), 'Skirt' , ' ' ), 'Suit' , ' ' ), 'Dress' , ' ' ), 'Vest' , ' ' ), 'Shoes' , ' ' ), 'Hat' , ' ' ), 'Underwear' , ' ' ), 'Socks' , ' ' ), 'Mask' , ' ' ), 'Scarf' , ' ' ), 'Twin' , ' ' ), 'Full' , ' ' ), 'Queen' , ' ' ), 'King' , ' ' ), 'Blanket' , ' ' ),
                ' , , , , , , , , , ' , '10',
                ' , , , , , , , , ' , '9',
                ' , , , , , , , ' , '8',
                ' , , , , , , ' , '7',
                ' , , , , , ' , '6',
                ' , , , , ' , '5',
                ' , , , ' , '4',
                ' , , ' , '3',
                ' , ' , '2',
                ' ' , '1',
                '0') as "NUMBER OF ITEMS"
from customer;

--Cost of the first item that every customer 
create or replace view One as
select customerid , cost  as c1 
from clothestype , completeitems
where type = decode(REGEXP_SUBSTR("ITEM ONE", '[[:alpha:]]+', 1, 1, 'i'), trim(' '), 'None', REGEXP_SUBSTR("ITEM ONE", '[[:alpha:]]+', 1, 1, 'i'))
order by customerid;

--Cost of the second item that every customer 
create or replace view Two as
select customerid , cost  as c2 
from clothestype , completeitems
where type = decode(REGEXP_SUBSTR("ITEM TWO", '[[:alpha:]]+', 1, 1, 'i'), trim(' '), 'None', REGEXP_SUBSTR("ITEM TWO", '[[:alpha:]]+', 1, 1, 'i'))
order by customerid;

--Cost of the third item that every customer 
create or replace view Three as
select customerid , cost  as c3 
from clothestype , completeitems
where type = decode(REGEXP_SUBSTR("ITEM THREE", '[[:alpha:]]+', 1, 1, 'i'), trim(' '), 'None', REGEXP_SUBSTR("ITEM THREE", '[[:alpha:]]+', 1, 1, 'i'))
order by customerid;

--Cost of the forth item that every customer 
create or replace view Four as
select customerid , cost  as c4
from clothestype , completeitems
where type = decode(REGEXP_SUBSTR("ITEM FOUR", '[[:alpha:]]+', 1, 1, 'i'), trim(' '), 'None', REGEXP_SUBSTR("ITEM FOUR", '[[:alpha:]]+', 1, 1, 'i'))
order by customerid;

--Cost of the fith item that every customer 
create or replace view Five as
select customerid , cost  as c5
from clothestype , completeitems
where type = decode(REGEXP_SUBSTR("ITEM FIVE", '[[:alpha:]]+', 1, 1, 'i'), trim(' '), 'None', REGEXP_SUBSTR("ITEM FIVE", '[[:alpha:]]+', 1, 1, 'i'))
order by customerid;

--Cost of the sixth item that every customer 
create or replace view Six as
select customerid , cost  as c6
from clothestype , completeitems
where type = decode(REGEXP_SUBSTR("ITEM SIX", '[[:alpha:]]+', 1, 1, 'i'), trim(' '), 'None', REGEXP_SUBSTR("ITEM SIX", '[[:alpha:]]+', 1, 1, 'i'))
order by customerid;

--Cost of the seventh item that every customer 
create or replace view Seven as
select customerid , cost  as c7
from clothestype , completeitems
where type = decode(REGEXP_SUBSTR("ITEM SEVEN", '[[:alpha:]]+', 1, 1, 'i'), trim(' '), 'None', REGEXP_SUBSTR("ITEM SEVEN", '[[:alpha:]]+', 1, 1, 'i'))
order by customerid;

--Cost of the eighth item that every customer 
create or replace view Eight as
select customerid , cost  as c8
from clothestype , completeitems
where type = decode(REGEXP_SUBSTR("ITEM EIGHT", '[[:alpha:]]+', 1, 1, 'i'), trim(' '), 'None', REGEXP_SUBSTR("ITEM EIGHT", '[[:alpha:]]+', 1, 1, 'i'))
order by customerid;

--Cost of the ninth item that every customer 
create or replace view Nine as
select customerid , cost  as c9
from clothestype , completeitems
where type = decode(REGEXP_SUBSTR("ITEM NINE", '[[:alpha:]]+', 1, 1, 'i'), trim(' '), 'None', REGEXP_SUBSTR("ITEM NINE", '[[:alpha:]]+', 1, 1, 'i'))
order by customerid;

--Cost of the tenth item that every customer 
create or replace view Ten as
select customerid , cost  as c10
from clothestype , completeitems
where type = decode(REGEXP_SUBSTR("ITEM TEN", '[[:alpha:]]+', 1, 1, 'i'), trim(' '), 'None', REGEXP_SUBSTR("ITEM TEN", '[[:alpha:]]+', 1, 1, 'i'))
order by customerid;


select * from Menu;
select * from BadWorkers;
select * from posPay;
select * from TipList;
select * from Rushed;
select * from AgeBen;
select * from CustomerPrizes;
select * from NumItems;
select * from ONE;
select * from TWO;
select * from THREE;
select * from FOUR;
select * from FIVE;
select * from SIX;
select * from SEVEN;
select * from EIGHT;
select * from NINE;
select * from TEN;

/* _________________________________________________QUERIES_________________________________________________ */

--Shows total and average number of tips recived
select '$' || SUM(tip) "Total TIPS" , '$' || ROUND(AVG(tip) , 2) "AVERAGE TIP"
from customer;

--Shows the employees who work the same position as Havin Atherton
select NAME , position
from pospay
where position in (select position from pospay where TRIM(name) = 'Havin Atherton' );

--Shows the start and end of the fundrasing event along with the number of days left 
select 
    TO_CHAR(TO_DATE('01012021','MMDDYYYY'), 'MM/DD/YYYY') as "START" ,
    TO_CHAR(TO_DATE('06302021','MMDDYYYY'), 'MM/DD/YYYY') as "END" ,
    LPAD(ROUND((TO_DATE('06302021','MMDDYYYY')) - (current_date) , 0), 10, ' ') || ' days' as "DAYS UNTIL END OF EVENT"
from dual;

--Shows the number of customers that have diffrent amounts of items
select DISTINCT LPAD("NUMBER OF ITEMS", '9' , ' ') as "NUMBER OF ITEMS" , 
                LPAD(count(*), '11' , ' ') as "NUMBER OF CUSTOMERS"
from numitems
group by "NUMBER OF ITEMS"
order by "NUMBER OF ITEMS" ;

--Shows the total amount of all the items that have been/ are being cleaned
select sum("NUMBER OF ITEMS")as "TOTAL ITEMS"
from numitems;

--Shows the customer's tip amount and their name from greatest to lowest tip
select name , DECODE(tip , 0 , 'NO TIP' , tip) as "AMOUNT TIPPED"
from tiplist
group by name , tip
order by tip*100 desc;

--Shows the number of people who tipped a cirten amount
select DECODE(tip , 0 , 'NO TIP' , tip) as "AMOUNT TIPPED" , COUNT(*)
from tiplist
group by tip
order by tip*100 desc;

--Shows the largest to smallest tip group
select DECODE(tip , 0 , 'NO TIP' , tip) as "AMOUNT TIPPED" , COUNT(*) as "TOTAL"
from tiplist
where tip !=0
group by tip
order by count(*) desc;

--Shows employees that have tipped and the amount
select C.first , C.last , tip 
from customer C full outer join employee E on C.first = E.first 
where C.first = E.first ;

--Shows employyes that have used the cleaning and their items
select  RPAD(C.first || ' ' || C.last , 25 , ' ') as NAME , "ITEM ONE" , "ITEM TWO" , "ITEM THREE" , "ITEM FOUR", "ITEM FIVE", "ITEM SIX", "ITEM SEVEN", "ITEM EIGHT", "ITEM NINE", "ITEM TEN"
from completeItems C full outer join employee E on C.first = E.first  
where TRIM(C.first) = TRIM(E.first) ;

--Shows the prizes that the manager gets
select name , "PRIZE WON"
from customerprizes
where TRIM(name) = (select C.first ||' ' || C.last  
                from customer C full outer join employee E on C.first = E.first 
                where C.first = E.first  and positionid = 1);

--Shows the total number of names for each color on the poster and the total of all colors     
select distinct decode(GROUPING("PRIZE WON"), 1, 'TOTAL' , LTRIM(RTRIM("PRIZE WON", ', Sticker, Pen, Lanyard, Company Themed Socks and Shirt and Bottle '), 'Name On Poster' )) as "COLORS" , count(*) as "AMOUNT"
from customerprizes
group by cube ("PRIZE WON")
order by count(*);


/* _________________________________________________TABLE MANIPULATION _________________________________________________*/


SAVEPOINT A;

--Sets all employee's work preformance of the same position as Micheal to good
UPDATE employee 
SET work = 'GOOD'
where positionid = (select positionid 
                    from employee 
                    where first = 'Micheal' and last = 'Clarkson');
         
--see the changes           
select first , last , work
from employee
where positionid = 5;

SAVEPOINT B;

--Removes/Fires all the employees with a bad work review
DELETE BadWorkers;

--see changes
select * from employee;

ROLLBACK to SAVEPOINT B;

--Removes/Fires all the new employees with a bad work review
DELETE employee where work = 'BAD' and seniorityid = 1;

select * from employee where work = 'BAD' and seniorityid = 1;

ROLLBACK to SAVEPOINT A;


/* _________________________________________________PL/SQL_________________________________________________*/


select * from customer;


ALTER TABLE customer
    ADD amountOwed number(6,2);
    
--(1,2,3) gets the cost of all the items that a customer brought in for all customers
DECLARE
    cost number(6,2) := 0;

    cursor one_cursor is
		select * from one;
	one_val one_cursor%ROWTYPE;
    
    cursor two_cursor is
		select * from two;
	two_val two_cursor%ROWTYPE;
    
    cursor three_cursor is
		select * from three;
	three_val three_cursor%ROWTYPE;
    
    cursor four_cursor is
		select * from four;
	four_val four_cursor%ROWTYPE;
    
    cursor five_cursor is
		select * from five;
	five_val five_cursor%ROWTYPE;
    
    cursor six_cursor is
		select * from six;
	six_val six_cursor%ROWTYPE;
    
    cursor seven_cursor is
		select * from seven;
	seven_val seven_cursor%ROWTYPE;
    
    cursor eight_cursor is
		select * from eight;
	eight_val eight_cursor%ROWTYPE;
    
    cursor nine_cursor is
		select * from nine;
	nine_val nine_cursor%ROWTYPE;
    
    cursor ten_cursor is
		select * from ten;
	ten_val ten_cursor%ROWTYPE;

BEGIN
    open one_cursor;
    open two_cursor;
    open three_cursor;
    open four_cursor;
    open five_cursor;
    open six_cursor;
    open seven_cursor;
    open eight_cursor;
    open nine_cursor;
    open ten_cursor;
    
    loop
        fetch one_cursor into one_val;
        fetch two_cursor into two_val;
        fetch three_cursor into three_val;
        fetch four_cursor into four_val;
        fetch five_cursor into five_val;
        fetch six_cursor into six_val;
        fetch seven_cursor into seven_val;
        fetch eight_cursor into eight_val;
        fetch nine_cursor into nine_val;
        fetch ten_cursor into ten_val;
        
  		exit when one_cursor%NOTFOUND;
        
        cost := one_val.c1 + two_val.c2 + three_val.c3 + four_val.c4 + five_val.c5 + six_val.c6 + seven_val.c7 + eight_val.c8 + nine_val.c9 + ten_val.c10;
        
        update customer 
        set amountOwed = cost 
        where customer.customerid = one_val.customerid;
        
    end loop;
    
EXCEPTION
 -- Does not handle raised exception
 WHEN OTHERS THEN
 DBMS_OUTPUT.PUT_LINE
 ('Error has occured in the program.');

END;
/



select * from customer;


ALTER TABLE customer
    ADD Total number(6,2);


--(1,2,3) Adds the cost of the order and their tip together to get the total amount 
--payed for every customer   
DECLARE
    cost number(6,2) := 0;

    cursor cust_cursor is
		select customerid, express, tip, amountOwed from customer;
	cust_val cust_cursor%ROWTYPE;
    

BEGIN
    
    for cust_val in cust_cursor 
    loop
        
        --express on an order is an additional $10
        if (cust_val.express = 'YES') then
            cost := cust_val.tip + cust_val.amountOwed + 10;
        else
            cost := cust_val.tip + cust_val.amountOwed;
        end if;
        
        update customer 
        set total = cost 
        where customer.customerid = cust_val.customerid;
        
    end loop;
    
EXCEPTION
 -- Does not handle raised exception
 WHEN OTHERS THEN
 DBMS_OUTPUT.PUT_LINE
 ('Error has occured in the program.');

END;
/

select * from customer;




select  C.first, C.last , amountOwed , seniorityid
        from customer C full outer join employee E on C.first = E.first  
        where TRIM(C.first) = TRIM(E.first);
        
select * from seniority;



--(1,2,3) adds the seniority discount for any empolyee orders   
DECLARE
    cost number(6,2) := 0;

    cursor ec_cursor is
		select  C.first, C.last , amountOwed , seniorityid
        from customer C full outer join employee E on C.first = E.first  
        where TRIM(C.first) = TRIM(E.first);
	ec_val ec_cursor%ROWTYPE;
    

BEGIN
    open ec_cursor;
    loop
        fetch ec_cursor into ec_val;
        
  		exit when ec_cursor%NOTFOUND;
        
        if (ec_val.seniorityid = 1) then
            cost := ec_val.amountOwed;
        elsif (ec_val.seniorityid = 2) then
            cost := ROUND(ec_val.amountOwed * .90 , 2);
        elsif (ec_val.seniorityid = 3) then
            cost := ROUND(ec_val.amountOwed * .80 , 2);
        elsif (ec_val.seniorityid = 4) then
            cost := ROUND(ec_val.amountOwed * .65 , 2);
        elsif (ec_val.seniorityid = 5) then
            cost := ROUND(ec_val.amountOwed * .50 , 2);
        end if;
        
        update customer 
        set amountOwed = cost 
        where customer.first = ec_val.first;
        
    end loop;
    
    close ec_cursor;
    
EXCEPTION
 -- Does not handle raised exception
 WHEN OTHERS THEN
 DBMS_OUTPUT.PUT_LINE
 ('Error has occured in the program.');

END;
/






--(4) A trigger that activates whenever a new customer is serviced in order 
--to keep a log of the customers and their items with the date.
create table CustomerLog as 
    select customerID , first , last , clothes , color 
    from customer;
    
alter table CustomerLog add ServiceDATE Date;
    

select * from customerLog;
select * from customer;

Create or replace trigger CusLogTrig
before insert on Customer
for each row
begin
Insert into CustomerLog(customerid , first , last , clothes , color , ServiceDATE) 
values (:new.customerid, :new.first, :new.last, :new.clothes, :new.color, Sysdate);
end;
/

--execute DRYCLEANER_PACKAGE.sp_insert_new_customer('Xanthe' , 'Little' , 'Coat,Jacket,Mask,Suit,Mask' , 'Grey,Purple,Black,White,Black' , 'NO' , '6.25');
--execute DRYCLEANER_PACKAGE.sp_insert_new_customer('Sana' , 'Rojas' , 'Pants,Shoes,Queen,Mask,Mask,Twin' , 'Grey,White,Orange,White,Blue,White' , 'NO' , '.75');
execute DRYCLEANER_PACKAGE.sp_insert_new_customer('Kaydon' , 'Sweeney' , 'Queen,Blanket,Dress,Vest' , 'Black,Grey,Purple,White' , 'NO' , '10');





--(4) A trigger that activates whenever an employee's work preformance is updated 
--in order to keep track of everyones preformance track record at the company
create table EmployeeReport as 
    select employeeID , first , last , work 
    from employee;
    
alter table EmployeeReport rename column work to OldPreformance;    
alter table EmployeeReport add NewPreformance  VARCHAR2(10);
    
delete from EmployeeReport;

select * from EmployeeReport;
select * from employee

Create or replace trigger EmpRepTrig
before update on employee
for each row
when (new.work != old.work)
begin
Insert into EmployeeReport(employeeID , first , last , OldPreformance , NewPreformance) 
values (:old.employeeID, :old.first, :old.last, :old.work, :new.work);
end;
/

execute DRYCLEANER_PACKAGE.sp_update_employee_work('BAD' , '12');
execute DRYCLEANER_PACKAGE.sp_update_employee_work('OK' , '18');
execute DRYCLEANER_PACKAGE.sp_update_employee_work('EXCELLENT' , '5');




--(6) This Stored Procedure is used to easily modify an employee's work reputation
create or replace
procedure sp_update_employee_work(newWork IN VARCHAR2, idNum IN NUMBER)
as
begin
    UPDATE employee SET work = newWork where employeeid = idNum ;
end;


--(6) This Stored Procedure is an easy way to add a new customer to the database
create or replace
procedure sp_insert_new_customer(fn in varchar2 , ln in varchar2 , cl in varchar2 , co in varchar2 , ex in varchar2 , ti in number)
as
begin
    INSERT INTO Customer VALUES ( CustomerID.NextVal, fn , ln , cl , co , ex , ti , '' , '' );    
end;
/




--(5) set of functions used to get the clothing item and color combo for each item
--a customer brought in to get cleaned
create or replace function fn_edit_completeItems1(id IN NUMBER)
return varchar2
is
output varchar2(50);
begin
    select REGEXP_SUBSTR(clothes, '[[:alpha:]]+', 1, 1, 'i') || ' ' || REGEXP_SUBSTR(color, '[[:alpha:]]+', 1, 1, 'i') into output from customer where customerid = id;
return (output);
end;
/

create or replace function fn_edit_completeItems2(id IN NUMBER)
return varchar2
is
output varchar2(50);
begin
    select REGEXP_SUBSTR(clothes, '[[:alpha:]]+', 1, 2, 'i') || ' ' || REGEXP_SUBSTR(color, '[[:alpha:]]+', 1, 2, 'i') into output from customer where customerid = id;
return (output);
end;
/

create or replace function fn_edit_completeItems3(id IN NUMBER)
return varchar2
is
output varchar2(50);
begin
    select REGEXP_SUBSTR(clothes, '[[:alpha:]]+', 1, 3, 'i') || ' ' || REGEXP_SUBSTR(color, '[[:alpha:]]+', 1, 3, 'i') into output from customer where customerid = id;
return (output);
end;
/

create or replace function fn_edit_completeItems4(id IN NUMBER)
return varchar2
is
output varchar2(50);
begin
    select REGEXP_SUBSTR(clothes, '[[:alpha:]]+', 1, 4, 'i') || ' ' || REGEXP_SUBSTR(color, '[[:alpha:]]+', 1, 4, 'i') into output from customer where customerid = id;
return (output);
end;
/

create or replace function fn_edit_completeItems5(id IN NUMBER)
return varchar2
is
output varchar2(50);
begin
    select REGEXP_SUBSTR(clothes, '[[:alpha:]]+', 1, 5, 'i') || ' ' || REGEXP_SUBSTR(color, '[[:alpha:]]+', 1, 5, 'i') into output from customer where customerid = id;
return (output);
end;
/

create or replace function fn_edit_completeItems6(id IN NUMBER)
return varchar2
is
output varchar2(50);
begin
    select REGEXP_SUBSTR(clothes, '[[:alpha:]]+', 1, 6, 'i') || ' ' || REGEXP_SUBSTR(color, '[[:alpha:]]+', 1, 6, 'i') into output from customer where customerid = id;
return (output);
end;
/

create or replace function fn_edit_completeItems7(id IN NUMBER)
return varchar2
is
output varchar2(50);
begin
    select REGEXP_SUBSTR(clothes, '[[:alpha:]]+', 1, 7, 'i') || ' ' || REGEXP_SUBSTR(color, '[[:alpha:]]+', 1, 7, 'i') into output from customer where customerid = id;
return (output);
end;
/

create or replace function fn_edit_completeItems8(id IN NUMBER)
return varchar2
is
output varchar2(50);
begin
    select REGEXP_SUBSTR(clothes, '[[:alpha:]]+', 1, 8, 'i') || ' ' || REGEXP_SUBSTR(color, '[[:alpha:]]+', 1, 8, 'i') into output from customer where customerid = id;
return (output);
end;
/

create or replace function fn_edit_completeItems9(id IN NUMBER)
return varchar2
is
output varchar2(50);
begin
    select REGEXP_SUBSTR(clothes, '[[:alpha:]]+', 1, 9, 'i') || ' ' || REGEXP_SUBSTR(color, '[[:alpha:]]+', 1, 9, 'i') into output from customer where customerid = id;
return (output);
end;
/

create or replace function fn_edit_completeItems10(id IN NUMBER)
return varchar2
is
output varchar2(50);
begin
    select REGEXP_SUBSTR(clothes, '[[:alpha:]]+', 1, 10, 'i') || ' ' || REGEXP_SUBSTR(color, '[[:alpha:]]+', 1, 10, 'i') into output from customer where customerid = id;
return (output);
end;
/




--(7) package of all the procedures and functions that are used in the database for easy recall
create or replace package DRYCLEANER_PACKAGE
as
	function fn_edit_completeItems1(id IN NUMBER) return varchar2;
    function fn_edit_completeItems2(id IN NUMBER) return varchar2;
    function fn_edit_completeItems3(id IN NUMBER) return varchar2;
    function fn_edit_completeItems4(id IN NUMBER) return varchar2;
    function fn_edit_completeItems5(id IN NUMBER) return varchar2;
    function fn_edit_completeItems6(id IN NUMBER) return varchar2;
    function fn_edit_completeItems7(id IN NUMBER) return varchar2;
    function fn_edit_completeItems8(id IN NUMBER) return varchar2;
    function fn_edit_completeItems9(id IN NUMBER) return varchar2;
    function fn_edit_completeItems10(id IN NUMBER) return varchar2;
    procedure sp_update_employee_work(newWork IN VARCHAR2, idNum IN NUMBER);
    procedure sp_insert_new_customer(fn in varchar2 , ln in varchar2 , cl in varchar2 , co in varchar2 , ex in varchar2 , ti in number);
end DRYCLEANER_PACKAGE;
/


create or replace package body DRYCLEANER_PACKAGE
as
    
    procedure sp_update_employee_work(newWork IN VARCHAR2, idNum IN NUMBER)
    as
    begin
        UPDATE employee SET work = newWork where employeeid = idNum ;
    end;
    
    procedure sp_insert_new_customer(fn in varchar2 , ln in varchar2 , cl in varchar2 , co in varchar2 , ex in varchar2 , ti in number)
    as
    begin
        INSERT INTO Customer VALUES ( CustomerID.NextVal, fn , ln , cl , co , ex , ti , '' , '' );    
    end;

    function fn_edit_completeItems1(id IN NUMBER)
    return varchar2
    is
    output varchar2(50);
    begin
        select REGEXP_SUBSTR(clothes, '[[:alpha:]]+', 1, 1, 'i') || ' ' || REGEXP_SUBSTR(color, '[[:alpha:]]+', 1, 1, 'i') into output from customer where customerid = id;
    return (output);
    end;
    
    function fn_edit_completeItems2(id IN NUMBER)
    return varchar2
    is
    output varchar2(50);
    begin
        select REGEXP_SUBSTR(clothes, '[[:alpha:]]+', 1, 2, 'i') || ' ' || REGEXP_SUBSTR(color, '[[:alpha:]]+', 1, 2, 'i') into output from customer where customerid = id;
    return (output);
    end;
    
    function fn_edit_completeItems3(id IN NUMBER)
    return varchar2
    is
    output varchar2(50);
    begin
        select REGEXP_SUBSTR(clothes, '[[:alpha:]]+', 1, 3, 'i') || ' ' || REGEXP_SUBSTR(color, '[[:alpha:]]+', 1, 3, 'i') into output from customer where customerid = id;
    return (output);
    end;

    function fn_edit_completeItems4(id IN NUMBER)
    return varchar2
    is
    output varchar2(50);
    begin
        select REGEXP_SUBSTR(clothes, '[[:alpha:]]+', 1, 4, 'i') || ' ' || REGEXP_SUBSTR(color, '[[:alpha:]]+', 1, 4, 'i') into output from customer where customerid = id;
    return (output);
    end;
    
    function fn_edit_completeItems5(id IN NUMBER)
    return varchar2
    is
    output varchar2(50);
    begin
        select REGEXP_SUBSTR(clothes, '[[:alpha:]]+', 1, 5, 'i') || ' ' || REGEXP_SUBSTR(color, '[[:alpha:]]+', 1, 5, 'i') into output from customer where customerid = id;
    return (output);
    end;
    
    function fn_edit_completeItems6(id IN NUMBER)
    return varchar2
    is
    output varchar2(50);
    begin
        select REGEXP_SUBSTR(clothes, '[[:alpha:]]+', 1, 6, 'i') || ' ' || REGEXP_SUBSTR(color, '[[:alpha:]]+', 1, 6, 'i') into output from customer where customerid = id;
    return (output);
    end;
    
    function fn_edit_completeItems7(id IN NUMBER)
    return varchar2
    is
    output varchar2(50);
    begin
        select REGEXP_SUBSTR(clothes, '[[:alpha:]]+', 1, 7, 'i') || ' ' || REGEXP_SUBSTR(color, '[[:alpha:]]+', 1, 7, 'i') into output from customer where customerid = id;
    return (output);
    end;
    
    function fn_edit_completeItems8(id IN NUMBER)
    return varchar2
    is
    output varchar2(50);
    begin
        select REGEXP_SUBSTR(clothes, '[[:alpha:]]+', 1, 8, 'i') || ' ' || REGEXP_SUBSTR(color, '[[:alpha:]]+', 1, 8, 'i') into output from customer where customerid = id;
    return (output);
    end;
    
    function fn_edit_completeItems9(id IN NUMBER)
    return varchar2
    is
    output varchar2(50);
    begin
        select REGEXP_SUBSTR(clothes, '[[:alpha:]]+', 1, 9, 'i') || ' ' || REGEXP_SUBSTR(color, '[[:alpha:]]+', 1, 9, 'i') into output from customer where customerid = id;
    return (output);
    end;
    
    function fn_edit_completeItems10(id IN NUMBER)
    return varchar2
    is
    output varchar2(50);
    begin
        select REGEXP_SUBSTR(clothes, '[[:alpha:]]+', 1, 10, 'i') || ' ' || REGEXP_SUBSTR(color, '[[:alpha:]]+', 1, 10, 'i') into output from customer where customerid = id;
    return (output);
    end;

end DRYCLEANER_PACKAGE;
/







select * from customer where total is null;
select * from completeitems where customerid = 261;


--uses the functions to easily insert into the completeitems table with having to
--drop and remake the table
insert into completeitems select customerid , first , last,
                                 DRYCLEANER_PACKAGE.fn_edit_completeItems1(customerid),
                                 DRYCLEANER_PACKAGE.fn_edit_completeItems2(customerid),
                                 DRYCLEANER_PACKAGE.fn_edit_completeItems3(customerid),
                                 DRYCLEANER_PACKAGE.fn_edit_completeItems4(customerid),
                                 DRYCLEANER_PACKAGE.fn_edit_completeItems5(customerid),
                                 DRYCLEANER_PACKAGE.fn_edit_completeItems6(customerid),
                                 DRYCLEANER_PACKAGE.fn_edit_completeItems7(customerid),
                                 DRYCLEANER_PACKAGE.fn_edit_completeItems8(customerid),
                                 DRYCLEANER_PACKAGE.fn_edit_completeItems9(customerid),
                                 DRYCLEANER_PACKAGE.fn_edit_completeItems10(customerid) 
                         from customer where customerid = 261;






--(8) Customer object used to hold important customer data in a more compact way
create type Cus_OBJ as object
(First       VARCHAR2(50),
Last         VARCHAR2(50),
Clothes      VARCHAR2(150),
Color        VARCHAR2(150),
Total        NUMBER
);
/

--this view creates an object for every customer and their id so all the 
--important customer data is in one table making finding information easier to find
create or replace view CUSTOMER_OBJ_VW (CustomerID, Cus) as
select CustomerID,
	Cus_OBJ(First , Last , Clothes , Color , Total)
from CUSTOMER;

select * from CUSTOMER_OBJ_VW;


--Global Extra Credit:
--this database can be used for any local/small drycleaners buisniss except for 
--the fundrasing event tip features which could be adapted to fit specific goals


/* _________________________________________________CUSTOMER CLOTHES & COLOR GENERATOR_________________________________________________

import random

c1 = ["Shirt", "Pants", "Shorts", "Sweater", "Jacket", "Coat", "Skirt", "Suit", "Dress", "Vest", "Shoes", "Hat", "Underwear", "Socks", "Mask", "Scarf", "Twin", "Full", "Queen", "King", "Blanket"]

c2 = ["White", "White", "White", "White", "White", "Black", "Black", "Black", "Black", "Black", "Red", "Red", "Blue", "Blue", "Green", "Yellow", "Purple", "Pink", "Orange", "Grey", "Grey", "Grey"]

num = random.randrange(1, 11)
x = 0
items = "\'"

for j in range(num):
	x = random.randrange(0, 21)
	items = items + c1[x]
	if j != (num-1):
		items = items + ","
    

items = items + "\' , \'"

for i in range(num):
	x = random.randrange(0, 22)
	items = items + c2[x]
	if i != (num-1):
		items = items + ","

items = items + "\'"

print(items)
    

*/

