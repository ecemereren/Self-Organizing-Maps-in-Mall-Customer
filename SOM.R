install.packages("kohonen")
library(kohonen)

Mall_Customers <- Mall_Customers[,-2]
Mall_Customers1 <- Mall_Customers[,-1]
head(Mall_Customers1)

str(Mall_Customers1)

summary(Mall_Customers1)



#X ve Y koordinatı için 5x5 altıgen boyutlarıyla kendi kendini organize eden haritalar oluşturun
  
Mall_Customers1.som <- som(scale(Mall_Customers1), grid = somgrid(xdim = 5, ydim = 5, "hexagonal"))
plot(Mall_Customers1.som, type = "mapping")
plot(Mall_Customers1.som)

# X ve y koordinatı için 4x4 dikdörtgen boyutlarıyla kendi kendini organize eden haritalar oluşturun
Mall_Customers1.som <- som(scale(Mall_Customers1), grid = somgrid(xdim = 4, ydim = 4, "rectangular"))
plot(Mall_Customers1.som, type = "codes", palette.name = rainbow, main =  "4 by 4 Mapping Of Application Data")
plot(map,type= "count")

#Oluşturduğumuz her dairenin  X ve Y koordinatları
Mall_Customers1.som$grid$pts

#Her  daireye hangi nesnelerin dahil edildiğini bulma işlemi
Mall_Customers1.som$unit.classif

#Daireler üzerindeki her bir nesne biriminin konumunun açıklaması
text(Mall_Customers1.som$grid$pts, labels = Mall_Customers1.som$unit.classif, cex = 1)


#Her dairedeki birkaç nesneyi 5 kümede gruplandırmanın sonuçları ve Mesafeyi bulma
dist(Mall_Customers1.som$codes[[1]])
hclust((dist(Mall_Customers1.som$codes[[1]])))

#Küme Haritası Oluşturma

plot <- cutree(hclust(dist(Mall_Customers1.som$codes[[1]])), 5)
plot(Mall_Customers1.som, type = "codes", bgcol = rainbow(6) [plot])

#Küme arasına satır ekleme işlemi
add.cluster.boundaries(Mall_Customers1.som, plot)

#Denetimli Self Organizing Maps

#Veri Bölünmesi

set.seed(123)
ind <- sample(2, nrow(Mall_Customers1), replace = T, prob = c(0.7, 0.3))
train <- Mall_Customers1[ind == 1,]
test <- Mall_Customers1[ind == 2,]

# Normalizasyon
trainX <- scale(train[,-1])
testX <- scale(test[,-1],
               center = attr(trainX, "scaled:center"),
               scale = attr(trainX, "scaled:scale"))
trainY <- factor(train[,1])
Y <- factor(test[,1])
test[,1] <- 0
testXY <- list(independent = testX, dependent = test[,1])
# Classification & Prediction Model
set.seed(222)
map1 <- xyf(trainX,
            classvec2classmat(factor(trainY)),
            grid = somgrid(5, 5, "hexagonal"),
            rlen = 100)
plot(map1)

# Prediction
pred <- predict(map1, newdata = testXY)
table(Predicted = pred$predictions[[2]], Actual = Y)

# Cluster Boundaries
par(mfrow = c(1,2))
plot(map1, 
     type = 'codes',
     main = c("Codes X", "Codes Y"))
map1.hc <- cutree(hclust(dist(map1$codes[[2]])), 2)
add.cluster.boundaries(map1, map1.hc)
par(mfrow = c(1,1))# Classification & Prediction Model
set.seed(222)
map1 <- xyf(trainX,
            classvec2classmat(factor(trainY)),
            grid = somgrid(5, 5, "hexagonal"),
            rlen = 100)
plot(map1)

# Prediction
pred <- predict(map1, newdata = testXY)
table(Predicted = pred$predictions[[2]], Actual = Y)

# Cluster Boundaries
par(mfrow = c(1,2))
plot(map1, 
     type = 'codes',
     main = c("Codes X", "Codes Y"))
map1.hc <- cutree(hclust(dist(map1$codes[[2]])), 2)
add.cluster.boundaries(map1, map1.hc)
par(mfrow = c(1,1))


