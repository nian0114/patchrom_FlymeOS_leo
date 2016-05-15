.class Landroid/widget/DatePickerCalendarDelegate;
.super Landroid/widget/DatePicker$AbstractDatePickerDelegate;
.source "DatePickerCalendarDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/DatePickerController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DatePickerCalendarDelegate$SavedState;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field private static final DAY_INDEX:I = 0x1

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_START_YEAR:I = 0x76c

.field private static final MONTH_AND_DAY_VIEW:I = 0x0

.field private static final MONTH_INDEX:I = 0x0

.field private static final UNINITIALIZED:I = -0x1

.field private static final USE_LOCALE:I = 0x0

.field private static final YEAR_INDEX:I = 0x2

.field private static final YEAR_VIEW:I = 0x1


# instance fields
.field private mAnimator:Lcom/android/internal/widget/AccessibleDateAnimator;

.field private mCurrentDate:Ljava/util/Calendar;

.field private mCurrentView:I

.field private mDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

.field private mDayFormat:Ljava/text/SimpleDateFormat;

.field private mDayOfWeekView:Landroid/widget/TextView;

.field private mDayPickerDescription:Ljava/lang/String;

.field private mDayPickerView:Landroid/widget/DayPickerView;

.field private mFirstDayOfWeek:I

.field private mHeaderDayOfMonthTextView:Landroid/widget/TextView;

.field private mHeaderMonthTextView:Landroid/widget/TextView;

.field private mHeaderYearTextView:Landroid/widget/TextView;

.field private mIsEnabled:Z

.field private mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/widget/OnDateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private mMonthAndDayLayout:Landroid/widget/LinearLayout;

.field private mMonthDayYearLayout:Landroid/widget/LinearLayout;

.field private final mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

.field private mSelectDay:Ljava/lang/String;

.field private mSelectYear:Ljava/lang/String;

.field private mTempDate:Ljava/util/Calendar;

.field private mYearFormat:Ljava/text/SimpleDateFormat;

.field private mYearPickerDescription:Ljava/lang/String;

.field private mYearPickerView:Landroid/widget/YearPickerView;


# direct methods
.method public constructor <init>(Landroid/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 28
    .param p1, "delegator"    # Landroid/widget/DatePicker;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .prologue
    invoke-direct/range {p0 .. p2}, Landroid/widget/DatePicker$AbstractDatePickerDelegate;-><init>(Landroid/widget/DatePicker;Landroid/content/Context;)V

    new-instance v24, Ljava/text/SimpleDateFormat;

    const-string v25, "y"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v26

    invoke-direct/range {v24 .. v26}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePickerCalendarDelegate;->mYearFormat:Ljava/text/SimpleDateFormat;

    new-instance v24, Ljava/text/SimpleDateFormat;

    const-string v25, "d"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v26

    invoke-direct/range {v24 .. v26}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePickerCalendarDelegate;->mDayFormat:Ljava/text/SimpleDateFormat;

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/DatePickerCalendarDelegate;->mIsEnabled:Z

    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    new-instance v24, Ljava/util/HashSet;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePickerCalendarDelegate;->mListeners:Ljava/util/HashSet;

    new-instance v24, Landroid/widget/DatePickerCalendarDelegate$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/DatePickerCalendarDelegate$1;-><init>(Landroid/widget/DatePickerCalendarDelegate;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePickerCalendarDelegate;->mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v18

    .local v18, "locale":Ljava/util/Locale;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/widget/DatePickerCalendarDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/widget/DatePickerCalendarDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/widget/DatePickerCalendarDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/widget/DatePickerCalendarDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    move-object/from16 v24, v0

    const/16 v25, 0x76c

    const/16 v26, 0x0

    const/16 v27, 0x1

    invoke-virtual/range {v24 .. v27}, Ljava/util/Calendar;->set(III)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    move-object/from16 v24, v0

    const/16 v25, 0x834

    const/16 v26, 0xb

    const/16 v27, 0x1f

    invoke-virtual/range {v24 .. v27}, Ljava/util/Calendar;->set(III)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePickerCalendarDelegate;->mDelegator:Landroid/widget/DatePicker;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/DatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .local v21, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePickerCalendarDelegate;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    sget-object v25, Lcom/android/internal/R$styleable;->DatePicker:[I

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    move-object/from16 v2, v25

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .local v6, "a":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePickerCalendarDelegate;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string v25, "layout_inflater"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .local v16, "inflater":Landroid/view/LayoutInflater;
    const/16 v24, 0x11

    const v25, 0x1090041

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    .local v17, "layoutResourceId":I
    const/16 v24, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    .local v19, "mainView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePickerCalendarDelegate;->mDelegator:Landroid/widget/DatePicker;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/DatePicker;->addView(Landroid/view/View;)V

    const v24, 0x10202ed

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePickerCalendarDelegate;->mDayOfWeekView:Landroid/widget/TextView;

    const v24, 0x10202ec

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .local v11, "dateLayout":Landroid/widget/LinearLayout;
    const v24, 0x10202ee

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePickerCalendarDelegate;->mMonthDayYearLayout:Landroid/widget/LinearLayout;

    const v24, 0x10202ef

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePickerCalendarDelegate;->mMonthAndDayLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePickerCalendarDelegate;->mMonthAndDayLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v24, 0x10202f0

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePickerCalendarDelegate;->mHeaderMonthTextView:Landroid/widget/TextView;

    const v24, 0x10202f1

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePickerCalendarDelegate;->mHeaderDayOfMonthTextView:Landroid/widget/TextView;

    const v24, 0x10202f2

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYearTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYearTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYearTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getHighlightColor()I

    move-result v14

    .local v14, "defaultHighlightColor":I
    const/16 v24, 0x9

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .local v13, "dayOfWeekTextAppearanceResId":I
    const/16 v24, -0x1

    move/from16 v0, v24

    if-eq v13, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePickerCalendarDelegate;->mDayOfWeekView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v13}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePickerCalendarDelegate;->mDayOfWeekView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v24, 0x14

    move/from16 v0, v24

    invoke-virtual {v6, v0, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v15

    .local v15, "headerSelectedTextColor":I
    const/16 v24, 0xa

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v20

    .local v20, "monthTextAppearanceResId":I
    const/16 v24, -0x1

    move/from16 v0, v20

    move/from16 v1, v24

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderMonthTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderMonthTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderMonthTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v25

    const v26, 0x10100a1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v0, v1, v15}, Landroid/content/res/ColorStateList;->addFirstIfMissing(Landroid/content/res/ColorStateList;II)Landroid/content/res/ColorStateList;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const/16 v24, 0xb

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .local v12, "dayOfMonthTextAppearanceResId":I
    const/16 v24, -0x1

    move/from16 v0, v24

    if-eq v12, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderDayOfMonthTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v12}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderDayOfMonthTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderDayOfMonthTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v25

    const v26, 0x10100a1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v0, v1, v15}, Landroid/content/res/ColorStateList;->addFirstIfMissing(Landroid/content/res/ColorStateList;II)Landroid/content/res/ColorStateList;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const/16 v24, 0xc

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v23

    .local v23, "yearTextAppearanceResId":I
    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYearTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYearTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYearTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v25

    const v26, 0x10100a1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v0, v1, v15}, Landroid/content/res/ColorStateList;->addFirstIfMissing(Landroid/content/res/ColorStateList;II)Landroid/content/res/ColorStateList;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    new-instance v24, Landroid/widget/DayPickerView;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePickerCalendarDelegate;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Landroid/widget/DayPickerView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/DayPickerView;->setFirstDayOfWeek(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/DayPickerView;->setMinDate(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/DayPickerView;->setMaxDate(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/DayPickerView;->setDate(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePickerCalendarDelegate;->mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/DayPickerView;->setOnDaySelectedListener(Landroid/widget/DayPickerView$OnDaySelectedListener;)V

    new-instance v24, Landroid/widget/YearPickerView;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePickerCalendarDelegate;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Landroid/widget/YearPickerView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/YearPickerView;->init(Landroid/widget/DatePickerController;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    move-object/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Landroid/widget/YearPickerView;->setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V

    const/16 v24, 0xe

    move/from16 v0, v24

    invoke-virtual {v6, v0, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v22

    .local v22, "yearSelectedCircleColor":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/YearPickerView;->setYearSelectedCircleColor(I)V

    const/16 v24, 0xf

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    .local v10, "calendarTextColor":Landroid/content/res/ColorStateList;
    const/16 v24, 0x12

    move/from16 v0, v24

    invoke-virtual {v6, v0, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    .local v9, "calendarSelectedTextColor":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    move-object/from16 v24, v0

    const v25, 0x10100a1

    move/from16 v0, v25

    invoke-static {v10, v0, v9}, Landroid/content/res/ColorStateList;->addFirstIfMissing(Landroid/content/res/ColorStateList;II)Landroid/content/res/ColorStateList;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/DayPickerView;->setCalendarTextColor(Landroid/content/res/ColorStateList;)V

    const v24, 0x1040752

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerDescription:Ljava/lang/String;

    const v24, 0x1040754

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePickerCalendarDelegate;->mSelectDay:Ljava/lang/String;

    const v24, 0x1040753

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerDescription:Ljava/lang/String;

    const v24, 0x1040755

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePickerCalendarDelegate;->mSelectYear:Ljava/lang/String;

    const v24, 0x10202f3

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/android/internal/widget/AccessibleDateAnimator;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Lcom/android/internal/widget/AccessibleDateAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Lcom/android/internal/widget/AccessibleDateAnimator;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/widget/AccessibleDateAnimator;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Lcom/android/internal/widget/AccessibleDateAnimator;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/widget/AccessibleDateAnimator;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Lcom/android/internal/widget/AccessibleDateAnimator;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/AccessibleDateAnimator;->setDateMillis(J)V

    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/16 v24, 0x0

    const/high16 v25, 0x3f800000    # 1.0f

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v7, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .local v7, "animation":Landroid/view/animation/Animation;
    const-wide/16 v24, 0x12c

    move-wide/from16 v0, v24

    invoke-virtual {v7, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Lcom/android/internal/widget/AccessibleDateAnimator;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Lcom/android/internal/widget/AccessibleDateAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    new-instance v8, Landroid/view/animation/AlphaAnimation;

    const/high16 v24, 0x3f800000    # 1.0f

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v8, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .local v8, "animation2":Landroid/view/animation/Animation;
    const-wide/16 v24, 0x12c

    move-wide/from16 v0, v24

    invoke-virtual {v8, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Lcom/android/internal/widget/AccessibleDateAnimator;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Lcom/android/internal/widget/AccessibleDateAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/widget/DatePickerCalendarDelegate;->updateDisplay(Z)V

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/widget/DatePickerCalendarDelegate;->setCurrentView(I)V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/DatePickerCalendarDelegate;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Landroid/widget/DatePickerCalendarDelegate;

    .prologue
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/DatePickerCalendarDelegate;ZZ)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/DatePickerCalendarDelegate;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    return-void
.end method

.method private adjustDayInMonthIfNeeded(II)V
    .locals 4
    .param p1, "month"    # I
    .param p2, "year"    # I

    .prologue
    const/4 v3, 0x5

    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .local v0, "day":I
    invoke-static {p1, p2}, Landroid/widget/DatePickerCalendarDelegate;->getDaysInMonth(II)I

    move-result v1

    .local v1, "daysInMonth":I
    if-le v0, v1, :cond_0

    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3, v1}, Ljava/util/Calendar;->set(II)V

    :cond_0
    return-void
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 3
    .param p1, "oldCalendar"    # Ljava/util/Calendar;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    if-nez p1, :cond_0

    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .local v0, "currentTimeMillis":J
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .local v2, "newCalendar":Ljava/util/Calendar;
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method public static getDaysInMonth(II)I
    .locals 2
    .param p0, "month"    # I
    .param p1, "year"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Month"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 v0, 0x1f

    :goto_0
    return v0

    :pswitch_1
    const/16 v0, 0x1e

    goto :goto_0

    :pswitch_2
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    const/16 v0, 0x1d

    goto :goto_0

    :cond_0
    const/16 v0, 0x1c

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getMonthDayYearIndexes(Ljava/lang/String;)[I
    .locals 11
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x3

    new-array v4, v6, [I

    .local v4, "result":[I
    const-string v6, "\'.*?\'"

    const-string v7, ""

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "filteredPattern":Ljava/lang/String;
    const/16 v6, 0x64

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .local v0, "dayIndex":I
    const-string v6, "M"

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .local v3, "monthMIndex":I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_0

    move v2, v3

    .local v2, "monthIndex":I
    :goto_0
    const-string v6, "y"

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .local v5, "yearIndex":I
    if-ge v5, v2, :cond_2

    aput v9, v4, v10

    if-ge v2, v0, :cond_1

    aput v8, v4, v9

    aput v10, v4, v8

    :goto_1
    return-object v4

    .end local v2    # "monthIndex":I
    .end local v5    # "yearIndex":I
    :cond_0
    const-string v6, "L"

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .restart local v2    # "monthIndex":I
    .restart local v5    # "yearIndex":I
    :cond_1
    aput v10, v4, v9

    aput v8, v4, v8

    goto :goto_1

    :cond_2
    aput v10, v4, v10

    if-ge v2, v0, :cond_3

    aput v9, v4, v9

    aput v8, v4, v8

    goto :goto_1

    :cond_3
    aput v8, v4, v9

    aput v9, v4, v8

    goto :goto_1
.end method

.method private onDateChanged(ZZ)V
    .locals 8
    .param p1, "fromUser"    # Z
    .param p2, "callbackToClient"    # Z

    .prologue
    if-eqz p2, :cond_0

    iget-object v5, p0, Landroid/widget/DatePickerCalendarDelegate;->mDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .local v4, "year":I
    iget-object v5, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .local v3, "monthOfYear":I
    iget-object v5, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .local v0, "dayOfMonth":I
    iget-object v5, p0, Landroid/widget/DatePickerCalendarDelegate;->mDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    iget-object v6, p0, Landroid/widget/DatePickerCalendarDelegate;->mDelegator:Landroid/widget/DatePicker;

    invoke-interface {v5, v6, v4, v3, v0}, Landroid/widget/DatePicker$OnDateChangedListener;->onDateChanged(Landroid/widget/DatePicker;III)V

    .end local v0    # "dayOfMonth":I
    .end local v3    # "monthOfYear":I
    .end local v4    # "year":I
    :cond_0
    iget-object v5, p0, Landroid/widget/DatePickerCalendarDelegate;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/OnDateChangedListener;

    .local v2, "listener":Landroid/widget/OnDateChangedListener;
    invoke-interface {v2}, Landroid/widget/OnDateChangedListener;->onDateChanged()V

    goto :goto_0

    .end local v2    # "listener":Landroid/widget/OnDateChangedListener;
    :cond_1
    iget-object v5, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {p0}, Landroid/widget/DatePickerCalendarDelegate;->getSelectedDay()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/widget/DayPickerView;->setDate(J)V

    invoke-direct {p0, p1}, Landroid/widget/DatePickerCalendarDelegate;->updateDisplay(Z)V

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/DatePickerCalendarDelegate;->tryVibrate()V

    :cond_2
    return-void
.end method

.method private setCurrentView(I)V
    .locals 10
    .param p1, "viewIndex"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v5, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .local v2, "millis":J
    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v5, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {p0}, Landroid/widget/DatePickerCalendarDelegate;->getSelectedDay()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/widget/DayPickerView;->setDate(J)V

    iget v5, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    if-eq v5, p1, :cond_0

    iget-object v5, p0, Landroid/widget/DatePickerCalendarDelegate;->mMonthAndDayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setSelected(Z)V

    iget-object v5, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYearTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v5, p0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Lcom/android/internal/widget/AccessibleDateAnimator;

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/AccessibleDateAnimator;->setDisplayedChild(I)V

    iput p1, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    :cond_0
    const/16 v1, 0x10

    .local v1, "flags":I
    iget-object v5, p0, Landroid/widget/DatePickerCalendarDelegate;->mContext:Landroid/content/Context;

    const/16 v6, 0x10

    invoke-static {v5, v2, v3, v6}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .local v0, "dayString":Ljava/lang/String;
    iget-object v5, p0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Lcom/android/internal/widget/AccessibleDateAnimator;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerDescription:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/AccessibleDateAnimator;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Lcom/android/internal/widget/AccessibleDateAnimator;

    iget-object v6, p0, Landroid/widget/DatePickerCalendarDelegate;->mSelectDay:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/AccessibleDateAnimator;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    .end local v0    # "dayString":Ljava/lang/String;
    .end local v1    # "flags":I
    :pswitch_1
    iget-object v5, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    invoke-virtual {v5}, Landroid/widget/YearPickerView;->onDateChanged()V

    iget v5, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    if-eq v5, p1, :cond_1

    iget-object v5, p0, Landroid/widget/DatePickerCalendarDelegate;->mMonthAndDayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setSelected(Z)V

    iget-object v5, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYearTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v5, p0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Lcom/android/internal/widget/AccessibleDateAnimator;

    invoke-virtual {v5, v9}, Lcom/android/internal/widget/AccessibleDateAnimator;->setDisplayedChild(I)V

    iput p1, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    :cond_1
    iget-object v5, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearFormat:Ljava/text/SimpleDateFormat;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "yearString":Ljava/lang/CharSequence;
    iget-object v5, p0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Lcom/android/internal/widget/AccessibleDateAnimator;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerDescription:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/AccessibleDateAnimator;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Lcom/android/internal/widget/AccessibleDateAnimator;

    iget-object v6, p0, Landroid/widget/DatePickerCalendarDelegate;->mSelectYear:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/AccessibleDateAnimator;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateDisplay(Z)V
    .locals 13
    .param p1, "announce"    # Z

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x2

    iget-object v7, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayOfWeekView:Landroid/widget/TextView;

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayOfWeekView:Landroid/widget/TextView;

    iget-object v8, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v9, 0x7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v8, v9, v11, v10}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v7, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentLocale:Ljava/util/Locale;

    const-string v8, "yMMMd"

    invoke-static {v7, v8}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "bestDateTimePattern":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/widget/DatePickerCalendarDelegate;->getMonthDayYearIndexes(Ljava/lang/String;)[I

    move-result-object v6

    .local v6, "viewIndices":[I
    iget-object v7, p0, Landroid/widget/DatePickerCalendarDelegate;->mMonthDayYearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    aget v7, v6, v11

    if-nez v7, :cond_2

    iget-object v7, p0, Landroid/widget/DatePickerCalendarDelegate;->mMonthDayYearLayout:Landroid/widget/LinearLayout;

    iget-object v8, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYearTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v7, p0, Landroid/widget/DatePickerCalendarDelegate;->mMonthDayYearLayout:Landroid/widget/LinearLayout;

    iget-object v8, p0, Landroid/widget/DatePickerCalendarDelegate;->mMonthAndDayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_0
    iget-object v7, p0, Landroid/widget/DatePickerCalendarDelegate;->mMonthAndDayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v7, 0x0

    aget v7, v6, v7

    aget v8, v6, v12

    if-le v7, v8, :cond_3

    iget-object v7, p0, Landroid/widget/DatePickerCalendarDelegate;->mMonthAndDayLayout:Landroid/widget/LinearLayout;

    iget-object v8, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderDayOfMonthTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v7, p0, Landroid/widget/DatePickerCalendarDelegate;->mMonthAndDayLayout:Landroid/widget/LinearLayout;

    iget-object v8, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderMonthTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_1
    iget-object v7, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderMonthTextView:Landroid/widget/TextView;

    iget-object v8, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v8, v11, v12, v9}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderDayOfMonthTextView:Landroid/widget/TextView;

    iget-object v8, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayFormat:Ljava/text/SimpleDateFormat;

    iget-object v9, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYearTextView:Landroid/widget/TextView;

    iget-object v8, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearFormat:Ljava/text/SimpleDateFormat;

    iget-object v9, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .local v4, "millis":J
    iget-object v7, p0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Lcom/android/internal/widget/AccessibleDateAnimator;

    invoke-virtual {v7, v4, v5}, Lcom/android/internal/widget/AccessibleDateAnimator;->setDateMillis(J)V

    const/16 v1, 0x18

    .local v1, "flags":I
    iget-object v7, p0, Landroid/widget/DatePickerCalendarDelegate;->mContext:Landroid/content/Context;

    invoke-static {v7, v4, v5, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    .local v3, "monthAndDayText":Ljava/lang/String;
    iget-object v7, p0, Landroid/widget/DatePickerCalendarDelegate;->mMonthAndDayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_1

    const/16 v1, 0x14

    iget-object v7, p0, Landroid/widget/DatePickerCalendarDelegate;->mContext:Landroid/content/Context;

    invoke-static {v7, v4, v5, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    .local v2, "fullDateText":Ljava/lang/String;
    iget-object v7, p0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Lcom/android/internal/widget/AccessibleDateAnimator;

    invoke-virtual {v7, v2}, Lcom/android/internal/widget/AccessibleDateAnimator;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .end local v2    # "fullDateText":Ljava/lang/String;
    :cond_1
    return-void

    .end local v1    # "flags":I
    .end local v3    # "monthAndDayText":Ljava/lang/String;
    .end local v4    # "millis":J
    :cond_2
    iget-object v7, p0, Landroid/widget/DatePickerCalendarDelegate;->mMonthDayYearLayout:Landroid/widget/LinearLayout;

    iget-object v8, p0, Landroid/widget/DatePickerCalendarDelegate;->mMonthAndDayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v7, p0, Landroid/widget/DatePickerCalendarDelegate;->mMonthDayYearLayout:Landroid/widget/LinearLayout;

    iget-object v8, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYearTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_3
    iget-object v7, p0, Landroid/widget/DatePickerCalendarDelegate;->mMonthAndDayLayout:Landroid/widget/LinearLayout;

    iget-object v8, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderMonthTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v7, p0, Landroid/widget/DatePickerCalendarDelegate;->mMonthAndDayLayout:Landroid/widget/LinearLayout;

    iget-object v8, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderDayOfMonthTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    invoke-virtual {p0, p1}, Landroid/widget/DatePickerCalendarDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 v0, 0x1

    return v0
.end method

.method public getCalendarView()Landroid/widget/CalendarView;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "CalendarView does not exists for the new DatePicker"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCalendarViewShown()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getDayOfMonth()I
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    goto :goto_0
.end method

.method public getMaxDate()Ljava/util/Calendar;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMinDate()Ljava/util/Calendar;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMonth()I
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getSelectedDay()Ljava/util/Calendar;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getSpinnersShown()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getYear()I
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V
    .locals 3
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "callBack"    # Landroid/widget/DatePicker$OnDateChangedListener;

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    iput-object p4, p0, Landroid/widget/DatePickerCalendarDelegate;->mDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    invoke-direct {p0, v2, v2}, Landroid/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mIsEnabled:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    invoke-virtual {p0}, Landroid/widget/DatePickerCalendarDelegate;->tryVibrate()V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x10202f2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/DatePickerCalendarDelegate;->setCurrentView(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x10202ef

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/DatePickerCalendarDelegate;->setCurrentView(I)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "y"

    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearFormat:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "d"

    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const-class v0, Landroid/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const-class v0, Landroid/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    move-object v1, p1

    check-cast v1, Landroid/widget/DatePickerCalendarDelegate$SavedState;

    .local v1, "ss":Landroid/widget/DatePickerCalendarDelegate$SavedState;
    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Landroid/widget/DatePickerCalendarDelegate$SavedState;->getSelectedYear()I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/DatePickerCalendarDelegate$SavedState;->getSelectedMonth()I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/DatePickerCalendarDelegate$SavedState;->getSelectedDay()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Calendar;->set(III)V

    invoke-virtual {v1}, Landroid/widget/DatePickerCalendarDelegate$SavedState;->getCurrentView()I

    move-result v2

    iput v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Landroid/widget/DatePickerCalendarDelegate$SavedState;->getMinDate()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Landroid/widget/DatePickerCalendarDelegate$SavedState;->getMaxDate()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/widget/DatePickerCalendarDelegate;->updateDisplay(Z)V

    iget v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    invoke-direct {p0, v2}, Landroid/widget/DatePickerCalendarDelegate;->setCurrentView(I)V

    invoke-virtual {v1}, Landroid/widget/DatePickerCalendarDelegate$SavedState;->getListPosition()I

    move-result v0

    .local v0, "listPosition":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v2, v0}, Landroid/widget/DayPickerView;->postSetSelection(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    invoke-virtual {v1}, Landroid/widget/DatePickerCalendarDelegate$SavedState;->getListPositionOffset()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/YearPickerView;->postSetSelectionFromTop(II)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 14
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    const/4 v2, 0x1

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .local v3, "year":I
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .local v4, "month":I
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .local v5, "day":I
    const/4 v11, -0x1

    .local v11, "listPosition":I
    const/4 v12, -0x1

    .local v12, "listPositionOffset":I
    iget v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0}, Landroid/widget/DayPickerView;->getMostVisiblePosition()I

    move-result v11

    :cond_0
    :goto_0
    new-instance v1, Landroid/widget/DatePickerCalendarDelegate$SavedState;

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    iget v10, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    const/4 v13, 0x0

    move-object v2, p1

    invoke-direct/range {v1 .. v13}, Landroid/widget/DatePickerCalendarDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIIJJIIILandroid/widget/DatePickerCalendarDelegate$1;)V

    return-object v1

    :cond_1
    iget v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    invoke-virtual {v0}, Landroid/widget/YearPickerView;->getFirstVisiblePosition()I

    move-result v11

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    invoke-virtual {v0}, Landroid/widget/YearPickerView;->getFirstPositionOffset()I

    move-result v12

    goto :goto_0
.end method

.method public onYearSelected(I)V
    .locals 3
    .param p1, "year"    # I

    .prologue
    const/4 v2, 0x1

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-direct {p0, v0, p1}, Landroid/widget/DatePickerCalendarDelegate;->adjustDayInMonthIfNeeded(II)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    invoke-direct {p0, v2, v2}, Landroid/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/DatePickerCalendarDelegate;->setCurrentView(I)V

    return-void
.end method

.method public registerOnDateChangedListener(Landroid/widget/OnDateChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/OnDateChangedListener;

    .prologue
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setCalendarViewShown(Z)V
    .locals 0
    .param p1, "shown"    # Z

    .prologue
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mMonthAndDayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYearTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Lcom/android/internal/widget/AccessibleDateAnimator;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/AccessibleDateAnimator;->setEnabled(Z)V

    iput-boolean p1, p0, Landroid/widget/DatePickerCalendarDelegate;->mIsEnabled:Z

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1
    .param p1, "firstDayOfWeek"    # I

    .prologue
    iput p1, p0, Landroid/widget/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1}, Landroid/widget/DayPickerView;->setFirstDayOfWeek(I)V

    return-void
.end method

.method public setMaxDate(J)V
    .locals 5
    .param p1, "maxDate"    # J

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Landroid/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    :cond_1
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/DayPickerView;->setMaxDate(J)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1, v2}, Landroid/widget/YearPickerView;->setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V

    goto :goto_0
.end method

.method public setMinDate(J)V
    .locals 5
    .param p1, "minDate"    # J

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Landroid/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    :cond_1
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/DayPickerView;->setMinDate(J)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1, v2}, Landroid/widget/YearPickerView;->setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V

    goto :goto_0
.end method

.method public setSpinnersShown(Z)V
    .locals 0
    .param p1, "shown"    # Z

    .prologue
    return-void
.end method

.method public tryVibrate()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mDelegator:Landroid/widget/DatePicker;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/DatePicker;->performHapticFeedback(I)Z

    return-void
.end method

.method public updateDate(III)V
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    const/4 v2, 0x1

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Landroid/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    return-void
.end method
