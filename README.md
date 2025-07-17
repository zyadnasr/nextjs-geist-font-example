# مطحنة حسن - تطبيق الجوال 📱

## نظام إدارة مطحنة البن مع الوضع المظلم والتطبيق المحمول

تم تطوير هذا التطبيق باستخدام Next.js و Capacitor ليعمل كتطبيق ويب وتطبيق محمول على Android و iOS.

## ✨ المميزات الجديدة

### 🌙 الوضع المظلم (Dark Mode)
- تبديل سهل بين الوضع الفاتح والمظلم
- حفظ تلقائي لتفضيل المستخدم
- تصميم أنيق ومريح للعين في الإضاءة المنخفضة
- دعم كامل لجميع الصفحات والمكونات

### 📱 تطبيق الجوال
- تطبيق أصلي لنظام Android
- تطبيق أصلي لنظام iOS
- واجهة متجاوبة تماماً مع الجوال
- أداء سريع وسلس

## 🚀 كيفية تشغيل التطبيق

### 1. تشغيل النسخة الويب
```bash
npm run dev
```
ثم افتح المتصفح على: `http://localhost:8000`

### 2. بناء التطبيق للجوال

#### أولاً: بناء الملفات الثابتة
```bash
npm run export
```

#### ثانياً: مزامنة الملفات مع المنصات المحمولة
```bash
npx cap sync
```

### 3. تشغيل تطبيق Android

#### المتطلبات:
- Android Studio مثبت على الجهاز
- Android SDK
- Java Development Kit (JDK)

#### الأوامر:
```bash
# بناء ومزامنة التطبيق
npm run cap:build

# فتح Android Studio
npm run cap:android
```

أو يمكنك استخدام الأوامر المنفصلة:
```bash
npx cap open android
```

### 4. تشغيل تطبيق iOS

#### المتطلبات:
- macOS
- Xcode مثبت
- iOS Simulator أو جهاز iPhone/iPad

#### الأوامر:
```bash
# بناء ومزامنة التطبيق
npm run cap:build

# فتح Xcode
npm run cap:ios
```

أو يمكنك استخدام الأوامر المنفصلة:
```bash
npx cap open ios
```

## 🛠️ إعداد بيئة التطوير

### لتطوير Android:
1. تحميل وتثبيت [Android Studio](https://developer.android.com/studio)
2. تثبيت Android SDK
3. إعداد متغيرات البيئة:
   ```bash
   export ANDROID_HOME=$HOME/Android/Sdk
   export PATH=$PATH:$ANDROID_HOME/emulator
   export PATH=$PATH:$ANDROID_HOME/tools
   export PATH=$PATH:$ANDROID_HOME/tools/bin
   export PATH=$PATH:$ANDROID_HOME/platform-tools
   ```

### لتطوير iOS:
1. تحميل وتثبيت [Xcode](https://apps.apple.com/us/app/xcode/id497799835) من App Store
2. تثبيت Xcode Command Line Tools:
   ```bash
   xcode-select --install
   ```

## 📋 أوامر مفيدة

```bash
# تشغيل التطبيق في وضع التطوير
npm run dev

# بناء التطبيق للإنتاج
npm run build

# تصدير ملفات ثابتة
npm run export

# مزامنة مع المنصات المحمولة
npx cap sync

# إضافة منصة جديدة
npx cap add android
npx cap add ios

# فتح المشروع في IDE المناسب
npx cap open android
npx cap open ios

# تشغيل التطبيق على الجهاز
npx cap run android
npx cap run ios
```

## 🎨 استخدام الوضع المظلم

- انقر على أيقونة القمر 🌙 في شريط التنقل للتبديل للوضع المظلم
- انقر على أيقونة الشمس ☀️ للعودة للوضع الفاتح
- سيتم حفظ اختيارك تلقائياً

## 📱 تثبيت التطبيق على الهاتف

### Android:
1. افتح Android Studio
2. اختر جهاز Android أو محاكي
3. انقر على "Run" لتثبيت التطبيق

### iOS:
1. افتح Xcode
2. اختر جهاز iOS أو محاكي
3. انقر على "Run" لتثبيت التطبيق

## 🔧 إعدادات إضافية

### تخصيص أيقونة التطبيق:
- Android: استبدل الملفات في `android/app/src/main/res/mipmap-*/`
- iOS: استبدل الملفات في `ios/App/App/Assets.xcassets/AppIcon.appiconset/`

### تخصيص شاشة البداية:
- Android: عدّل `android/app/src/main/res/drawable*/splash.png`
- iOS: عدّل `ios/App/App/Assets.xcassets/Splash.imageset/`

## 🐛 حل المشاكل الشائعة

### مشكلة: "sync could not run--missing out directory"
```bash
npm run export
npx cap sync
```

### مشكلة: Android Studio لا يتعرف على المشروع
```bash
cd android
./gradlew clean
cd ..
npx cap sync android
```

### مشكلة: Xcode لا يبني المشروع
```bash
cd ios/App
pod install
cd ../..
npx cap sync ios
```

## 📞 الدعم

إذا واجهت أي مشاكل:
1. تأكد من تثبيت جميع المتطلبات
2. راجع [وثائق Capacitor](https://capacitorjs.com/docs)
3. تحقق من [وثائق Next.js](https://nextjs.org/docs)

## 🎉 مبروك!

الآن لديك تطبيق مطحنة حسن يعمل على:
- ✅ المتصفح (PWA)
- ✅ Android
- ✅ iOS
- ✅ الوضع المظلم والفاتح
- ✅ واجهة عربية كاملة
- ✅ مساعد ذكي بالذكاء الاصطناعي
