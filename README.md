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
