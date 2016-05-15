.class public Landroid/widget/RadialTimePickerView;
.super Landroid/view/View;
.source "RadialTimePickerView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RadialTimePickerView$1;,
        Landroid/widget/RadialTimePickerView$IntHolder;,
        Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;,
        Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;,
        Landroid/widget/RadialTimePickerView$OnValueSelectedListener;
    }
.end annotation


# static fields
.field private static final ALPHA_OPAQUE:I = 0xff

.field private static final ALPHA_SELECTOR:I = 0x3c

.field private static final ALPHA_TRANSPARENT:I = 0x0

.field private static final AM:I = 0x0

.field private static final CENTER_RADIUS:I = 0x2

.field private static final COSINE_30_DEGREES:F

.field private static final DEBUG:Z = false

.field private static final DEBUG_COLOR:I = 0x20ff0000

.field private static final DEBUG_STROKE_WIDTH:I = 0x2

.field private static final DEBUG_TEXT_COLOR:I = 0x60ff0000

.field private static final DEGREES_FOR_ONE_HOUR:I = 0x1e

.field private static final DEGREES_FOR_ONE_MINUTE:I = 0x6

.field private static final HOURS:I = 0x0

.field private static final HOURS_INNER:I = 0x2

.field private static final HOURS_NUMBERS:[I

.field private static final HOURS_NUMBERS_24:[I

.field private static final MINUTES:I = 0x1

.field private static final MINUTES_NUMBERS:[I

.field private static final PM:I = 0x1

.field private static final SELECTOR_CIRCLE:I = 0x0

.field private static final SELECTOR_DOT:I = 0x1

.field private static final SELECTOR_LINE:I = 0x2

.field private static final SINE_30_DEGREES:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "ClockView"

.field private static sSnapPrefer30sMap:[I


# instance fields
.field private final mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

.field private final mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

.field private mAmOrPm:I

.field private final mAnimationRadiusMultiplier:[F

.field mChangedDuringTouch:Z

.field private final mCircleRadius:[F

.field private final mCircleRadiusMultiplier:[F

.field private final mColor:[I

.field private final mColorSelector:[[I

.field private mDisabledAlpha:I

.field private mHalfwayHypotenusePoint:I

.field private final mHours12Texts:[Ljava/lang/String;

.field private final mHoursToMinutesAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private final mInnerHours24Texts:[Ljava/lang/String;

.field private final mInnerTextGridHeights:[F

.field private final mInnerTextGridWidths:[F

.field private mInnerTextHours:[Ljava/lang/String;

.field private mInnerTextSize:F

.field private mInputEnabled:Z

.field private final mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

.field private mIs24HourMode:Z

.field private mIsOnInnerCircle:Z

.field private final mLineLength:[I

.field private mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

.field private mMaxHypotenuseForOuterNumber:I

.field private mMinHypotenuseForInnerNumber:I

.field private final mMinuteToHoursAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private final mMinutesTexts:[Ljava/lang/String;

.field private final mNumbersRadiusMultiplier:[F

.field private final mOuterHours24Texts:[Ljava/lang/String;

.field private mOuterTextHours:[Ljava/lang/String;

.field private mOuterTextMinutes:[Ljava/lang/String;

.field private final mPaint:[Landroid/graphics/Paint;

.field private final mPaintBackground:Landroid/graphics/Paint;

.field private final mPaintCenter:Landroid/graphics/Paint;

.field private final mPaintDebug:Landroid/graphics/Paint;

.field private final mPaintSelector:[[Landroid/graphics/Paint;

.field private final mSelectionDegrees:[I

.field private final mSelectionRadius:[I

.field private final mSelectionRadiusMultiplier:F

.field private mShowHours:Z

.field private final mTextGridHeights:[[F

.field private final mTextGridWidths:[[F

.field private final mTextSize:[F

.field private final mTextSizeMultiplier:[F

.field private final mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

.field private mTransition:Landroid/animation/AnimatorSet;

.field private final mTransitionEndRadiusMultiplier:F

.field private final mTransitionMidRadiusMultiplier:F

.field private final mTypeface:Landroid/graphics/Typeface;

.field private mXCenter:I

.field private mYCenter:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0xc

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    sput v0, Landroid/widget/RadialTimePickerView;->COSINE_30_DEGREES:F

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS_24:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/widget/RadialTimePickerView;->MINUTES_NUMBERS:[I

    const/16 v0, 0x169

    new-array v0, v0, [I

    sput-object v0, Landroid/widget/RadialTimePickerView;->sSnapPrefer30sMap:[I

    invoke-static {}, Landroid/widget/RadialTimePickerView;->preparePrefer30sMap()V

    return-void

    nop

    :array_0
    .array-data 4
        0xc
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
    .end array-data

    :array_1
    .array-data 4
        0x0
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x5
        0xa
        0xf
        0x14
        0x19
        0x1e
        0x23
        0x28
        0x2d
        0x32
        0x37
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v0, 0x101049d

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    invoke-direct/range {p0 .. p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v12, Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v13}, Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;-><init>(Landroid/widget/RadialTimePickerView;Landroid/widget/RadialTimePickerView$1;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    const/16 v12, 0xc

    new-array v12, v12, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    const/16 v12, 0xc

    new-array v12, v12, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    const/16 v12, 0xc

    new-array v12, v12, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    const/16 v12, 0xc

    new-array v12, v12, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    const/4 v12, 0x2

    new-array v12, v12, [Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    const/4 v12, 0x2

    new-array v12, v12, [I

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mColor:[I

    const/4 v12, 0x2

    new-array v12, v12, [Landroid/widget/RadialTimePickerView$IntHolder;

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    const/4 v12, 0x2

    const/4 v13, 0x3

    filled-new-array {v12, v13}, [I

    move-result-object v12

    const-class v13, Landroid/graphics/Paint;

    invoke-static {v13, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v12, 0x2

    const/4 v13, 0x3

    filled-new-array {v12, v13}, [I

    move-result-object v12

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[I

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mColorSelector:[[I

    const/4 v12, 0x2

    const/4 v13, 0x3

    filled-new-array {v12, v13}, [I

    move-result-object v12

    const-class v13, Landroid/widget/RadialTimePickerView$IntHolder;

    invoke-static {v13, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[Landroid/widget/RadialTimePickerView$IntHolder;

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaintDebug:Landroid/graphics/Paint;

    const/4 v12, 0x3

    new-array v12, v12, [F

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    const/4 v12, 0x2

    new-array v12, v12, [F

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mTextSize:[F

    const/4 v12, 0x2

    const/4 v13, 0x7

    filled-new-array {v12, v13}, [I

    move-result-object v12

    sget-object v13, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[F

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mTextGridHeights:[[F

    const/4 v12, 0x2

    const/4 v13, 0x7

    filled-new-array {v12, v13}, [I

    move-result-object v12

    sget-object v13, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[F

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mTextGridWidths:[[F

    const/4 v12, 0x7

    new-array v12, v12, [F

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mInnerTextGridHeights:[F

    const/4 v12, 0x7

    new-array v12, v12, [F

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mInnerTextGridWidths:[F

    const/4 v12, 0x2

    new-array v12, v12, [F

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mCircleRadiusMultiplier:[F

    const/4 v12, 0x3

    new-array v12, v12, [F

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    const/4 v12, 0x3

    new-array v12, v12, [F

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mTextSizeMultiplier:[F

    const/4 v12, 0x3

    new-array v12, v12, [F

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mAnimationRadiusMultiplier:[F

    const/4 v12, 0x3

    new-array v12, v12, [I

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mLineLength:[I

    const/4 v12, 0x3

    new-array v12, v12, [I

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mSelectionRadius:[I

    const/4 v12, 0x3

    new-array v12, v12, [I

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    new-instance v10, Landroid/util/TypedValue;

    invoke-direct {v10}, Landroid/util/TypedValue;-><init>()V

    .local v10, "outValue":Landroid/util/TypedValue;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v12

    const v13, 0x1010033

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v10, v14}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {v10}, Landroid/util/TypedValue;->getFloat()F

    move-result v12

    const/high16 v13, 0x437f0000    # 255.0f

    mul-float/2addr v12, v13

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Landroid/widget/RadialTimePickerView;->mDisabledAlpha:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .local v11, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mContext:Landroid/content/Context;

    sget-object v13, Lcom/android/internal/R$styleable;->TimePicker:[I

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v12, v0, v13, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .local v3, "a":Landroid/content/res/TypedArray;
    const-string v12, "sans-serif"

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    array-length v12, v12

    if-ge v7, v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    new-instance v13, Landroid/widget/RadialTimePickerView$IntHolder;

    const/16 v14, 0xff

    invoke-direct {v13, v14}, Landroid/widget/RadialTimePickerView$IntHolder;-><init>(I)V

    aput-object v13, v12, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    array-length v12, v12

    if-ge v7, v12, :cond_2

    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v12, v12, v7

    array-length v12, v12

    if-ge v8, v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v12, v12, v7

    new-instance v13, Landroid/widget/RadialTimePickerView$IntHolder;

    const/16 v14, 0xff

    invoke-direct {v13, v14}, Landroid/widget/RadialTimePickerView$IntHolder;-><init>(I)V

    aput-object v13, v12, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .end local v8    # "j":I
    :cond_2
    const/4 v12, 0x3

    const v13, 0x10600fa

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    .local v9, "numbersTextColor":I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    const/4 v13, 0x0

    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    aput-object v14, v12, v13

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    sget-object v13, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mColor:[I

    const/4 v13, 0x0

    aput v9, v12, v13

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    const/4 v13, 0x1

    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    aput-object v14, v12, v13

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    const/4 v13, 0x1

    aget-object v12, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    const/4 v13, 0x1

    aget-object v12, v12, v13

    sget-object v13, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mColor:[I

    const/4 v13, 0x1

    aput v9, v12, v13

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    invoke-virtual {v12, v9}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    sget-object v13, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const/4 v13, 0x0

    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    aput-object v14, v12, v13

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mColorSelector:[[I

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const/4 v13, 0x0

    const/4 v14, 0x5

    const v15, 0x10600fd

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    aput v14, v12, v13

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const/4 v13, 0x1

    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    aput-object v14, v12, v13

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const/4 v13, 0x1

    aget-object v12, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mColorSelector:[[I

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x5

    const v15, 0x10600fd

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    aput v14, v12, v13

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const/4 v13, 0x2

    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    aput-object v14, v12, v13

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const/4 v13, 0x2

    aget-object v12, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const/4 v13, 0x2

    aget-object v12, v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mColorSelector:[[I

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const/4 v13, 0x2

    const/4 v14, 0x5

    const v15, 0x10600fd

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    aput v14, v12, v13

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v13, 0x1

    aget-object v12, v12, v13

    const/4 v13, 0x0

    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    aput-object v14, v12, v13

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v13, 0x1

    aget-object v12, v12, v13

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mColorSelector:[[I

    const/4 v13, 0x1

    aget-object v12, v12, v13

    const/4 v13, 0x0

    const/4 v14, 0x5

    const v15, 0x10600fd

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    aput v14, v12, v13

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v13, 0x1

    aget-object v12, v12, v13

    const/4 v13, 0x1

    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    aput-object v14, v12, v13

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v13, 0x1

    aget-object v12, v12, v13

    const/4 v13, 0x1

    aget-object v12, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mColorSelector:[[I

    const/4 v13, 0x1

    aget-object v12, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x5

    const v15, 0x10600fd

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    aput v14, v12, v13

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v13, 0x1

    aget-object v12, v12, v13

    const/4 v13, 0x2

    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    aput-object v14, v12, v13

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v13, 0x1

    aget-object v12, v12, v13

    const/4 v13, 0x2

    aget-object v12, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v13, 0x1

    aget-object v12, v12, v13

    const/4 v13, 0x2

    aget-object v12, v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mColorSelector:[[I

    const/4 v13, 0x1

    aget-object v12, v12, v13

    const/4 v13, 0x2

    const/4 v14, 0x5

    const v15, 0x10600fd

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    aput v14, v12, v13

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    const/4 v13, 0x4

    const v14, 0x10600fe

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    new-instance v12, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;-><init>(Landroid/widget/RadialTimePickerView;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/RadialTimePickerView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->getImportantForAccessibility()I

    move-result v12

    if-nez v12, :cond_3

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/RadialTimePickerView;->setImportantForAccessibility(I)V

    :cond_3
    invoke-direct/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->initHoursAndMinutesText()V

    invoke-direct/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->initData()V

    const v12, 0x1040129

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Landroid/widget/RadialTimePickerView;->mTransitionMidRadiusMultiplier:F

    const v12, 0x104012a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Landroid/widget/RadialTimePickerView;->mTransitionEndRadiusMultiplier:F

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mTextGridHeights:[[F

    const/4 v13, 0x0

    const/4 v14, 0x7

    new-array v14, v14, [F

    aput-object v14, v12, v13

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mTextGridHeights:[[F

    const/4 v13, 0x1

    const/4 v14, 0x7

    new-array v14, v14, [F

    aput-object v14, v12, v13

    const v12, 0x1040121

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Landroid/widget/RadialTimePickerView;->mSelectionRadiusMultiplier:F

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/RadialTimePickerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/RadialTimePickerView;->setClickable(Z)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v4

    .local v4, "calendar":Ljava/util/Calendar;
    const/16 v12, 0xb

    invoke-virtual {v4, v12}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .local v5, "currentHour":I
    const/16 v12, 0xc

    invoke-virtual {v4, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .local v6, "currentMinute":I
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v12, v13}, Landroid/widget/RadialTimePickerView;->setCurrentHourInternal(IZZ)V

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v12}, Landroid/widget/RadialTimePickerView;->setCurrentMinuteInternal(IZ)V

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/RadialTimePickerView;->setHapticFeedbackEnabled(Z)V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/RadialTimePickerView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;

    .prologue
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    return v0
.end method

.method static synthetic access$1000(Landroid/widget/RadialTimePickerView;)[F
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;

    .prologue
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    return-object v0
.end method

.method static synthetic access$1100(Landroid/widget/RadialTimePickerView;)[I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;

    .prologue
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionRadius:[I

    return-object v0
.end method

.method static synthetic access$1200(Landroid/widget/RadialTimePickerView;I)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getDegreesForHour(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Landroid/widget/RadialTimePickerView;I)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getDegreesForMinute(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/RadialTimePickerView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;

    .prologue
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    return v0
.end method

.method static synthetic access$1500(Landroid/widget/RadialTimePickerView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;

    .prologue
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/RadialTimePickerView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;

    .prologue
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    return v0
.end method

.method static synthetic access$300(II)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .prologue
    invoke-static {p0, p1}, Landroid/widget/RadialTimePickerView;->snapOnly30s(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/widget/RadialTimePickerView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;

    .prologue
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    return v0
.end method

.method static synthetic access$402(Landroid/widget/RadialTimePickerView;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    return p1
.end method

.method static synthetic access$500(Landroid/widget/RadialTimePickerView;FF)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/RadialTimePickerView;->getDegreesFromXY(FF)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/widget/RadialTimePickerView;IZ)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/RadialTimePickerView;->getHourForDegrees(IZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/widget/RadialTimePickerView;I)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getMinuteForDegrees(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/widget/RadialTimePickerView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;

    .prologue
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    return v0
.end method

.method static synthetic access$900(Landroid/widget/RadialTimePickerView;)[F
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;

    .prologue
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    return-object v0
.end method

.method private static calculateGridSizes(Landroid/graphics/Paint;FFFF[F[F)V
    .locals 5
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "numbersRadius"    # F
    .param p2, "xCenter"    # F
    .param p3, "yCenter"    # F
    .param p4, "textSize"    # F
    .param p5, "textGridHeights"    # [F
    .param p6, "textGridWidths"    # [F

    .prologue
    move v0, p1

    .local v0, "offset1":F
    sget v3, Landroid/widget/RadialTimePickerView;->COSINE_30_DEGREES:F

    mul-float v1, p1, v3

    .local v1, "offset2":F
    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, p1, v3

    .local v2, "offset3":F
    invoke-virtual {p0, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Landroid/graphics/Paint;->descent()F

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr p3, v3

    const/4 v3, 0x0

    sub-float v4, p3, v0

    aput v4, p5, v3

    const/4 v3, 0x0

    sub-float v4, p2, v0

    aput v4, p6, v3

    const/4 v3, 0x1

    sub-float v4, p3, v1

    aput v4, p5, v3

    const/4 v3, 0x1

    sub-float v4, p2, v1

    aput v4, p6, v3

    const/4 v3, 0x2

    sub-float v4, p3, v2

    aput v4, p5, v3

    const/4 v3, 0x2

    sub-float v4, p2, v2

    aput v4, p6, v3

    const/4 v3, 0x3

    aput p3, p5, v3

    const/4 v3, 0x3

    aput p2, p6, v3

    const/4 v3, 0x4

    add-float v4, p3, v2

    aput v4, p5, v3

    const/4 v3, 0x4

    add-float v4, p2, v2

    aput v4, p6, v3

    const/4 v3, 0x5

    add-float v4, p3, v1

    aput v4, p5, v3

    const/4 v3, 0x5

    add-float v4, p2, v1

    aput v4, p6, v3

    const/4 v3, 0x6

    add-float v4, p3, v0

    aput v4, p5, v3

    const/4 v3, 0x6

    add-float v4, p2, v0

    aput v4, p6, v3

    return-void
.end method

.method private calculateGridSizesHours()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v0, v0, v7

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    aget v2, v2, v7

    mul-float/2addr v0, v2

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mAnimationRadiusMultiplier:[F

    aget v2, v2, v7

    mul-float v1, v0, v2

    .local v1, "numbersRadius":F
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v0, v0, v7

    iget v2, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v2, v2

    iget v4, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v3, v4

    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[F

    aget v4, v4, v7

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mTextGridHeights:[[F

    aget-object v5, v5, v7

    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mTextGridWidths:[[F

    aget-object v6, v6, v7

    invoke-static/range {v0 .. v6}, Landroid/widget/RadialTimePickerView;->calculateGridSizes(Landroid/graphics/Paint;FFFF[F[F)V

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v0, v0, v8

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    aget v2, v2, v8

    mul-float/2addr v0, v2

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mAnimationRadiusMultiplier:[F

    aget v2, v2, v8

    mul-float v3, v0, v2

    .local v3, "innerNumbersRadius":F
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v2, v0, v7

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v4, v0

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v5, v0

    iget v6, p0, Landroid/widget/RadialTimePickerView;->mInnerTextSize:F

    iget-object v7, p0, Landroid/widget/RadialTimePickerView;->mInnerTextGridHeights:[F

    iget-object v8, p0, Landroid/widget/RadialTimePickerView;->mInnerTextGridWidths:[F

    invoke-static/range {v2 .. v8}, Landroid/widget/RadialTimePickerView;->calculateGridSizes(Landroid/graphics/Paint;FFFF[F[F)V

    .end local v3    # "innerNumbersRadius":F
    :cond_0
    return-void
.end method

.method private calculateGridSizesMinutes()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v0, v0, v7

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    aget v2, v2, v7

    mul-float/2addr v0, v2

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mAnimationRadiusMultiplier:[F

    aget v2, v2, v7

    mul-float v1, v0, v2

    .local v1, "numbersRadius":F
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v0, v0, v7

    iget v2, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v2, v2

    iget v3, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[F

    aget v4, v4, v7

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mTextGridHeights:[[F

    aget-object v5, v5, v7

    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mTextGridWidths:[[F

    aget-object v6, v6, v7

    invoke-static/range {v0 .. v6}, Landroid/widget/RadialTimePickerView;->calculateGridSizes(Landroid/graphics/Paint;FFFF[F[F)V

    return-void
.end method

.method private drawCenter(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawCircleBackground(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawDebug(Landroid/graphics/Canvas;)V
    .locals 26
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    const/4 v10, 0x0

    aget v5, v5, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    mul-float v19, v5, v10

    .local v19, "outerRadius":F
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/RadialTimePickerView;->mPaintDebug:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v5, v10, v1, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    const/4 v10, 0x0

    aget v5, v5, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    const/4 v11, 0x2

    aget v10, v10, v11

    mul-float v17, v5, v10

    .local v17, "innerRadius":F
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/RadialTimePickerView;->mPaintDebug:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v5, v10, v1, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaintDebug:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v10, v11, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v5, v5

    sub-float v6, v5, v19

    .local v6, "left":F
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v5, v5

    sub-float v7, v5, v19

    .local v7, "top":F
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v5, v5

    add-float v8, v5, v19

    .local v8, "right":F
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v5, v5

    add-float v9, v5, v19

    .local v9, "bottom":F
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/RadialTimePickerView;->mPaintDebug:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    sub-float v6, v5, v10

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    sub-float v7, v5, v10

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    add-float v8, v5, v10

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    add-float v9, v5, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/RadialTimePickerView;->mPaintDebug:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->getWidth()I

    move-result v5

    int-to-float v13, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->getHeight()I

    move-result v5

    int-to-float v14, v5

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/RadialTimePickerView;->mPaintDebug:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const-string v5, "%02d:%02d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v5, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .local v21, "selected":Ljava/lang/String;
    new-instance v18, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x2

    const/4 v10, -0x2

    move-object/from16 v0, v18

    invoke-direct {v0, v5, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .local v18, "lp":Landroid/view/ViewGroup$LayoutParams;
    new-instance v22, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .local v22, "tv":Landroid/widget/TextView;
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v10}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v20

    .local v20, "paint":Landroid/graphics/Paint;
    const/high16 v5, 0x60ff0000

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v23

    .local v23, "width":I
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Paint;->descent()F

    move-result v5

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Paint;->ascent()F

    move-result v10

    sub-float v16, v5, v10

    .local v16, "height":F
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    div-int/lit8 v10, v23, 0x2

    sub-int/2addr v5, v10

    int-to-float v0, v5

    move/from16 v24, v0

    .local v24, "x":F
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v5, v5

    const/high16 v10, 0x3fc00000    # 1.5f

    mul-float v10, v10, v16

    add-float v25, v5, v10

    .local v25, "y":F
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v24

    move/from16 v3, v25

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView;->drawSelector(Landroid/graphics/Canvas;I)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView;->drawSelector(Landroid/graphics/Canvas;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private drawSelector(Landroid/graphics/Canvas;I)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "index"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mLineLength:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v3, v3, p2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    aget v4, v4, p2

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RadialTimePickerView;->mAnimationRadiusMultiplier:[F

    aget v4, v4, p2

    mul-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v2, p2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v2, v2, p2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    .local v14, "selectionRadians":D
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/RadialTimePickerView;->mLineLength:[I

    aget v3, v3, p2

    int-to-double v4, v3

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v4, v4, v16

    double-to-int v3, v4

    add-int v11, v2, v3

    .local v11, "pointX":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/RadialTimePickerView;->mLineLength:[I

    aget v3, v3, p2

    int-to-double v4, v3

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v4, v4, v16

    double-to-int v3, v4

    sub-int v12, v2, v3

    .local v12, "pointY":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mColorSelector:[[I

    rem-int/lit8 v3, p2, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget v9, v2, v3

    .local v9, "color":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    rem-int/lit8 v3, p2, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/RadialTimePickerView$IntHolder;->getValue()I

    move-result v8

    .local v8, "alpha":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    rem-int/lit8 v3, p2, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget-object v7, v2, v3

    .local v7, "paint":Landroid/graphics/Paint;
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Landroid/widget/RadialTimePickerView;->getMultipliedAlpha(II)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float v2, v11

    int-to-float v3, v12

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RadialTimePickerView;->mSelectionRadius:[I

    aget v4, v4, p2

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v2, v2, p2

    rem-int/lit8 v2, v2, 0x1e

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mColorSelector:[[I

    rem-int/lit8 v3, p2, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x1

    aget v9, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    rem-int/lit8 v3, p2, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/RadialTimePickerView$IntHolder;->getValue()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    rem-int/lit8 v3, p2, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x1

    aget-object v7, v2, v3

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Landroid/widget/RadialTimePickerView;->getMultipliedAlpha(II)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float v2, v11

    int-to-float v3, v12

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RadialTimePickerView;->mSelectionRadius:[I

    aget v4, v4, p2

    mul-int/lit8 v4, v4, 0x2

    div-int/lit8 v4, v4, 0x7

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mColorSelector:[[I

    rem-int/lit8 v3, p2, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aget v9, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    rem-int/lit8 v3, p2, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/RadialTimePickerView$IntHolder;->getValue()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    rem-int/lit8 v3, p2, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aget-object v7, v2, v3

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Landroid/widget/RadialTimePickerView;->getMultipliedAlpha(II)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v4, v2

    int-to-float v5, v11

    int-to-float v6, v12

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mLineLength:[I

    aget v2, v2, p2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/RadialTimePickerView;->mSelectionRadius:[I

    aget v3, v3, p2

    sub-int v10, v2, v3

    .local v10, "lineLength":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-double v4, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v4, v4, v16

    double-to-int v3, v4

    add-int v11, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-double v4, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v4, v4, v16

    double-to-int v3, v4

    sub-int v12, v2, v3

    goto :goto_0
.end method

.method private drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;[Ljava/lang/String;[F[FLandroid/graphics/Paint;II)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "textSize"    # F
    .param p3, "typeface"    # Landroid/graphics/Typeface;
    .param p4, "texts"    # [Ljava/lang/String;
    .param p5, "textGridWidths"    # [F
    .param p6, "textGridHeights"    # [F
    .param p7, "paint"    # Landroid/graphics/Paint;
    .param p8, "color"    # I
    .param p9, "alpha"    # I

    .prologue
    invoke-virtual {p7, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p7, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {p7, p8}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0, p8, p9}, Landroid/widget/RadialTimePickerView;->getMultipliedAlpha(II)I

    move-result v0

    invoke-virtual {p7, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v0, 0x0

    aget-object v0, p4, v0

    const/4 v1, 0x3

    aget v1, p5, v1

    const/4 v2, 0x0

    aget v2, p6, v2

    invoke-virtual {p1, v0, v1, v2, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v0, 0x1

    aget-object v0, p4, v0

    const/4 v1, 0x4

    aget v1, p5, v1

    const/4 v2, 0x1

    aget v2, p6, v2

    invoke-virtual {p1, v0, v1, v2, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v0, 0x2

    aget-object v0, p4, v0

    const/4 v1, 0x5

    aget v1, p5, v1

    const/4 v2, 0x2

    aget v2, p6, v2

    invoke-virtual {p1, v0, v1, v2, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v0, 0x3

    aget-object v0, p4, v0

    const/4 v1, 0x6

    aget v1, p5, v1

    const/4 v2, 0x3

    aget v2, p6, v2

    invoke-virtual {p1, v0, v1, v2, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v0, 0x4

    aget-object v0, p4, v0

    const/4 v1, 0x5

    aget v1, p5, v1

    const/4 v2, 0x4

    aget v2, p6, v2

    invoke-virtual {p1, v0, v1, v2, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v0, 0x5

    aget-object v0, p4, v0

    const/4 v1, 0x4

    aget v1, p5, v1

    const/4 v2, 0x5

    aget v2, p6, v2

    invoke-virtual {p1, v0, v1, v2, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v0, 0x6

    aget-object v0, p4, v0

    const/4 v1, 0x3

    aget v1, p5, v1

    const/4 v2, 0x6

    aget v2, p6, v2

    invoke-virtual {p1, v0, v1, v2, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v0, 0x7

    aget-object v0, p4, v0

    const/4 v1, 0x2

    aget v1, p5, v1

    const/4 v2, 0x5

    aget v2, p6, v2

    invoke-virtual {p1, v0, v1, v2, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/16 v0, 0x8

    aget-object v0, p4, v0

    const/4 v1, 0x1

    aget v1, p5, v1

    const/4 v2, 0x4

    aget v2, p6, v2

    invoke-virtual {p1, v0, v1, v2, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/16 v0, 0x9

    aget-object v0, p4, v0

    const/4 v1, 0x0

    aget v1, p5, v1

    const/4 v2, 0x3

    aget v2, p6, v2

    invoke-virtual {p1, v0, v1, v2, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/16 v0, 0xa

    aget-object v0, p4, v0

    const/4 v1, 0x1

    aget v1, p5, v1

    const/4 v2, 0x2

    aget v2, p6, v2

    invoke-virtual {p1, v0, v1, v2, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/16 v0, 0xb

    aget-object v0, p4, v0

    const/4 v1, 0x2

    aget v1, p5, v1

    const/4 v2, 0x1

    aget v2, p6, v2

    invoke-virtual {p1, v0, v1, v2, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getDegreesForHour(I)I
    .locals 2
    .param p1, "hour"    # I

    .prologue
    const/16 v1, 0xc

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_1

    if-lt p1, v1, :cond_0

    add-int/lit8 p1, p1, -0xc

    :cond_0
    :goto_0
    mul-int/lit8 v0, p1, 0x1e

    return v0

    :cond_1
    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0
.end method

.method private getDegreesForMinute(I)I
    .locals 1
    .param p1, "minute"    # I

    .prologue
    mul-int/lit8 v0, p1, 0x6

    return v0
.end method

.method private getDegreesFromXY(FF)I
    .locals 14
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    iget v10, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v10, v10

    sub-float v10, p2, v10

    iget v11, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v11, v11

    sub-float v11, p2, v11

    mul-float/2addr v10, v11

    iget v11, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v11, v11

    sub-float v11, p1, v11

    iget v12, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v12, v12

    sub-float v12, p1, v12

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .local v2, "hypotenuse":D
    iget-object v10, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    float-to-double v10, v10

    cmpl-double v10, v2, v10

    if-lez v10, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-boolean v10, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v10, :cond_4

    iget-boolean v10, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v10, :cond_4

    iget v10, p0, Landroid/widget/RadialTimePickerView;->mMinHypotenuseForInnerNumber:I

    int-to-double v10, v10

    cmpl-double v10, v2, v10

    if-ltz v10, :cond_2

    iget v10, p0, Landroid/widget/RadialTimePickerView;->mHalfwayHypotenusePoint:I

    int-to-double v10, v10

    cmpg-double v10, v2, v10

    if-gtz v10, :cond_2

    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    :cond_1
    :goto_1
    iget v10, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v10, v10

    sub-float v10, p2, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .local v7, "opposite":F
    float-to-double v10, v7

    div-double/2addr v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->asin(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    add-double/2addr v10, v12

    double-to-int v0, v10

    .local v0, "degrees":I
    iget v10, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v10, v10

    cmpl-float v10, p1, v10

    if-lez v10, :cond_6

    const/4 v8, 0x1

    .local v8, "rightSide":Z
    :goto_2
    iget v10, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v10, v10

    cmpg-float v10, p2, v10

    if-gez v10, :cond_7

    const/4 v9, 0x1

    .local v9, "topSide":Z
    :goto_3
    if-eqz v8, :cond_9

    if-eqz v9, :cond_8

    rsub-int/lit8 v0, v0, 0x5a

    goto :goto_0

    .end local v0    # "degrees":I
    .end local v7    # "opposite":F
    .end local v8    # "rightSide":Z
    .end local v9    # "topSide":Z
    :cond_2
    iget v10, p0, Landroid/widget/RadialTimePickerView;->mMaxHypotenuseForOuterNumber:I

    int-to-double v10, v10

    cmpg-double v10, v2, v10

    if-gtz v10, :cond_3

    iget v10, p0, Landroid/widget/RadialTimePickerView;->mHalfwayHypotenusePoint:I

    int-to-double v10, v10

    cmpl-double v10, v2, v10

    if-ltz v10, :cond_3

    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    goto :goto_0

    :cond_4
    iget-boolean v10, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v10, :cond_5

    const/4 v4, 0x0

    .local v4, "index":I
    :goto_4
    iget-object v10, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v10, v10, v4

    iget-object v11, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    aget v11, v11, v4

    mul-float v5, v10, v11

    .local v5, "length":F
    float-to-double v10, v5

    sub-double v10, v2, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    double-to-int v1, v10

    .local v1, "distanceToNumber":I
    iget-object v10, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v10, v10, v4

    const/high16 v11, 0x3f800000    # 1.0f

    iget-object v12, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    aget v12, v12, v4

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    float-to-int v6, v10

    .local v6, "maxAllowedDistance":I
    if-le v1, v6, :cond_1

    const/4 v0, -0x1

    goto/16 :goto_0

    .end local v1    # "distanceToNumber":I
    .end local v4    # "index":I
    .end local v5    # "length":F
    .end local v6    # "maxAllowedDistance":I
    :cond_5
    const/4 v4, 0x1

    goto :goto_4

    .restart local v0    # "degrees":I
    .restart local v7    # "opposite":F
    :cond_6
    const/4 v8, 0x0

    goto :goto_2

    .restart local v8    # "rightSide":Z
    :cond_7
    const/4 v9, 0x0

    goto :goto_3

    .restart local v9    # "topSide":Z
    :cond_8
    add-int/lit8 v0, v0, 0x5a

    goto/16 :goto_0

    :cond_9
    if-eqz v9, :cond_a

    add-int/lit16 v0, v0, 0x10e

    goto/16 :goto_0

    :cond_a
    rsub-int v0, v0, 0x10e

    goto/16 :goto_0
.end method

.method private static getFadeInAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;
    .locals 16
    .param p0, "target"    # Landroid/widget/RadialTimePickerView$IntHolder;
    .param p1, "startAlpha"    # I
    .param p2, "endAlpha"    # I
    .param p3, "updateListener"    # Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    .prologue
    const/16 v5, 0x1f4

    .local v5, "duration":I
    const/high16 v3, 0x3e800000    # 0.25f

    .local v3, "delayMultiplier":F
    const/high16 v12, 0x3f800000    # 1.0f

    .local v12, "transitionDurationMultiplier":F
    add-float v11, v12, v3

    .local v11, "totalDurationMultiplier":F
    int-to-float v13, v5

    mul-float/2addr v13, v11

    float-to-int v10, v13

    .local v10, "totalDuration":I
    int-to-float v13, v5

    mul-float/2addr v13, v3

    int-to-float v14, v10

    div-float v4, v13, v14

    .local v4, "delayPoint":F
    const/4 v13, 0x0

    move/from16 v0, p1

    invoke-static {v13, v0}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v7

    .local v7, "kf0":Landroid/animation/Keyframe;
    move/from16 v0, p1

    invoke-static {v4, v0}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v8

    .local v8, "kf1":Landroid/animation/Keyframe;
    const/high16 v13, 0x3f800000    # 1.0f

    move/from16 v0, p2

    invoke-static {v13, v0}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v9

    .local v9, "kf2":Landroid/animation/Keyframe;
    const-string v13, "value"

    const/4 v14, 0x3

    new-array v14, v14, [Landroid/animation/Keyframe;

    const/4 v15, 0x0

    aput-object v7, v14, v15

    const/4 v15, 0x1

    aput-object v8, v14, v15

    const/4 v15, 0x2

    aput-object v9, v14, v15

    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .local v6, "fadeIn":Landroid/animation/PropertyValuesHolder;
    const/4 v13, 0x1

    new-array v13, v13, [Landroid/animation/PropertyValuesHolder;

    const/4 v14, 0x0

    aput-object v6, v13, v14

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v13

    int-to-long v14, v10

    invoke-virtual {v13, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .local v2, "animator":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v2
.end method

.method private static getFadeOutAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;
    .locals 5
    .param p0, "target"    # Landroid/widget/RadialTimePickerView$IntHolder;
    .param p1, "startAlpha"    # I
    .param p2, "endAlpha"    # I
    .param p3, "updateListener"    # Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    .prologue
    const/16 v1, 0x1f4

    .local v1, "duration":I
    const-string v2, "value"

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput p1, v3, v4

    const/4 v4, 0x1

    aput p2, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "animator":Landroid/animation/ObjectAnimator;
    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method private getHourForDegrees(IZ)I
    .locals 3
    .param p1, "degrees"    # I
    .param p2, "innerCircle"    # Z

    .prologue
    div-int/lit8 v1, p1, 0x1e

    rem-int/lit8 v0, v1, 0xc

    .local v0, "hour":I
    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    if-nez v0, :cond_1

    const/16 v0, 0xc

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p2, :cond_0

    if-eqz v0, :cond_0

    add-int/lit8 v0, v0, 0xc

    goto :goto_0

    :cond_2
    iget v1, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0xc

    goto :goto_0
.end method

.method private getMinuteForDegrees(I)I
    .locals 1
    .param p1, "degrees"    # I

    .prologue
    div-int/lit8 v0, p1, 0x6

    return v0
.end method

.method private getMultipliedAlpha(II)I
    .locals 6
    .param p1, "argb"    # I
    .param p2, "alpha"    # I

    .prologue
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-double v0, v0

    int-to-double v2, p2

    const-wide v4, 0x406fe00000000000L    # 255.0

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private static getRadiusDisappearAnimator(Ljava/lang/Object;Ljava/lang/String;Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;FF)Landroid/animation/ObjectAnimator;
    .locals 11
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "radiusPropertyName"    # Ljava/lang/String;
    .param p2, "updateListener"    # Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;
    .param p3, "midRadiusMultiplier"    # F
    .param p4, "endRadiusMultiplier"    # F

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const v5, 0x3e4ccccd    # 0.2f

    .local v5, "midwayPoint":F
    const/16 v1, 0x1f4

    .local v1, "duration":I
    const/4 v7, 0x0

    invoke-static {v7, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    .local v2, "kf0":Landroid/animation/Keyframe;
    invoke-static {v5, p3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    .local v3, "kf1":Landroid/animation/Keyframe;
    invoke-static {v8, p4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    .local v4, "kf2":Landroid/animation/Keyframe;
    const/4 v7, 0x3

    new-array v7, v7, [Landroid/animation/Keyframe;

    aput-object v2, v7, v9

    aput-object v3, v7, v10

    const/4 v8, 0x2

    aput-object v4, v7, v8

    invoke-static {p1, v7}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .local v6, "radiusDisappear":Landroid/animation/PropertyValuesHolder;
    new-array v7, v10, [Landroid/animation/PropertyValuesHolder;

    aput-object v6, v7, v9

    invoke-static {p0, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    int-to-long v8, v1

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "animator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method private static getRadiusReappearAnimator(Ljava/lang/Object;Ljava/lang/String;Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;FF)Landroid/animation/ObjectAnimator;
    .locals 18
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "radiusPropertyName"    # Ljava/lang/String;
    .param p2, "updateListener"    # Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;
    .param p3, "midRadiusMultiplier"    # F
    .param p4, "endRadiusMultiplier"    # F

    .prologue
    const v10, 0x3e4ccccd    # 0.2f

    .local v10, "midwayPoint":F
    const/16 v5, 0x1f4

    .local v5, "duration":I
    const/high16 v3, 0x3e800000    # 0.25f

    .local v3, "delayMultiplier":F
    const/high16 v14, 0x3f800000    # 1.0f

    .local v14, "transitionDurationMultiplier":F
    add-float v13, v14, v3

    .local v13, "totalDurationMultiplier":F
    int-to-float v15, v5

    mul-float/2addr v15, v13

    float-to-int v12, v15

    .local v12, "totalDuration":I
    int-to-float v15, v5

    mul-float/2addr v15, v3

    int-to-float v0, v12

    move/from16 v16, v0

    div-float v4, v15, v16

    .local v4, "delayPoint":F
    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v16, v4

    mul-float v16, v16, v10

    sub-float v10, v15, v16

    const/4 v15, 0x0

    move/from16 v0, p4

    invoke-static {v15, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    .local v6, "kf0":Landroid/animation/Keyframe;
    move/from16 v0, p4

    invoke-static {v4, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v7

    .local v7, "kf1":Landroid/animation/Keyframe;
    move/from16 v0, p3

    invoke-static {v10, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v8

    .local v8, "kf2":Landroid/animation/Keyframe;
    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-static/range {v15 .. v16}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v9

    .local v9, "kf3":Landroid/animation/Keyframe;
    const/4 v15, 0x4

    new-array v15, v15, [Landroid/animation/Keyframe;

    const/16 v16, 0x0

    aput-object v6, v15, v16

    const/16 v16, 0x1

    aput-object v7, v15, v16

    const/16 v16, 0x2

    aput-object v8, v15, v16

    const/16 v16, 0x3

    aput-object v9, v15, v16

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .local v11, "radiusReappear":Landroid/animation/PropertyValuesHolder;
    const/4 v15, 0x1

    new-array v15, v15, [Landroid/animation/PropertyValuesHolder;

    const/16 v16, 0x0

    aput-object v11, v15, v16

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v15

    int-to-long v0, v12

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .local v2, "animator":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v2
.end method

.method private handleTouchInput(FFZZ)Z
    .locals 11
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "forceSelection"    # Z
    .param p4, "autoAdvance"    # Z

    .prologue
    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-boolean v6, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    .local v6, "wasOnInnerCircle":Z
    invoke-direct {p0, p1, p2}, Landroid/widget/RadialTimePickerView;->getDegreesFromXY(FF)I

    move-result v0

    .local v0, "degrees":I
    const/4 v9, -0x1

    if-ne v0, v9, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    .local v2, "selectionDegrees":[I
    iget-boolean v9, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v9, :cond_8

    invoke-static {v0, v7}, Landroid/widget/RadialTimePickerView;->snapOnly30s(II)I

    move-result v9

    rem-int/lit16 v3, v9, 0x168

    .local v3, "snapDegrees":I
    aget v9, v2, v7

    if-ne v9, v3, :cond_2

    aget v9, v2, v10

    if-ne v9, v3, :cond_2

    iget-boolean v9, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-eq v6, v9, :cond_7

    :cond_2
    move v5, v8

    .local v5, "valueChanged":Z
    :goto_1
    aput v3, v2, v7

    aput v3, v2, v10

    const/4 v4, 0x0

    .local v4, "type":I
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v1

    .local v1, "newValue":I
    :goto_2
    if-nez v5, :cond_3

    if-nez p3, :cond_3

    if-eqz p4, :cond_0

    :cond_3
    iget-object v7, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    if-eqz v7, :cond_4

    iget-object v7, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    invoke-interface {v7, v4, v1, p4}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    :cond_4
    if-nez v5, :cond_5

    if-eqz p3, :cond_6

    :cond_5
    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Landroid/widget/RadialTimePickerView;->performHapticFeedback(I)Z

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    :cond_6
    move v7, v8

    goto :goto_0

    .end local v1    # "newValue":I
    .end local v4    # "type":I
    .end local v5    # "valueChanged":Z
    :cond_7
    move v5, v7

    goto :goto_1

    .end local v3    # "snapDegrees":I
    :cond_8
    invoke-static {v0}, Landroid/widget/RadialTimePickerView;->snapPrefer30s(I)I

    move-result v9

    rem-int/lit16 v3, v9, 0x168

    .restart local v3    # "snapDegrees":I
    aget v9, v2, v8

    if-eq v9, v3, :cond_9

    move v5, v8

    .restart local v5    # "valueChanged":Z
    :goto_3
    aput v3, v2, v8

    const/4 v4, 0x1

    .restart local v4    # "type":I
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v1

    .restart local v1    # "newValue":I
    goto :goto_2

    .end local v1    # "newValue":I
    .end local v4    # "type":I
    .end local v5    # "valueChanged":Z
    :cond_9
    move v5, v7

    goto :goto_3
.end method

.method private initData()V
    .locals 8

    .prologue
    const/16 v2, 0xff

    const/16 v4, 0x3c

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mOuterTextMinutes:[Ljava/lang/String;

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .local v0, "res":Landroid/content/res/Resources;
    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mCircleRadiusMultiplier:[F

    const v5, 0x1040120

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v1, v3

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    const v5, 0x1040125

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v1, v3

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextSizeMultiplier:[F

    const v5, 0x1040128

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v1, v3

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    const v5, 0x1040124

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v1, v7

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextSizeMultiplier:[F

    const v5, 0x1040127

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v1, v7

    :goto_1
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAnimationRadiusMultiplier:[F

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v1, v3

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAnimationRadiusMultiplier:[F

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v1, v7

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAnimationRadiusMultiplier:[F

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v1, v6

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v5, v1, v3

    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v1, :cond_4

    move v1, v2

    :goto_2
    invoke-virtual {v5, v1}, Landroid/widget/RadialTimePickerView$IntHolder;->setValue(I)V

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v5, v1, v6

    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v1, :cond_5

    move v1, v3

    :goto_3
    invoke-virtual {v5, v1}, Landroid/widget/RadialTimePickerView$IntHolder;->setValue(I)V

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v3

    aget-object v5, v1, v3

    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v1, :cond_6

    move v1, v4

    :goto_4
    invoke-virtual {v5, v1}, Landroid/widget/RadialTimePickerView$IntHolder;->setValue(I)V

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v3

    aget-object v5, v1, v6

    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v1, :cond_7

    move v1, v2

    :goto_5
    invoke-virtual {v5, v1}, Landroid/widget/RadialTimePickerView$IntHolder;->setValue(I)V

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v3

    aget-object v5, v1, v7

    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v1, :cond_8

    move v1, v4

    :goto_6
    invoke-virtual {v5, v1}, Landroid/widget/RadialTimePickerView$IntHolder;->setValue(I)V

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v6

    aget-object v5, v1, v3

    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v1, :cond_9

    move v1, v3

    :goto_7
    invoke-virtual {v5, v1}, Landroid/widget/RadialTimePickerView$IntHolder;->setValue(I)V

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v6

    aget-object v1, v1, v6

    iget-boolean v5, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v5, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/RadialTimePickerView$IntHolder;->setValue(I)V

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v6

    aget-object v1, v1, v7

    iget-boolean v2, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v2, :cond_a

    :goto_8
    invoke-virtual {v1, v3}, Landroid/widget/RadialTimePickerView$IntHolder;->setValue(I)V

    return-void

    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_1
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    goto/16 :goto_0

    .restart local v0    # "res":Landroid/content/res/Resources;
    :cond_2
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mCircleRadiusMultiplier:[F

    const v5, 0x104011f

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v1, v3

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    const v5, 0x1040123

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v1, v3

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextSizeMultiplier:[F

    const v5, 0x1040126

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v1, v3

    goto/16 :goto_1

    :cond_3
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mCircleRadiusMultiplier:[F

    const v5, 0x104011f

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v1, v6

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    const v5, 0x1040123

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v1, v6

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextSizeMultiplier:[F

    const v5, 0x1040126

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v1, v6

    goto/16 :goto_1

    :cond_4
    move v1, v3

    goto/16 :goto_2

    :cond_5
    move v1, v2

    goto/16 :goto_3

    :cond_6
    move v1, v3

    goto/16 :goto_4

    :cond_7
    move v1, v3

    goto/16 :goto_5

    :cond_8
    move v1, v3

    goto/16 :goto_6

    :cond_9
    move v1, v4

    goto/16 :goto_7

    :cond_a
    move v3, v4

    goto :goto_8
.end method

.method private initHoursAndMinutesText()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    const-string v2, "%d"

    new-array v3, v6, [Ljava/lang/Object;

    sget-object v4, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    const-string v2, "%02d"

    new-array v3, v6, [Ljava/lang/Object;

    sget-object v4, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS_24:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    const-string v2, "%d"

    new-array v3, v6, [Ljava/lang/Object;

    sget-object v4, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    const-string v2, "%02d"

    new-array v3, v6, [Ljava/lang/Object;

    sget-object v4, Landroid/widget/RadialTimePickerView;->MINUTES_NUMBERS:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static preparePrefer30sMap()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .local v3, "snappedOutputDegrees":I
    const/4 v0, 0x1

    .local v0, "count":I
    const/16 v2, 0x8

    .local v2, "expectedCount":I
    const/4 v1, 0x0

    .local v1, "degrees":I
    :goto_0
    const/16 v4, 0x169

    if-ge v1, v4, :cond_3

    sget-object v4, Landroid/widget/RadialTimePickerView;->sSnapPrefer30sMap:[I

    aput v3, v4, v1

    if-ne v0, v2, :cond_2

    add-int/lit8 v3, v3, 0x6

    const/16 v4, 0x168

    if-ne v3, v4, :cond_0

    const/4 v2, 0x7

    :goto_1
    const/4 v0, 0x1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    rem-int/lit8 v4, v3, 0x1e

    if-nez v4, :cond_1

    const/16 v2, 0xe

    goto :goto_1

    :cond_1
    const/4 v2, 0x4

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private setAnimationRadiusMultiplierHours(F)V
    .locals 2
    .param p1, "animationRadiusMultiplier"    # F

    .prologue
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mAnimationRadiusMultiplier:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mAnimationRadiusMultiplier:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    return-void
.end method

.method private setAnimationRadiusMultiplierMinutes(F)V
    .locals 2
    .param p1, "animationRadiusMultiplier"    # F

    .prologue
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mAnimationRadiusMultiplier:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    return-void
.end method

.method private setCurrentHourInternal(IZZ)V
    .locals 8
    .param p1, "hour"    # I
    .param p2, "callback"    # Z
    .param p3, "autoAdvance"    # Z

    .prologue
    const/16 v7, 0xc

    const/4 v3, 0x1

    const/4 v4, 0x0

    rem-int/lit8 v5, p1, 0xc

    mul-int/lit8 v1, v5, 0x1e

    .local v1, "degrees":I
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aput v1, v5, v4

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    const/4 v6, 0x2

    aput v1, v5, v6

    if-eqz p1, :cond_0

    rem-int/lit8 v5, p1, 0x18

    if-ge v5, v7, :cond_4

    :cond_0
    move v0, v4

    .local v0, "amOrPm":I
    :goto_0
    iget-boolean v5, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v5, :cond_5

    if-lt p1, v3, :cond_5

    if-gt p1, v7, :cond_5

    move v2, v3

    .local v2, "isOnInnerCircle":Z
    :goto_1
    iget v3, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    if-ne v3, v0, :cond_1

    iget-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-eq v3, v2, :cond_2

    :cond_1
    iput v0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    iput-boolean v2, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->updateLayoutData()V

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v3}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->invalidateRoot()V

    :cond_2
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    if-eqz p2, :cond_3

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    invoke-interface {v3, v4, p1, p3}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    :cond_3
    return-void

    .end local v0    # "amOrPm":I
    .end local v2    # "isOnInnerCircle":Z
    :cond_4
    move v0, v3

    goto :goto_0

    .restart local v0    # "amOrPm":I
    :cond_5
    move v2, v4

    goto :goto_1
.end method

.method private setCurrentMinuteInternal(IZ)V
    .locals 3
    .param p1, "minute"    # I
    .param p2, "callback"    # Z

    .prologue
    const/4 v2, 0x1

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    rem-int/lit8 v1, p1, 0x3c

    mul-int/lit8 v1, v1, 0x6

    aput v1, v0, v2

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v2, p1, v1}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    :cond_0
    return-void
.end method

.method private static snapOnly30s(II)I
    .locals 5
    .param p0, "degrees"    # I
    .param p1, "forceHigherOrLower"    # I

    .prologue
    const/16 v2, 0x1e

    .local v2, "stepSize":I
    div-int/lit8 v3, p0, 0x1e

    mul-int/lit8 v1, v3, 0x1e

    .local v1, "floor":I
    add-int/lit8 v0, v1, 0x1e

    .local v0, "ceiling":I
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    move p0, v0

    :goto_0
    return p0

    :cond_0
    const/4 v3, -0x1

    if-ne p1, v3, :cond_2

    if-ne p0, v1, :cond_1

    add-int/lit8 v1, v1, -0x1e

    :cond_1
    move p0, v1

    goto :goto_0

    :cond_2
    sub-int v3, p0, v1

    sub-int v4, v0, p0

    if-ge v3, v4, :cond_3

    move p0, v1

    goto :goto_0

    :cond_3
    move p0, v0

    goto :goto_0
.end method

.method private static snapPrefer30s(I)I
    .locals 1
    .param p0, "degrees"    # I

    .prologue
    sget-object v0, Landroid/widget/RadialTimePickerView;->sSnapPrefer30sMap:[I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/widget/RadialTimePickerView;->sSnapPrefer30sMap:[I

    aget v0, v0, p0

    goto :goto_0
.end method

.method private startHoursToMinutesAnimation()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/16 v8, 0xff

    const/16 v7, 0x3c

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    const-string v1, "animationRadiusMultiplierHours"

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    iget v3, p0, Landroid/widget/RadialTimePickerView;->mTransitionMidRadiusMultiplier:F

    iget v4, p0, Landroid/widget/RadialTimePickerView;->mTransitionEndRadiusMultiplier:F

    invoke-static {p0, v1, v2, v3, v4}, Landroid/widget/RadialTimePickerView;->getRadiusDisappearAnimator(Ljava/lang/Object;Ljava/lang/String;Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;FF)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v5

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v8, v5, v2}, Landroid/widget/RadialTimePickerView;->getFadeOutAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v7, v5, v2}, Landroid/widget/RadialTimePickerView;->getFadeOutAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v5

    aget-object v1, v1, v6

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v8, v5, v2}, Landroid/widget/RadialTimePickerView;->getFadeOutAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v5

    aget-object v1, v1, v9

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v7, v5, v2}, Landroid/widget/RadialTimePickerView;->getFadeOutAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    const-string v1, "animationRadiusMultiplierMinutes"

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    iget v3, p0, Landroid/widget/RadialTimePickerView;->mTransitionMidRadiusMultiplier:F

    iget v4, p0, Landroid/widget/RadialTimePickerView;->mTransitionEndRadiusMultiplier:F

    invoke-static {p0, v1, v2, v3, v4}, Landroid/widget/RadialTimePickerView;->getRadiusReappearAnimator(Ljava/lang/Object;Ljava/lang/String;Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;FF)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v6

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v5, v8, v2}, Landroid/widget/RadialTimePickerView;->getFadeInAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v6

    aget-object v1, v1, v5

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v5, v7, v2}, Landroid/widget/RadialTimePickerView;->getFadeInAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v6

    aget-object v1, v1, v6

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v5, v8, v2}, Landroid/widget/RadialTimePickerView;->getFadeInAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v6

    aget-object v1, v1, v9

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v5, v7, v2}, Landroid/widget/RadialTimePickerView;->getFadeInAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private startMinutesToHoursAnimation()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/16 v8, 0xff

    const/16 v7, 0x3c

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    const-string v1, "animationRadiusMultiplierMinutes"

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    iget v3, p0, Landroid/widget/RadialTimePickerView;->mTransitionMidRadiusMultiplier:F

    iget v4, p0, Landroid/widget/RadialTimePickerView;->mTransitionEndRadiusMultiplier:F

    invoke-static {p0, v1, v2, v3, v4}, Landroid/widget/RadialTimePickerView;->getRadiusDisappearAnimator(Ljava/lang/Object;Ljava/lang/String;Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;FF)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v6

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v8, v5, v2}, Landroid/widget/RadialTimePickerView;->getFadeOutAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v6

    aget-object v1, v1, v5

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v7, v5, v2}, Landroid/widget/RadialTimePickerView;->getFadeOutAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v6

    aget-object v1, v1, v6

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v8, v5, v2}, Landroid/widget/RadialTimePickerView;->getFadeOutAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v6

    aget-object v1, v1, v9

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v7, v5, v2}, Landroid/widget/RadialTimePickerView;->getFadeOutAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    const-string v1, "animationRadiusMultiplierHours"

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    iget v3, p0, Landroid/widget/RadialTimePickerView;->mTransitionMidRadiusMultiplier:F

    iget v4, p0, Landroid/widget/RadialTimePickerView;->mTransitionEndRadiusMultiplier:F

    invoke-static {p0, v1, v2, v3, v4}, Landroid/widget/RadialTimePickerView;->getRadiusReappearAnimator(Ljava/lang/Object;Ljava/lang/String;Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;FF)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v5

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v5, v8, v2}, Landroid/widget/RadialTimePickerView;->getFadeInAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v5, v7, v2}, Landroid/widget/RadialTimePickerView;->getFadeInAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v5

    aget-object v1, v1, v6

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v5, v8, v2}, Landroid/widget/RadialTimePickerView;->getFadeInAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v5

    aget-object v1, v1, v9

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v5, v7, v2}, Landroid/widget/RadialTimePickerView;->getFadeInAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private updateLayoutData()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    iget v2, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .local v0, "min":I
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    int-to-float v2, v0

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mCircleRadiusMultiplier:[F

    aget v3, v3, v4

    mul-float/2addr v2, v3

    aput v2, v1, v4

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    int-to-float v2, v0

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mCircleRadiusMultiplier:[F

    aget v3, v3, v4

    mul-float/2addr v2, v3

    aput v2, v1, v6

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    int-to-float v2, v0

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mCircleRadiusMultiplier:[F

    aget v3, v3, v5

    mul-float/2addr v2, v3

    aput v2, v1, v5

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v1, v1, v4

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    aget v2, v2, v6

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mSelectionRadius:[I

    aget v2, v2, v4

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/widget/RadialTimePickerView;->mMinHypotenuseForInnerNumber:I

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v1, v1, v4

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    aget v2, v2, v4

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mSelectionRadius:[I

    aget v2, v2, v4

    add-int/2addr v1, v2

    iput v1, p0, Landroid/widget/RadialTimePickerView;->mMaxHypotenuseForOuterNumber:I

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v1, v1, v4

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    aget v2, v2, v4

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    aget v3, v3, v6

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/RadialTimePickerView;->mHalfwayHypotenusePoint:I

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[F

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v2, v2, v4

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mTextSizeMultiplier:[F

    aget v3, v3, v4

    mul-float/2addr v2, v3

    aput v2, v1, v4

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[F

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v2, v2, v5

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mTextSizeMultiplier:[F

    aget v3, v3, v5

    mul-float/2addr v2, v3

    aput v2, v1, v5

    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v1, v1, v4

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mTextSizeMultiplier:[F

    aget v2, v2, v6

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/RadialTimePickerView;->mInnerTextSize:F

    :cond_0
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->calculateGridSizesHours()V

    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->calculateGridSizesMinutes()V

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mSelectionRadius:[I

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v2, v2, v4

    iget v3, p0, Landroid/widget/RadialTimePickerView;->mSelectionRadiusMultiplier:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v1, v4

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mSelectionRadius:[I

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mSelectionRadius:[I

    aget v2, v2, v4

    aput v2, v1, v6

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mSelectionRadius:[I

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:[F

    aget v2, v2, v5

    iget v3, p0, Landroid/widget/RadialTimePickerView;->mSelectionRadiusMultiplier:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v1, v5

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->invalidateRoot()V

    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAmOrPm()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    return v0
.end method

.method public getCurrentHour()I
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    aget v0, v1, v0

    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    invoke-direct {p0, v0, v1}, Landroid/widget/RadialTimePickerView;->getHourForDegrees(IZ)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentItemShowing()I
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCurrentMinute()I
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-direct {p0, v0}, Landroid/widget/RadialTimePickerView;->getMinuteForDegrees(I)I

    move-result v0

    return v0
.end method

.method public initialize(IIZ)V
    .locals 2
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "is24HourMode"    # Z

    .prologue
    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eq v0, p3, :cond_0

    iput-boolean p3, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    :cond_0
    invoke-direct {p0, p1, v1, v1}, Landroid/widget/RadialTimePickerView;->setCurrentHourInternal(IZZ)V

    invoke-direct {p0, p2, v1}, Landroid/widget/RadialTimePickerView;->setCurrentMinuteInternal(IZ)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget v5, p0, Landroid/widget/RadialTimePickerView;->mDisabledAlpha:I

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFI)I

    :goto_0
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->calculateGridSizesHours()V

    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->calculateGridSizesMinutes()V

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->drawCircleBackground(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->drawSelector(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[F

    aget v2, v0, v10

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextGridWidths:[[F

    aget-object v5, v0, v10

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextGridHeights:[[F

    aget-object v6, v0, v10

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v7, v0, v10

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mColor:[I

    aget v8, v0, v10

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v0, v0, v10

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView$IntHolder;->getValue()I

    move-result v9

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Landroid/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;[Ljava/lang/String;[F[FLandroid/graphics/Paint;II)V

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v2, p0, Landroid/widget/RadialTimePickerView;->mInnerTextSize:F

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mInnerTextGridWidths:[F

    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mInnerTextGridHeights:[F

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v7, v0, v10

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mColor:[I

    aget v8, v0, v10

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v0, v0, v10

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView$IntHolder;->getValue()I

    move-result v9

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Landroid/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;[Ljava/lang/String;[F[FLandroid/graphics/Paint;II)V

    :cond_0
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[F

    aget v2, v0, v11

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mOuterTextMinutes:[Ljava/lang/String;

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextGridWidths:[[F

    aget-object v5, v0, v11

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextGridHeights:[[F

    aget-object v6, v0, v11

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v7, v0, v11

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mColor:[I

    aget v8, v0, v11

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v0, v0, v11

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView$IntHolder;->getValue()I

    move-result v9

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Landroid/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;[Ljava/lang/String;[F[FLandroid/graphics/Paint;II)V

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->drawCenter(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    goto/16 :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->updateLayoutData()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .local v2, "measuredWidth":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .local v4, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .local v1, "measuredHeight":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .local v0, "heightMode":I
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .local v3, "minDimension":I
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-super {p0, v5, v6}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    iget-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .local v0, "action":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    if-eq v0, v6, :cond_2

    if-nez v0, :cond_0

    :cond_2
    const/4 v2, 0x0

    .local v2, "forceSelection":Z
    const/4 v1, 0x0

    .local v1, "autoAdvance":Z
    if-nez v0, :cond_4

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    :cond_3
    :goto_1
    iget-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {p0, v4, v5, v2, v1}, Landroid/widget/RadialTimePickerView;->handleTouchInput(FFZZ)Z

    move-result v4

    or-int/2addr v3, v4

    iput-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    goto :goto_0

    :cond_4
    if-ne v0, v6, :cond_3

    const/4 v1, 0x1

    iget-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    if-nez v3, :cond_3

    const/4 v2, 0x1

    goto :goto_1
.end method

.method public setAmOrPm(I)V
    .locals 1
    .param p1, "val"    # I

    .prologue
    rem-int/lit8 v0, p1, 0x2

    iput v0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->invalidateRoot()V

    return-void
.end method

.method public setCurrentHour(I)V
    .locals 2
    .param p1, "hour"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/RadialTimePickerView;->setCurrentHourInternal(IZZ)V

    return-void
.end method

.method public setCurrentItemShowing(IZ)V
    .locals 3
    .param p1, "item"    # I
    .param p2, "animate"    # Z

    .prologue
    packed-switch p1, :pswitch_data_0

    const-string v0, "ClockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClockView does not support showing item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, p2}, Landroid/widget/RadialTimePickerView;->showHours(Z)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p2}, Landroid/widget/RadialTimePickerView;->showMinutes(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCurrentMinute(I)V
    .locals 1
    .param p1, "minute"    # I

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView;->setCurrentMinuteInternal(IZ)V

    return-void
.end method

.method public setInputEnabled(Z)V
    .locals 0
    .param p1, "inputEnabled"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    return-void
.end method

.method public setOnValueSelectedListener(Landroid/widget/RadialTimePickerView$OnValueSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    .prologue
    iput-object p1, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    return-void
.end method

.method public showHours(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->startMinutesToHoursAnimation()V

    :cond_1
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->updateLayoutData()V

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    goto :goto_0
.end method

.method public showMinutes(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->startHoursToMinutesAnimation()V

    :cond_1
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->updateLayoutData()V

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    goto :goto_0
.end method
