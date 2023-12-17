clear all; clc; close all;

num = xlsread('2023 rezultati merenja u ucionici 56.xlsx');
STI = num(:,4)*100;
Razumljivost = num(:,2)*100;
Razumljivost_sum = num(:,3)*100;

Ucionica_sti=zeros(7,6);

Ucionica_sti(1,1)=STI(1);
Ucionica_sti(2,1)=STI(12);
Ucionica_sti(3,1)=STI(13);
Ucionica_sti(4,1)=STI(24);
Ucionica_sti(5,1)=STI(25);
Ucionica_sti(6,1)=STI(31);
Ucionica_sti(7,1)=STI(42);

Ucionica_sti(1,2)=STI(2);
Ucionica_sti(2,2)=STI(11);
Ucionica_sti(3,2)=STI(14);
Ucionica_sti(4,2)=STI(23);
Ucionica_sti(5,2)=STI(26);
Ucionica_sti(6,2)=STI(32);
Ucionica_sti(7,2)=STI(41);

Ucionica_sti(1,3)=STI(3);
Ucionica_sti(2,3)=STI(10);
Ucionica_sti(3,3)=STI(15);
Ucionica_sti(4,3)=STI(22);
Ucionica_sti(5,3)=STI(27);
Ucionica_sti(6,3)=STI(33);
Ucionica_sti(7,3)=STI(40);

Ucionica_sti(1,4)=STI(4);
Ucionica_sti(2,4)=STI(9);
Ucionica_sti(3,4)=STI(16);
Ucionica_sti(4,4)=STI(21);
Ucionica_sti(5,4)=STI(28);
Ucionica_sti(6,4)=STI(34);
Ucionica_sti(7,4)=STI(39);

Ucionica_sti(1,5)=STI(5);
Ucionica_sti(2,5)=STI(8);
Ucionica_sti(3,5)=STI(17);
Ucionica_sti(4,5)=STI(20);
Ucionica_sti(5,5)=STI(29);
Ucionica_sti(6,5)=STI(35);
Ucionica_sti(7,5)=STI(38);

Ucionica_sti(1,6)=STI(6);
Ucionica_sti(2,6)=STI(7);
Ucionica_sti(3,6)=STI(18);
Ucionica_sti(4,6)=STI(19);
Ucionica_sti(5,6)=STI(30);
Ucionica_sti(6,6)=STI(36);
Ucionica_sti(7,6)=STI(37);


figure, surf(Ucionica_sti,'EdgeColor','none'); view(90,90); colorbar;colormap turbo;
V1 = interpn(Ucionica_sti,5);
f1=figure, surf(V1','EdgeColor','none');view(90,90); colorbar;colormap turbo;
%saveas(f1,'slika1.jpg');

Ucionica_razumljivost(1,1)=Razumljivost(1);
Ucionica_razumljivost(2,1)=Razumljivost(12);
Ucionica_razumljivost(3,1)=Razumljivost(13);
Ucionica_razumljivost(4,1)=Razumljivost(24);
Ucionica_razumljivost(5,1)=Razumljivost(25);
Ucionica_razumljivost(6,1)=Razumljivost(31);
Ucionica_razumljivost(7,1)=Razumljivost(42);

Ucionica_razumljivost(1,2)=Razumljivost(2);
Ucionica_razumljivost(2,2)=Razumljivost(11);
Ucionica_razumljivost(3,2)=Razumljivost(14);
Ucionica_razumljivost(4,2)=Razumljivost(23);
Ucionica_razumljivost(5,2)=Razumljivost(26);
Ucionica_razumljivost(6,2)=Razumljivost(32);
Ucionica_razumljivost(7,2)=Razumljivost(41);

Ucionica_razumljivost(1,3)=Razumljivost(3);
Ucionica_razumljivost(2,3)=Razumljivost(10);
Ucionica_razumljivost(3,3)=Razumljivost(15);
Ucionica_razumljivost(4,3)=Razumljivost(22);
Ucionica_razumljivost(5,3)=Razumljivost(27);
Ucionica_razumljivost(6,3)=Razumljivost(33);
Ucionica_razumljivost(7,3)=Razumljivost(40);

Ucionica_razumljivost(1,4)=Razumljivost(4);
Ucionica_razumljivost(2,4)=Razumljivost(9);
Ucionica_razumljivost(3,4)=Razumljivost(16);
Ucionica_razumljivost(4,4)=Razumljivost(21);
Ucionica_razumljivost(5,4)=Razumljivost(28);
Ucionica_razumljivost(6,4)=Razumljivost(34);
Ucionica_razumljivost(7,4)=Razumljivost(39);

Ucionica_razumljivost(1,5)=Razumljivost(5);
Ucionica_razumljivost(2,5)=Razumljivost(8);
Ucionica_razumljivost(3,5)=Razumljivost(17);
Ucionica_razumljivost(4,5)=Razumljivost(20);
Ucionica_razumljivost(5,5)=Razumljivost(29);
Ucionica_razumljivost(6,5)=Razumljivost(35);
Ucionica_razumljivost(7,5)=Razumljivost(38);

Ucionica_razumljivost(1,6)=Razumljivost(6);
Ucionica_razumljivost(2,6)=Razumljivost(7);
Ucionica_razumljivost(3,6)=Razumljivost(18);
Ucionica_razumljivost(4,6)=Razumljivost(19);
Ucionica_razumljivost(5,6)=Razumljivost(30);
Ucionica_razumljivost(6,6)=Razumljivost(36);
Ucionica_razumljivost(7,6)=Razumljivost(37);

V2 = interpn(Ucionica_razumljivost,5);
f2=figure, surf(V2','EdgeColor','none');view(90,90); colorbar;colormap turbo;
%saveas(f2,'slika2.jpg');

Ucionica_razumljivost_sum(1,1)=Razumljivost_sum(1);
Ucionica_razumljivost_sum(2,1)=Razumljivost_sum(12);
Ucionica_razumljivost_sum(3,1)=Razumljivost_sum(13);
Ucionica_razumljivost_sum(4,1)=Razumljivost_sum(24);
Ucionica_razumljivost_sum(5,1)=Razumljivost_sum(25);
Ucionica_razumljivost_sum(6,1)=Razumljivost_sum(31);
Ucionica_razumljivost_sum(7,1)=Razumljivost_sum(42);

Ucionica_razumljivost_sum(1,2)=Razumljivost_sum(2);
Ucionica_razumljivost_sum(2,2)=Razumljivost_sum(11);
Ucionica_razumljivost_sum(3,2)=Razumljivost_sum(14);
Ucionica_razumljivost_sum(4,2)=Razumljivost_sum(23);
Ucionica_razumljivost_sum(5,2)=Razumljivost_sum(26);
Ucionica_razumljivost_sum(6,2)=Razumljivost_sum(32);
Ucionica_razumljivost_sum(7,2)=Razumljivost_sum(41);

Ucionica_razumljivost_sum(1,3)=Razumljivost_sum(3);
Ucionica_razumljivost_sum(2,3)=Razumljivost_sum(10);
Ucionica_razumljivost_sum(3,3)=Razumljivost_sum(15);
Ucionica_razumljivost_sum(4,3)=Razumljivost_sum(22);
Ucionica_razumljivost_sum(5,3)=Razumljivost_sum(27);
Ucionica_razumljivost_sum(6,3)=Razumljivost_sum(33);
Ucionica_razumljivost_sum(7,3)=Razumljivost_sum(40);

Ucionica_razumljivost_sum(1,4)=Razumljivost_sum(4);
Ucionica_razumljivost_sum(2,4)=Razumljivost_sum(9);
Ucionica_razumljivost_sum(3,4)=Razumljivost_sum(16);
Ucionica_razumljivost_sum(4,4)=Razumljivost_sum(21);
Ucionica_razumljivost_sum(5,4)=Razumljivost_sum(28);
Ucionica_razumljivost_sum(6,4)=Razumljivost_sum(34);
Ucionica_razumljivost_sum(7,4)=Razumljivost_sum(39);

Ucionica_razumljivost_sum(1,5)=Razumljivost_sum(5);
Ucionica_razumljivost_sum(2,5)=Razumljivost_sum(8);
Ucionica_razumljivost_sum(3,5)=Razumljivost_sum(17);
Ucionica_razumljivost_sum(4,5)=Razumljivost_sum(20);
Ucionica_razumljivost_sum(5,5)=Razumljivost_sum(29);
Ucionica_razumljivost_sum(6,5)=Razumljivost_sum(35);
Ucionica_razumljivost_sum(7,5)=Razumljivost_sum(38);

Ucionica_razumljivost_sum(1,6)=Razumljivost_sum(6);
Ucionica_razumljivost_sum(2,6)=Razumljivost_sum(7);
Ucionica_razumljivost_sum(3,6)=Razumljivost_sum(18);
Ucionica_razumljivost_sum(4,6)=Razumljivost_sum(19);
Ucionica_razumljivost_sum(5,6)=Razumljivost_sum(30);
Ucionica_razumljivost_sum(6,6)=Razumljivost_sum(36);
Ucionica_razumljivost_sum(7,6)=Razumljivost_sum(37);


V3 = interpn(Ucionica_razumljivost_sum,5);
f3=figure, surf(V3','EdgeColor','none');view(90,90); colorbar;colormap turbo;
%saveas(f3,'slika3.jpg');

figure, plot(STI, Razumljivost, '*'), hold on, plot([ 20 30 40 50 60 70 75 80 90],[ 14 37 57 76 86 94 97 98 99]);xlim([0 100]);ylim([0 100]);
xlabel('STI [%]'); ylabel('word score [%]'); title('Korelacija između vrednosti STI i logatomske razumljivosti');

figure, plot(STI, Razumljivost_sum, '*'), hold on, plot([ 20 30 40 50 60 70 75 80 90],[ 14 37 57 76 86 94 97 98 99]);xlim([0 100]);ylim([0 100]);
xlabel('STI [%]'); ylabel('word score [%]'); title('Korelacija između vrednosti STI i logatomske razumljivosti sa ambijentalnom bukom');

mesta = (1:42);
sti_sr_vrednost=mean(STI);
sti_medijana=median(STI);
rz_sr_vrednost=mean(Razumljivost);
rz_medijana=median(Razumljivost);
rz_sum_sr_vrednost=mean(Razumljivost_sum);
rz_sum_medijana=median(Razumljivost_sum);

figure, stem(mesta,STI), hold on,plot(mesta, sti_sr_vrednost*ones(1,42)),hold on,plot(mesta, sti_medijana*ones(1,42));
xlim([0 43]);ylim([0 100]);
xlabel('pozicije'); ylabel('STI [%]'); title('STI na razlicitim pozicijama u prostoriji');
subtitle(['srednja vrednost STI je ',num2str(sti_sr_vrednost),', medijana je ',num2str(sti_medijana) ]);
legend('izmeren STI', 'srednja vrednost', 'medijana');

figure, stem(mesta,Razumljivost), hold on,plot(mesta, rz_sr_vrednost*ones(1,42)),hold on,plot(mesta, rz_medijana*ones(1,42));
xlim([0 43]);ylim([0 100]);
xlabel('pozicije'); ylabel('WS [%]'); title('Razumljivost na razlicitim pozicijama u prostoriji');
subtitle(['srednja vrednost razumljivosti je ',num2str(rz_sr_vrednost),', medijana je ',num2str(rz_medijana) ]);
legend('izmerena razumljivost', 'srednja vrednost', 'medijana');

figure, stem(mesta,Razumljivost_sum), hold on,plot(mesta, rz_sum_sr_vrednost*ones(1,42)),hold on,plot(mesta, rz_sum_medijana*ones(1,42));
xlim([0 43]);ylim([0 100]);
xlabel('pozicije'); ylabel('WS [%]'); title('Razumljivost sa ambijentalnom bukom na razlicitim pozicijama u prostoriji');
subtitle(['srednja vrednost razumljivosti sa ambijentalnom bukom je ',num2str(rz_sum_sr_vrednost),', medijana je ',num2str(rz_sum_medijana) ]);
legend('izmerena razumljivost sa ambijentalnom bukom', 'srednja vrednost', 'medijana');

figure,subplot(3,1,1), stem(mesta,Razumljivost); xlim([0 43]);ylim([0 100]);
xlabel('pozicije'); ylabel('WS [%]'); title('Razumljivost  na razlicitim pozicijama u prostoriji');
subplot(3,1,2), stem(mesta,Razumljivost_sum); xlim([0 43]);ylim([0 100]);
xlabel('pozicije'); ylabel('WS [%]'); title('Razumljivost sa ambijentalnom bukom na razlicitim pozicijama u prostoriji');
subplot(3,1,3), stem(mesta,Razumljivost-Razumljivost_sum) ; xlim([0 43]);ylim([-10 100]);
xlabel('pozicije'); ylabel('STI [%]'); title('Razlika razumljivosti na razlicitim pozicijama u prostoriji');

V4 = interpn(Ucionica_razumljivost-Ucionica_razumljivost_sum,5);
f4=figure, surf(V4','EdgeColor','none');view(90,90); colorbar;colormap turbo;
%saveas(f4,'slika4.jpg');

%girls vs boys
rz_sr_vrednost_girls=Razumljivost(11)+Razumljivost(12)+Razumljivost(14)+Razumljivost(20)+Razumljivost(23)+Razumljivost(24)+Razumljivost(28)+Razumljivost(29)+Razumljivost(32)+Razumljivost(35)+Razumljivost(36)+Razumljivost(38)+Razumljivost(40)+Razumljivost(41)+Razumljivost(42);
rz_sr_vrednost_boys=sum(Razumljivost)-rz_sr_vrednost_girls;
rz_sr_vrednost_girls=rz_sr_vrednost_girls/15;
rz_sr_vrednost_boys=rz_sr_vrednost_boys/27;

rz_sum_sr_vrednost_girls=Razumljivost_sum(11)+Razumljivost_sum(12)+Razumljivost_sum(14)+Razumljivost_sum(20)+Razumljivost_sum(23)+Razumljivost_sum(24)+Razumljivost_sum(28)+Razumljivost_sum(29)+Razumljivost_sum(32)+Razumljivost_sum(35)+Razumljivost_sum(36)+Razumljivost_sum(38)+Razumljivost_sum(40)+Razumljivost_sum(41)+Razumljivost_sum(42);
rz_sum_sr_vrednost_boys=sum(Razumljivost_sum)-rz_sum_sr_vrednost_girls;
rz_sum_sr_vrednost_girls=rz_sum_sr_vrednost_girls/15;
rz_sum_sr_vrednost_boys=rz_sum_sr_vrednost_boys/27;
