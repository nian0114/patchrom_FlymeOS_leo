.class Landroid/widget/DayPickerView;
.super Landroid/widget/ListView;
.source "DayPickerView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DayPickerView$OnDaySelectedListener;,
        Landroid/widget/DayPickerView$ScrollStateRunnable;
    }
.end annotation


# static fields
.field private static final GOTO_SCROLL_DURATION:I = 0xfa

.field private static final LIST_TOP_OFFSET:I = -0x1

.field private static final SCROLL_CHANGE_DELAY:I = 0x28

.field private static final TAG:Ljava/lang/String; = "DayPickerView"


# instance fields
.field private final mAdapter:Landroid/widget/SimpleMonthAdapter;

.field private mCurrentMonthDisplayed:I

.field private mCurrentScrollState:I

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

.field private mPerformingScroll:Z

.field private mPreviousScrollState:I

.field private final mProxyOnDaySelectedListener:Landroid/widget/SimpleMonthAdapter$OnDaySelectedListener;

.field private final mScrollStateChangedRunnable:Landroid/widget/DayPickerView$ScrollStateRunnable;

.field private mSelectedDay:Ljava/util/Calendar;

.field private mTempCalendar:Ljava/util/Calendar;

.field private mTempDay:Ljava/util/Calendar;

.field private mYearFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/SimpleMonthAdapter;

    invoke-virtual {p0}, Landroid/widget/DayPickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/SimpleMonthAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/SimpleMonthAdapter;

    new-instance v0, Landroid/widget/DayPickerView$ScrollStateRunnable;

    invoke-direct {v0, p0, p0}, Landroid/widget/DayPickerView$ScrollStateRunnable;-><init>(Landroid/widget/DayPickerView;Landroid/view/View;)V

    iput-object v0, p0, Landroid/widget/DayPickerView;->mScrollStateChangedRunnable:Landroid/widget/DayPickerView$ScrollStateRunnable;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/widget/DayPickerView;->mYearFormat:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DayPickerView;->mSelectedDay:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DayPickerView;->mTempDay:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DayPickerView;->mMinDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DayPickerView;->mMaxDate:Ljava/util/Calendar;

    iput v4, p0, Landroid/widget/DayPickerView;->mPreviousScrollState:I

    iput v4, p0, Landroid/widget/DayPickerView;->mCurrentScrollState:I

    new-instance v0, Landroid/widget/DayPickerView$2;

    invoke-direct {v0, p0}, Landroid/widget/DayPickerView$2;-><init>(Landroid/widget/DayPickerView;)V

    iput-object v0, p0, Landroid/widget/DayPickerView;->mProxyOnDaySelectedListener:Landroid/widget/SimpleMonthAdapter$OnDaySelectedListener;

    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/SimpleMonthAdapter;

    invoke-virtual {p0, v0}, Landroid/widget/DayPickerView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/DayPickerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v4}, Landroid/widget/DayPickerView;->setDrawSelectorOnTop(Z)V

    invoke-direct {p0}, Landroid/widget/DayPickerView;->setUpListView()V

    iget-object v0, p0, Landroid/widget/DayPickerView;->mSelectedDay:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const/4 v6, 0x1

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Landroid/widget/DayPickerView;->goTo(JZZZ)Z

    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/SimpleMonthAdapter;

    iget-object v1, p0, Landroid/widget/DayPickerView;->mProxyOnDaySelectedListener:Landroid/widget/SimpleMonthAdapter$OnDaySelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/SimpleMonthAdapter;->setOnDaySelectedListener(Landroid/widget/SimpleMonthAdapter$OnDaySelectedListener;)V

    return-void
.end method

.method static synthetic access$002(Landroid/widget/DayPickerView;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/DayPickerView;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Landroid/widget/DayPickerView;->mCurrentScrollState:I

    return p1
.end method

.method static synthetic access$100(Landroid/widget/DayPickerView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/DayPickerView;

    .prologue
    iget v0, p0, Landroid/widget/DayPickerView;->mPreviousScrollState:I

    return v0
.end method

.method static synthetic access$102(Landroid/widget/DayPickerView;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/DayPickerView;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Landroid/widget/DayPickerView;->mPreviousScrollState:I

    return p1
.end method

.method static synthetic access$200(Landroid/widget/DayPickerView;)Landroid/widget/DayPickerView$OnDaySelectedListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/DayPickerView;

    .prologue
    iget-object v0, p0, Landroid/widget/DayPickerView;->mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

    return-object v0
.end method

.method private findAccessibilityFocus()Ljava/util/Calendar;
    .locals 5

    .prologue
    invoke-virtual {p0}, Landroid/widget/DayPickerView;->getChildCount()I

    move-result v1

    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {p0, v3}, Landroid/widget/DayPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    instance-of v4, v0, Landroid/widget/SimpleMonthView;

    if-eqz v4, :cond_0

    check-cast v0, Landroid/widget/SimpleMonthView;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/widget/SimpleMonthView;->getAccessibilityFocus()Ljava/util/Calendar;

    move-result-object v2

    .local v2, "focus":Ljava/util/Calendar;
    if-eqz v2, :cond_0

    .end local v2    # "focus":Ljava/util/Calendar;
    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getDiffMonths(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .locals 5
    .param p1, "start"    # Ljava/util/Calendar;
    .param p2, "end"    # Ljava/util/Calendar;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int v1, v2, v3

    .local v1, "diffYears":I
    invoke-virtual {p2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/lit8 v3, v1, 0xc

    add-int v0, v2, v3

    .local v0, "diffMonths":I
    return v0
.end method

.method private getMonthAndYearString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 3
    .param p1, "day"    # Ljava/util/Calendar;

    .prologue
    const/4 v2, 0x2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "sbuf":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1, v2, v2, v1}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/widget/DayPickerView;->mYearFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getPositionFromDay(J)I
    .locals 5
    .param p1, "timeInMillis"    # J

    .prologue
    iget-object v2, p0, Landroid/widget/DayPickerView;->mMinDate:Ljava/util/Calendar;

    iget-object v3, p0, Landroid/widget/DayPickerView;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v2, v3}, Landroid/widget/DayPickerView;->getDiffMonths(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v1

    .local v1, "diffMonthMax":I
    iget-object v2, p0, Landroid/widget/DayPickerView;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, p1, p2}, Landroid/widget/DayPickerView;->getTempCalendarForTime(J)Ljava/util/Calendar;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Landroid/widget/DayPickerView;->getDiffMonths(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v0

    .local v0, "diffMonth":I
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v2

    return v2
.end method

.method private getTempCalendarForTime(J)Ljava/util/Calendar;
    .locals 1
    .param p1, "timeInMillis"    # J

    .prologue
    iget-object v0, p0, Landroid/widget/DayPickerView;->mTempCalendar:Ljava/util/Calendar;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DayPickerView;->mTempCalendar:Ljava/util/Calendar;

    :cond_0
    iget-object v0, p0, Landroid/widget/DayPickerView;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/widget/DayPickerView;->mTempCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method private goTo(JZZZ)Z
    .locals 9
    .param p1, "day"    # J
    .param p3, "animate"    # Z
    .param p4, "setSelected"    # Z
    .param p5, "forceScroll"    # Z

    .prologue
    if-eqz p4, :cond_0

    iget-object v6, p0, Landroid/widget/DayPickerView;->mSelectedDay:Ljava/util/Calendar;

    invoke-virtual {v6, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_0
    iget-object v6, p0, Landroid/widget/DayPickerView;->mTempDay:Ljava/util/Calendar;

    invoke-virtual {v6, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-direct {p0, p1, p2}, Landroid/widget/DayPickerView;->getPositionFromDay(J)I

    move-result v3

    .local v3, "position":I
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v5, 0x0

    .local v5, "top":I
    :goto_0
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {p0, v1}, Landroid/widget/DayPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_4

    :cond_1
    if-eqz v0, :cond_5

    invoke-virtual {p0, v0}, Landroid/widget/DayPickerView;->getPositionForView(Landroid/view/View;)I

    move-result v4

    .local v4, "selectedPosition":I
    :goto_1
    if-eqz p4, :cond_2

    iget-object v6, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/SimpleMonthAdapter;

    iget-object v7, p0, Landroid/widget/DayPickerView;->mSelectedDay:Ljava/util/Calendar;

    invoke-virtual {v6, v7}, Landroid/widget/SimpleMonthAdapter;->setSelectedDay(Ljava/util/Calendar;)V

    :cond_2
    if-ne v3, v4, :cond_3

    if-eqz p5, :cond_8

    :cond_3
    iget-object v6, p0, Landroid/widget/DayPickerView;->mTempDay:Ljava/util/Calendar;

    invoke-virtual {p0, v6}, Landroid/widget/DayPickerView;->setMonthDisplayed(Ljava/util/Calendar;)V

    const/4 v6, 0x2

    iput v6, p0, Landroid/widget/DayPickerView;->mPreviousScrollState:I

    if-eqz p3, :cond_6

    const/4 v6, -0x1

    const/16 v7, 0xfa

    invoke-virtual {p0, v3, v6, v7}, Landroid/widget/DayPickerView;->smoothScrollToPositionFromTop(III)V

    const/4 v6, 0x1

    :goto_2
    return v6

    .end local v4    # "selectedPosition":I
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    if-gez v5, :cond_1

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_5
    const/4 v4, 0x0

    .restart local v4    # "selectedPosition":I
    goto :goto_1

    :cond_6
    invoke-virtual {p0, v3}, Landroid/widget/DayPickerView;->postSetSelection(I)V

    :cond_7
    :goto_3
    const/4 v6, 0x0

    goto :goto_2

    :cond_8
    if-eqz p4, :cond_7

    iget-object v6, p0, Landroid/widget/DayPickerView;->mSelectedDay:Ljava/util/Calendar;

    invoke-virtual {p0, v6}, Landroid/widget/DayPickerView;->setMonthDisplayed(Ljava/util/Calendar;)V

    goto :goto_3
.end method

.method private restoreAccessibilityFocus(Ljava/util/Calendar;)Z
    .locals 5
    .param p1, "day"    # Ljava/util/Calendar;

    .prologue
    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p0}, Landroid/widget/DayPickerView;->getChildCount()I

    move-result v1

    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/DayPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    instance-of v4, v0, Landroid/widget/SimpleMonthView;

    if-eqz v4, :cond_2

    check-cast v0, Landroid/widget/SimpleMonthView;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/widget/SimpleMonthView;->restoreAccessibilityFocus(Ljava/util/Calendar;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private setUpListView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/DayPickerView;->setCacheColorHint(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/DayPickerView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/DayPickerView;->setItemsCanFocus(Z)V

    invoke-virtual {p0, v1}, Landroid/widget/DayPickerView;->setFastScrollEnabled(Z)V

    invoke-virtual {p0, v1}, Landroid/widget/DayPickerView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, p0}, Landroid/widget/DayPickerView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-virtual {p0, v1}, Landroid/widget/DayPickerView;->setFadingEdgeLength(I)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/DayPickerView;->setFriction(F)V

    return-void
.end method


# virtual methods
.method public getDate()J
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/DayPickerView;->mSelectedDay:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/SimpleMonthAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleMonthAdapter;->getFirstDayOfWeek()I

    move-result v0

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/DayPickerView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/DayPickerView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMostVisiblePosition()I
    .locals 11

    .prologue
    invoke-virtual {p0}, Landroid/widget/DayPickerView;->getFirstVisiblePosition()I

    move-result v3

    .local v3, "firstPosition":I
    invoke-virtual {p0}, Landroid/widget/DayPickerView;->getHeight()I

    move-result v4

    .local v4, "height":I
    const/4 v6, 0x0

    .local v6, "maxDisplayedHeight":I
    const/4 v7, 0x0

    .local v7, "mostVisibleIndex":I
    const/4 v5, 0x0

    .local v5, "i":I
    const/4 v0, 0x0

    .local v0, "bottom":I
    :goto_0
    if-ge v0, v4, :cond_0

    invoke-virtual {p0, v5}, Landroid/widget/DayPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .local v1, "child":Landroid/view/View;
    if-nez v1, :cond_1

    .end local v1    # "child":Landroid/view/View;
    :cond_0
    add-int v8, v3, v7

    return v8

    .restart local v1    # "child":Landroid/view/View;
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    sub-int v2, v8, v9

    .local v2, "displayedHeight":I
    if-le v2, v6, :cond_2

    move v7, v5

    move v6, v2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method protected layoutChildren()V
    .locals 2

    .prologue
    invoke-direct {p0}, Landroid/widget/DayPickerView;->findAccessibilityFocus()Ljava/util/Calendar;

    move-result-object v0

    .local v0, "focusedDay":Ljava/util/Calendar;
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    iget-boolean v1, p0, Landroid/widget/DayPickerView;->mPerformingScroll:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/DayPickerView;->mPerformingScroll:Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v0}, Landroid/widget/DayPickerView;->restoreAccessibilityFocus(Ljava/util/Calendar;)Z

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/widget/DayPickerView;->mYearFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method

.method public onRangeChanged()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/SimpleMonthAdapter;

    iget-object v1, p0, Landroid/widget/DayPickerView;->mMinDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroid/widget/DayPickerView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1, v2}, Landroid/widget/SimpleMonthAdapter;->setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V

    iget-object v0, p0, Landroid/widget/DayPickerView;->mSelectedDay:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const/4 v6, 0x1

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Landroid/widget/DayPickerView;->goTo(JZZZ)Z

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SimpleMonthView;

    .local v0, "child":Landroid/widget/SimpleMonthView;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Landroid/widget/DayPickerView;->mCurrentScrollState:I

    iput v1, p0, Landroid/widget/DayPickerView;->mPreviousScrollState:I

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    iget-object v0, p0, Landroid/widget/DayPickerView;->mScrollStateChangedRunnable:Landroid/widget/DayPickerView$ScrollStateRunnable;

    invoke-virtual {v0, p1, p2}, Landroid/widget/DayPickerView$ScrollStateRunnable;->doScrollStateChange(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 12
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/16 v11, 0x1000

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p1, v11, :cond_0

    const/16 v1, 0x2000

    if-eq p1, v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v4

    :goto_0
    return v4

    :cond_0
    invoke-virtual {p0}, Landroid/widget/DayPickerView;->getFirstVisiblePosition()I

    move-result v7

    .local v7, "firstVisiblePosition":I
    rem-int/lit8 v9, v7, 0xc

    .local v9, "month":I
    div-int/lit8 v1, v7, 0xc

    iget-object v2, p0, Landroid/widget/DayPickerView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int v10, v1, v2

    .local v10, "year":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .local v0, "day":Ljava/util/Calendar;
    invoke-virtual {v0, v10, v9, v4}, Ljava/util/Calendar;->set(III)V

    if-ne p1, v11, :cond_2

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    invoke-virtual {v0, v3, v5}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v4, v4}, Ljava/util/Calendar;->add(II)V

    :cond_1
    :goto_1
    invoke-direct {p0, v0}, Landroid/widget/DayPickerView;->getMonthAndYearString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/DayPickerView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    move-object v1, p0

    move v6, v4

    invoke-direct/range {v1 .. v6}, Landroid/widget/DayPickerView;->goTo(JZZZ)Z

    iput-boolean v4, p0, Landroid/widget/DayPickerView;->mPerformingScroll:Z

    goto :goto_0

    :cond_2
    const/16 v1, 0x2000

    if-ne p1, v1, :cond_1

    invoke-virtual {p0, v5}, Landroid/widget/DayPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .local v8, "firstVisibleView":Landroid/view/View;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v1

    if-lt v1, v6, :cond_1

    invoke-virtual {v0, v3, v6}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, v6, :cond_1

    const/16 v1, 0xb

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->add(II)V

    goto :goto_1
.end method

.method public postSetSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    invoke-virtual {p0}, Landroid/widget/DayPickerView;->clearFocus()V

    new-instance v0, Landroid/widget/DayPickerView$1;

    invoke-direct {v0, p0, p1}, Landroid/widget/DayPickerView$1;-><init>(Landroid/widget/DayPickerView;I)V

    invoke-virtual {p0, v0}, Landroid/widget/DayPickerView;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    invoke-virtual {p0, p0, v0}, Landroid/widget/DayPickerView;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method setCalendarTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/SimpleMonthAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/SimpleMonthAdapter;->setCalendarTextAppearance(I)V

    return-void
.end method

.method setCalendarTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/SimpleMonthAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/SimpleMonthAdapter;->setCalendarTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setDate(J)V
    .locals 3
    .param p1, "timeInMillis"    # J

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/widget/DayPickerView;->setDate(JZZ)V

    return-void
.end method

.method public setDate(JZZ)V
    .locals 7
    .param p1, "timeInMillis"    # J
    .param p3, "animate"    # Z
    .param p4, "forceScroll"    # Z

    .prologue
    const/4 v5, 0x1

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/widget/DayPickerView;->goTo(JZZZ)Z

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1
    .param p1, "firstDayOfWeek"    # I

    .prologue
    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/SimpleMonthAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/SimpleMonthAdapter;->setFirstDayOfWeek(I)V

    return-void
.end method

.method public setMaxDate(J)V
    .locals 1
    .param p1, "timeInMillis"    # J

    .prologue
    iget-object v0, p0, Landroid/widget/DayPickerView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {p0}, Landroid/widget/DayPickerView;->onRangeChanged()V

    return-void
.end method

.method public setMinDate(J)V
    .locals 1
    .param p1, "timeInMillis"    # J

    .prologue
    iget-object v0, p0, Landroid/widget/DayPickerView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {p0}, Landroid/widget/DayPickerView;->onRangeChanged()V

    return-void
.end method

.method protected setMonthDisplayed(Ljava/util/Calendar;)V
    .locals 3
    .param p1, "date"    # Ljava/util/Calendar;

    .prologue
    const/4 v2, 0x2

    iget v0, p0, Landroid/widget/DayPickerView;->mCurrentMonthDisplayed:I

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Landroid/widget/DayPickerView;->mCurrentMonthDisplayed:I

    invoke-virtual {p0}, Landroid/widget/DayPickerView;->invalidateViews()V

    :cond_0
    return-void
.end method

.method public setOnDaySelectedListener(Landroid/widget/DayPickerView$OnDaySelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/DayPickerView$OnDaySelectedListener;

    .prologue
    iput-object p1, p0, Landroid/widget/DayPickerView;->mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

    return-void
.end method
