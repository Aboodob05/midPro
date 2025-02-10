
List <String> area = ["","Bani Kinanah","Alramtha","irbid city","Alwasatea","Alshonah","Bani 3baid","Almazar","Altaibah","Alkorah"];
//غراف يمثل الوية اربد ال 9 وكل لواء مع مين متصل
Map<int, List<int>> graph = {
  1: [3,4,2],      //بني كنانه
  2: [3,6,1],       //الرمثا
  3: [6,1,4,8,7,2], //قصبة اربد
  4: [8,5,3,1],     //الوسطية
  5: [4,8,9],     //الشونة
  6: [3,7,2],       //بني عبيد
  7: [6,3,9],       //المزار
  8: [4,3,5,9],     //الطيبة
  9: [8,7,5],       //الكورة
};



//أحدث حملات التبرع
String compaigns = """1-Blood Donation Campaign at Yarmouk University, Call: 0778456855
2-Blood Donation Campaign at King Hussein Cancer Center, Call: 0778468941
3-Blood donation campaign in Irbid Blood Bank, Call: 0774521100

""";



//المستفيات التي يمكن الحجز فيها
Map<int,String> hospitals ={
  1 : "1-Princess Basma Educational Hospital",
  2: "2-Princess Rahma Educational Hospital",
  3: "3-Al-Yarmouk Governmental Hospital",
  4: "4-Irbid Islamic Hospital",
  5: "5-Ibn Al-Nafis Hospital",
  6: "6-King Abdullah University Hospital",
};




//بيانات المتبرعين
Map<int, List<List<String>>> data = {
  1: [
    ["Ali", "O-", "0778541125", "Bani Kinanah"],
    ["Saleh", "O+", "0772687425", "Bani Kinanah"],
    ["Omar", "A-", "0755577125", "Bani Kinanah"],
    ["Khalid", "B-", "0755551133", "Bani Kinanah"],
    ["Sara", "AB+", "0788884412", "Bani Kinanah"],
    ["Lina", "A+", "0785511266", "Bani Kinanah"],
    ["Hana", "O-", "0777411225", "Bani Kinanah"],
    ["Fahad", "B+", "0795512241", "Bani Kinanah"],
    ["Tariq", "AB-", "0789911477", "Bani Kinanah"],
    ["Mona", "A+", "0779993215", "Bani Kinanah"],
  ],
  2: [
    ["Ahmad", "O+", "0771112233", "Alramtha"],
    ["Noor", "A-", "0752223344", "Alramtha"],
    ["Mariam", "B-", "0783334455", "Alramtha"],
    ["Layla", "AB+", "0774445566", "Alramtha"],
    ["Hassan", "O-", "0795556677", "Alramtha"],
    ["Yara", "A+", "0786667788", "Alramtha"],
    ["Zaid", "B+", "0757778899", "Alramtha"],
    ["Nour", "AB-", "0788889900", "Alramtha"],
    ["Samir", "O+", "0799990011", "Alramtha"],
    ["Dina", "A-", "0770001122", "Alramtha"],
  ],
  3: [
    ["Fadi", "B-", "0751234567", "Irbid City"],
    ["Maha", "O+", "0772345678", "Irbid City"],
    ["Rami", "A-", "0783456789", "Irbid City"],
    ["Salma", "AB+", "0794567890", "Irbid City"],
    ["Nader", "O-", "0785678901", "Irbid City"],
    ["Alaa", "A+", "0776789012", "Irbid City"],
    ["Jana", "B+", "0787890123", "Irbid City"],
    ["Ola", "AB-", "0758901234", "Irbid City"],
    ["Karem", "O+", "0799012345", "Irbid City"],
    ["Huda", "A-", "0770123456", "Irbid City"],
  ],
  4: [
    ["Yousef", "B-", "0755678901", "Alwasatea"],
    ["Rana", "O+", "0776789012", "Alwasatea"],
    ["Ali2", "A-", "0787890123", "Alwasatea"],
    ["Fatima", "AB+", "0798901234", "Alwasatea"],
    ["Ibrahim", "O-", "0789012345", "Alwasatea"],
    ["Zainab", "A+", "0770123456", "Alwasatea"],
    ["Hadi", "B+", "0781234567", "Alwasatea"],
    ["Nada", "AB-", "0752345678", "Alwasatea"],
    ["Saif", "O+", "0793456789", "Alwasatea"],
    ["Aya", "A-", "0774567890", "Alwasatea"],
  ],
  5: [
    ["Khalil", "B-", "0756789012", "Alshonah"],
    ["Lamar", "O+", "0777890123", "Alshonah"],
    ["Anas", "A-", "0788901234", "Alshonah"],
    ["Shahd", "AB+", "0799012345", "Alshonah"],
    ["Farah", "O-", "0780123456", "Alshonah"],
    ["Bilal", "A+", "0771234567", "Alshonah"],
    ["Nada", "B+", "0782345678", "Alshonah"],
    ["Sami", "AB-", "0753456789", "Alshonah"],
    ["Rama", "O+", "0794567890", "Alshonah"],
    ["Tamer", "A-", "0775678901", "Alshonah"],
  ],
  6: [
    ["Hussein", "B-", "0758901234", "Bani 3baid"],
    ["Reem", "O+", "0779012345", "Bani 3baid"],
    ["Nasser", "A-", "0780123456", "Bani 3baid"],
    ["Haya", "AB+", "0791234567", "Bani 3baid"],
    ["Ali3", "O-", "0782345678", "Bani 3baid"],
    ["Mariam", "A+", "0773456789", "Bani 3baid"],
    ["Omar", "B+", "0784567890", "Bani 3baid"],
    ["Lina", "AB-", "0755678901", "Bani 3baid"],
    ["Sara", "O+", "0796789012", "Bani 3baid"],
    ["Tariq", "A-", "0777890123", "Bani 3baid"],
  ],
  7: [
    ["Ahmad", "B-", "0759012345", "Almazar"],
    ["Noor", "O+", "0770123456", "Almazar"],
    ["Mariam", "A-", "0781234567", "Almazar"],
    ["Layla", "AB+", "0792345678", "Almazar"],
    ["Hassan", "O-", "0783456789", "Almazar"],
    ["Yara", "A+", "0774567890", "Almazar"],
    ["Zaid", "B+", "0785678901", "Almazar"],
    ["Nour", "AB-", "0756789012", "Almazar"],
    ["Samir", "O+", "0797890123", "Almazar"],
    ["Dina", "A-", "0778901234", "Almazar"],
  ],
  8: [
    ["Fadi", "B-", "0752345678", "Altaibah"],
    ["Maha", "O+", "0773456789", "Altaibah"],
    ["Rami", "A-", "0784567890", "Altaibah"],
    ["Salma", "AB+", "0795678901", "Altaibah"],
    ["Nader", "O-", "0786789012", "Altaibah"],
    ["Alaa", "A+", "0777890123", "Altaibah"],
    ["Jana", "B+", "0788901234", "Altaibah"],
    ["Ola", "AB-", "0759012345", "Altaibah"],
    ["Karem", "O+", "0790123456", "Altaibah"],
    ["Huda", "A-", "0771234567", "Altaibah"],
  ],
  9: [
    ["Yousef", "B-", "0754567890", "Alkorah"],
    ["Rana", "O+", "0775678901", "Alkorah"],
    ["Ali4", "A-", "0786789012", "Alkorah"],
    ["Fatima", "AB+", "0797890123", "Alkorah"],
    ["Ibrahim", "O-", "0788901234", "Alkorah"],
    ["Zainab", "A+", "0779012345", "Alkorah"],
    ["Hadi", "B+", "0780123456", "Alkorah"],
    ["Nada", "AB-", "0751234567", "Alkorah"],
    ["Saif", "O+", "0792345678", "Alkorah"],
    ["Aya", "A-", "0773456789", "Alkorah"],
  ],
};
