.class public Landroid/transition/Explode;
.super Landroid/transition/Visibility;
.source "Explode.java"


# static fields
.field private static final PROPNAME_SCREEN_BOUNDS:Ljava/lang/String; = "android:explode:screenBounds"

.field private static final TAG:Ljava/lang/String; = "Explode"

.field private static final sAccelerate:Landroid/animation/TimeInterpolator;

.field private static final sDecelerate:Landroid/animation/TimeInterpolator;


# instance fields
.field private mTempLoc:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/transition/Explode;->sDecelerate:Landroid/animation/TimeInterpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Landroid/transition/Explode;->sAccelerate:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/transition/Explode;->mTempLoc:[I

    new-instance v0, Landroid/transition/CircularPropagation;

    invoke-direct {v0}, Landroid/transition/CircularPropagation;-><init>()V

    invoke-virtual {p0, v0}, Landroid/transition/Explode;->setPropagation(Landroid/transition/TransitionPropagation;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/transition/Explode;->mTempLoc:[I

    new-instance v0, Landroid/transition/CircularPropagation;

    invoke-direct {v0}, Landroid/transition/CircularPropagation;-><init>()V

    invoke-virtual {p0, v0}, Landroid/transition/Explode;->setPropagation(Landroid/transition/TransitionPropagation;)V

    return-void
.end method

.method private static calculateDistance(FF)F
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F

    .prologue
    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method private static calculateMaxDistance(Landroid/view/View;II)F
    .locals 4
    .param p0, "sceneRoot"    # Landroid/view/View;
    .param p1, "focalX"    # I
    .param p2, "focalY"    # I

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .local v0, "maxX":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v2, p2

    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .local v1, "maxY":I
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-static {v2, v3}, Landroid/transition/Explode;->calculateDistance(FF)F

    move-result v2

    return v2
.end method

.method private calculateOut(Landroid/view/View;Landroid/graphics/Rect;[I)V
    .locals 18
    .param p1, "sceneRoot"    # Landroid/view/View;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "outVector"    # [I

    .prologue
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/transition/Explode;->mTempLoc:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->getLocationOnScreen([I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/transition/Explode;->mTempLoc:[I

    const/4 v14, 0x0

    aget v8, v13, v14

    .local v8, "sceneRootX":I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/transition/Explode;->mTempLoc:[I

    const/4 v14, 0x1

    aget v9, v13, v14

    .local v9, "sceneRootY":I
    invoke-virtual/range {p0 .. p0}, Landroid/transition/Explode;->getEpicenter()Landroid/graphics/Rect;

    move-result-object v4

    .local v4, "epicenter":Landroid/graphics/Rect;
    if-nez v4, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v13, v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationX()F

    move-result v14

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    add-int v5, v13, v14

    .local v5, "focalX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v13, v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    move-result v14

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    add-int v6, v13, v14

    .local v6, "focalY":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    .local v2, "centerX":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    .local v3, "centerY":I
    sub-int v13, v2, v5

    int-to-float v11, v13

    .local v11, "xVector":F
    sub-int v13, v3, v6

    int-to-float v12, v13

    .local v12, "yVector":F
    const/4 v13, 0x0

    cmpl-float v13, v11, v13

    if-nez v13, :cond_0

    const/4 v13, 0x0

    cmpl-float v13, v12, v13

    if-nez v13, :cond_0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v14, v14, v16

    double-to-float v13, v14

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v11, v13, v14

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v14, v14, v16

    double-to-float v13, v14

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v12, v13, v14

    :cond_0
    invoke-static {v11, v12}, Landroid/transition/Explode;->calculateDistance(FF)F

    move-result v10

    .local v10, "vectorSize":F
    div-float/2addr v11, v10

    div-float/2addr v12, v10

    sub-int v13, v5, v8

    sub-int v14, v6, v9

    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Landroid/transition/Explode;->calculateMaxDistance(Landroid/view/View;II)F

    move-result v7

    .local v7, "maxDistance":F
    const/4 v13, 0x0

    mul-float v14, v7, v11

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    aput v14, p3, v13

    const/4 v13, 0x1

    mul-float v14, v7, v12

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    aput v14, p3, v13

    return-void

    .end local v2    # "centerX":I
    .end local v3    # "centerY":I
    .end local v5    # "focalX":I
    .end local v6    # "focalY":I
    .end local v7    # "maxDistance":F
    .end local v10    # "vectorSize":F
    .end local v11    # "xVector":F
    .end local v12    # "yVector":F
    :cond_1
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    .restart local v5    # "focalX":I
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    .restart local v6    # "focalY":I
    goto :goto_0
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 8
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    iget-object v4, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .local v4, "view":Landroid/view/View;
    iget-object v5, p0, Landroid/transition/Explode;->mTempLoc:[I

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v5, p0, Landroid/transition/Explode;->mTempLoc:[I

    const/4 v6, 0x0

    aget v1, v5, v6

    .local v1, "left":I
    iget-object v5, p0, Landroid/transition/Explode;->mTempLoc:[I

    const/4 v6, 0x1

    aget v3, v5, v6

    .local v3, "top":I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int v2, v1, v5

    .local v2, "right":I
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int v0, v3, v5

    .local v0, "bottom":I
    iget-object v5, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v6, "android:explode:screenBounds"

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v1, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureEndValues(Landroid/transition/TransitionValues;)V

    invoke-direct {p0, p1}, Landroid/transition/Explode;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureStartValues(Landroid/transition/TransitionValues;)V

    invoke-direct {p0, p1}, Landroid/transition/Explode;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 10
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    if-nez p4, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p4, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:explode:screenBounds"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    .local v9, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v6

    .local v6, "endX":F
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v7

    .local v7, "endY":F
    iget-object v0, p0, Landroid/transition/Explode;->mTempLoc:[I

    invoke-direct {p0, p1, v9, v0}, Landroid/transition/Explode;->calculateOut(Landroid/view/View;Landroid/graphics/Rect;[I)V

    iget-object v0, p0, Landroid/transition/Explode;->mTempLoc:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    add-float v4, v6, v0

    .local v4, "startX":F
    iget-object v0, p0, Landroid/transition/Explode;->mTempLoc:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v0, v0

    add-float v5, v7, v0

    .local v5, "startY":F
    iget v2, v9, Landroid/graphics/Rect;->left:I

    iget v3, v9, Landroid/graphics/Rect;->top:I

    sget-object v8, Landroid/transition/Explode;->sDecelerate:Landroid/animation/TimeInterpolator;

    move-object v0, p2

    move-object v1, p4

    invoke-static/range {v0 .. v8}, Landroid/transition/TranslationAnimationCreator;->createAnimation(Landroid/view/View;Landroid/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 11
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:explode:screenBounds"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    .local v9, "bounds":Landroid/graphics/Rect;
    iget v2, v9, Landroid/graphics/Rect;->left:I

    .local v2, "viewPosX":I
    iget v3, v9, Landroid/graphics/Rect;->top:I

    .local v3, "viewPosY":I
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v4

    .local v4, "startX":F
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v5

    .local v5, "startY":F
    move v6, v4

    .local v6, "endX":F
    move v7, v5

    .local v7, "endY":F
    iget-object v0, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    const v1, 0x1020045

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    move-object v10, v0

    check-cast v10, [I

    .local v10, "interruptedPosition":[I
    if-eqz v10, :cond_1

    const/4 v0, 0x0

    aget v0, v10, v0

    iget v1, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v6, v0

    const/4 v0, 0x1

    aget v0, v10, v0

    iget v1, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v7, v0

    const/4 v0, 0x0

    aget v0, v10, v0

    const/4 v1, 0x1

    aget v1, v10, v1

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_1
    iget-object v0, p0, Landroid/transition/Explode;->mTempLoc:[I

    invoke-direct {p0, p1, v9, v0}, Landroid/transition/Explode;->calculateOut(Landroid/view/View;Landroid/graphics/Rect;[I)V

    iget-object v0, p0, Landroid/transition/Explode;->mTempLoc:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    add-float/2addr v6, v0

    iget-object v0, p0, Landroid/transition/Explode;->mTempLoc:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v0, v0

    add-float/2addr v7, v0

    sget-object v8, Landroid/transition/Explode;->sAccelerate:Landroid/animation/TimeInterpolator;

    move-object v0, p2

    move-object v1, p3

    invoke-static/range {v0 .. v8}, Landroid/transition/TranslationAnimationCreator;->createAnimation(Landroid/view/View;Landroid/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_0
.end method
