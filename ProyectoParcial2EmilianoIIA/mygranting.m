function result = mygranting(image)
j = 4;
%%FIRST DIMENSION
f = image(:,:,1);
[M, N]= size(f);

g = zeros(M,N/j);
cont =1;

for c=1:j:N
    g(:,cont) = f(:,c);
    cont = cont +1;
end

h1 = zeros(M/j,N/j);
cont = 1;
for c=1:j:M
    h1(cont,:) = g(c,:);
    cont = cont +1;
end
%%SECOND DIMENSION
f2 = image(:,:,2);
[M, N]= size(f2);

g = zeros(M,N/j);
cont =1;

for c=1:j:N
    g(:,cont) = f2(:,c);
    cont = cont +1;
end

h2 = zeros(M/j,N/j);
cont = 1;
for c=1:j:M
    h2(cont,:) = g(c,:);
    cont = cont +1;
end


%%THIRD DIMENSION
f3 = image(:,:,3);
[M, N]= size(f3);

g = zeros(M,N/j);
cont =1;

for c=1:j:N
    g(:,cont) = f3(:,c);
    cont = cont +1;
end

h3 = zeros(M/j,N/j);
cont = 1;
for c=1:j:M
    h3(cont,:) = g(c,:);
    cont = cont +1;
end
h = cat(3,h1,h2,h3);
result = [h h; h h];