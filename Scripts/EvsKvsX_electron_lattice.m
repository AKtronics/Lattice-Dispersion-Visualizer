%E vs K vs X

%axes inputs 
Lmin = input('Enter minimum wavelength(nm): ');
Lmax = input('Enter maximum wavelength(nm): ');
Xmin = input('Enter minimum X axis position(nm): ');
Xmax = input('Enter maximum X axis position(nm): ');

%model properties
t = input('Enter hopping energy t(ev): ');
a = input('Enter lattice constant a(nm): ');
V0 = input('Enter lattice potential amplitude V0(eV): ');
F  = input('Enter electric field E(V/m): ');
N = input('Enter number of points: ');
q = 1.6e-19; %electron charge
F = F*1e-9; %(ev/nm)

%axes range
X = linspace(Xmin,Xmax,N);
kmin = 2*pi./Lmin;
kmax = 2*pi./Lmax;
k = linspace(kmin,kmax,N);
%K=k;
K =sort(k);
%B=0.5;
%V0 = V0.*cos(X/B);
Xmid = (Xmin + Xmax)/2;
Lmid = (Lmin + Lmax)/2;
Kmid = 2*pi /Lmid;

%% E(ev) vs K(rad/nm) plot

E_k = -2*t*cos(K.*a) +V0*cos((2*pi*Xmid)/a) - F*Xmid ;
figure;
plot(K,E_k,'b','LineWidth',2)
grid on
xlabel('Wavevector k (rad/nm)')
ylabel('Energy E (eV)')
title('E vs k  (x = midpoint)')
axis tight
fprintf('Midpoint x  = %.4f nm\n', Xmid);

%% E(ev) vs X(nm) plot

E_x = -2*t*cos(Kmid*a) +V0*cos((2*pi.*X)/a) - F.*X ;
figure;
plot(X,E_x,'r','LineWidth',2)
grid on
xlabel('Position x (nm)')
ylabel('Energy E (eV)')
title('E vs x  (k = midpoint)')
axis tight
fprintf('Midpoint K  = %.4f rad/nm\n', Kmid);

%% E(ev) vs K(ev) vs X(nm) plot

[Ko,Xo] = meshgrid(K,X);
E = -2*t*cos(Ko.*a) +V0.*cos((2*pi.*Xo)/a) - F.*Xo ;
figure;
surf(Ko,Xo,E,'EdgeColor','none')
colormap turbo
shading interp
clim([-20 10])
colorbar
%scatter3(Ko,Xo,E)
xlabel('Wavevector k (rad/nm)')
ylabel('Position x (nm)')
zlabel('Energy E (eV)')
title('3D Position-dependent Energy Band Diagram  : E(k,x)')
view(55,30)
axis tight
grid on


