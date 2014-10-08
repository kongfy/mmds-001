G = [0 1 1;
     0 0 1;
     0 0 1;];

r = pageRank(G, 0.7, 100)

G = [0 1 1;
     0 0 1;
     1 0 0;];

r = pageRank(G, 0.85, 100)

r = pageRank(G, 1, 5)

