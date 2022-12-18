# Self-Organizing-Maps-in-Mall-Customer

Bu veri seti, yalnızca pazar sepeti analizi olarak da bilinen müşteri segmentasyonu kavramlarını öğrenmek amacıyla oluşturulmuştur. Bunu en basit haliyle Self Organizing Maps tekniğini kullanarak gösterdim.

Veri Seti İçeriği:

Bir süpermarket alışveriş merkezine borcunuz var ve üyelik kartlarınız aracılığıyla Müşteri Kimliği, yaş, cinsiyet, yıllık gelir ve harcama puanı gibi müşterilerinize ilişkin bazı temel bilgilere sahipsiniz.
Harcama Puanı, müşteri davranışı ve satın alma verileri gibi tanımladığınız parametrelere göre müşteriye atadığınız bir şeydir.

Sorun bildirimi:
Alışveriş merkezinin sahibi sizsiniz ve [Hedef Müşteriler] ile kolayca yakınlaşabilecek müşterileri anlamak istiyorsunuz, böylece pazarlama ekibine anlam verilebilir ve strateji buna göre planlanabilir.

Gözlem: 
İki sınıfa (Erkek, Kadın) kabaca eşit olarak dağılmış 200 gözlemimiz var. Ayrıca Yaş, Gelir ve Puan özniteliklerinin maksimum değerlerinin aynı büyüklükte olduğunu görüyoruz, bu nedenle kendi kendini organize eden harita modelimizi oluştururken normalleştirmemek sorun olmayacak.

Müşteri segmentasyonu için kendi kendini organize eden bir harita modeli oluşturacağız.Harita modelini oluştururken  Kohonen paketini kullanacağız.Kohonen paketi, SOM'ların oluşturulmasını ve görselleştirilmesini kolaylaştıran, R'de iyi belgelenmiş bir pakettir.

****
English Explanation :

This dataset was created solely for the purpose of learning the concepts of customer segmentation, also known as market basket analysis. I have demonstrated this in its simplest form using the Self Organizing Maps technique.

Data Set Content:

You owe a supermarket mall and through your membership cards you have some basic information about your customers such as Customer ID, age, gender, annual income and spending points.
Spend Score is something you assign to a customer based on parameters you define, such as customer behavior and purchase data.

Problem statement:
You own the mall and want to understand customers who can easily engage with [Target Customers] so that the marketing team can be given meaning and the strategy planned accordingly.

Observation:
We have 200 observations roughly evenly distributed across two classes (Male, Female). We also see that the maximum values of the Age, Income, and Score attributes are of the same magnitude, so it's okay not to normalize when building our self-organizing map model.

We will create a self-organizing map model for customer segmentation. We will use the Kohonen package when creating the map model. The Kohonen package is a well-documented package in R that facilitates the creation and visualization of SOMs.
