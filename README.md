YSPopButton

### 1. Install 

```ruby

pod 'YSPopButton', :git => 'https://github.com/u16suzu/YSPopButton'

```

### 2. Usage

```objc

YSPopButton *pbtn = [[YSPopButton alloc]initWithFrame:CGRectMake(0, 0, 60, 60)];
UIImage *pbtn_img = [UIImage imageNamed:@"arrow_left"];
[pbtn setImage:pbtn_img forState:UIControlStateNormal];
pbtn.adjustsImageWhenHighlighted = NO;
[self.view addSubview:pbtn];

```

### 3. Example Video

