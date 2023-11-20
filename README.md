## 1. Pythagorean theorem အသုံးပြုပြီး တွက်ချက်ပေးမဲ့ Functionတစ်ခု ရေးပပ. (Pythagorean thorem c = √a**2+b**2)

## 2. ပြည့်စုံတဲ့ parenthesis ဟုတ်မဟုတ် စစ်ပေးတဲ့ Functionတစ်ခုရေးပေးပါ.
```dart
    String rightData = '(hello)(world)';//true
    String falseData = '(hello)(world';//false
```

## 3. Timer Functionတစ်ခုရေးပေးပါ.

## 4. Map dataတစ်ခုမှာ Nested dataရှိမရှိစစ်ပေးတဲ့ Functionတစ်ခုရေးပေးပါ.
```dart
    Map rightData = {
        'name':'mg mg',
        'family':{
            'father':'blah',
        }
    };///true
    Map rightData2 = {
        'name':'mg mg',
        'stories':[],
    };///true
    Map falseData = {
        'name':'mg mg',
        'father':'blah',
    };///false
```

## 5. indexOf Functionမသုံးဘဲ စကားလုံးတစ်လုံးရဲ့ index numberကိုရှာပေးမဲ့ Functionတစ်ခုရေးပေးပါ.
```dart
    String data = 'Mg Mg';
    int indexOfFirstM = indexOf(data,’m’);///0
    int indexOfSecondM = indexOf(data,’m’,3);//3
```