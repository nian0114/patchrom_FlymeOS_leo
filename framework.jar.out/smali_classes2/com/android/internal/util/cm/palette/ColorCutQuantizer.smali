.class final Lcom/android/internal/util/cm/palette/ColorCutQuantizer;
.super Ljava/lang/Object;
.source "ColorCutQuantizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;
    }
.end annotation


# static fields
.field private static final BLACK_MAX_LIGHTNESS:F = 0.05f

.field private static final COMPONENT_BLUE:I = -0x1

.field private static final COMPONENT_GREEN:I = -0x2

.field private static final COMPONENT_RED:I = -0x3

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final VBOX_COMPARATOR_VOLUME:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;",
            ">;"
        }
    .end annotation
.end field

.field private static final WHITE_MIN_LIGHTNESS:F = 0.95f


# instance fields
.field private final mColorPopulations:Landroid/util/SparseIntArray;

.field private final mColors:[I

.field private final mQuantizedColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/util/cm/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempHsl:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$1;

    invoke-direct {v0}, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$1;-><init>()V

    sput-object v0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->VBOX_COMPARATOR_VOLUME:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/util/cm/palette/ColorHistogram;I)V
    .locals 13
    .param p1, "colorHistogram"    # Lcom/android/internal/util/cm/palette/ColorHistogram;
    .param p2, "maxColors"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v10, 0x3

    new-array v10, v10, [F

    iput-object v10, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->mTempHsl:[F

    invoke-virtual {p1}, Lcom/android/internal/util/cm/palette/ColorHistogram;->getNumberOfColors()I

    move-result v5

    .local v5, "rawColorCount":I
    invoke-virtual {p1}, Lcom/android/internal/util/cm/palette/ColorHistogram;->getColors()[I

    move-result-object v7

    .local v7, "rawColors":[I
    invoke-virtual {p1}, Lcom/android/internal/util/cm/palette/ColorHistogram;->getColorCounts()[I

    move-result-object v6

    .local v6, "rawColorCounts":[I
    new-instance v10, Landroid/util/SparseIntArray;

    invoke-direct {v10, v5}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v10, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->mColorPopulations:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v10, v7

    if-ge v2, v10, :cond_0

    iget-object v10, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->mColorPopulations:Landroid/util/SparseIntArray;

    aget v11, v7, v2

    aget v12, v6, v2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->append(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-array v10, v5, [I

    iput-object v10, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->mColors:[I

    const/4 v8, 0x0

    .local v8, "validColorCount":I
    move-object v0, v7

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v9, v8

    .end local v8    # "validColorCount":I
    .local v9, "validColorCount":I
    :goto_1
    if-ge v3, v4, :cond_1

    aget v1, v0, v3

    .local v1, "color":I
    invoke-direct {p0, v1}, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->shouldIgnoreColor(I)Z

    move-result v10

    if-nez v10, :cond_4

    iget-object v10, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->mColors:[I

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "validColorCount":I
    .restart local v8    # "validColorCount":I
    aput v1, v10, v9

    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v9, v8

    .end local v8    # "validColorCount":I
    .restart local v9    # "validColorCount":I
    goto :goto_1

    .end local v1    # "color":I
    :cond_1
    if-gt v9, p2, :cond_2

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    iget-object v0, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->mColors:[I

    array-length v4, v0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v4, :cond_3

    aget v1, v0, v3

    .restart local v1    # "color":I
    iget-object v10, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    new-instance v11, Lcom/android/internal/util/cm/palette/Palette$Swatch;

    iget-object v12, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->mColorPopulations:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v12

    invoke-direct {v11, v1, v12}, Lcom/android/internal/util/cm/palette/Palette$Swatch;-><init>(II)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v1    # "color":I
    :cond_2
    add-int/lit8 v10, v9, -0x1

    invoke-direct {p0, v10, p2}, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->quantizePixels(II)Ljava/util/List;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    :cond_3
    return-void

    .restart local v1    # "color":I
    :cond_4
    move v8, v9

    .end local v9    # "validColorCount":I
    .restart local v8    # "validColorCount":I
    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/internal/util/cm/palette/ColorCutQuantizer;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/util/cm/palette/ColorCutQuantizer;

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->mColors:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/util/cm/palette/ColorCutQuantizer;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/util/cm/palette/ColorCutQuantizer;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->modifySignificantOctet(III)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/util/cm/palette/ColorCutQuantizer;)Landroid/util/SparseIntArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/util/cm/palette/ColorCutQuantizer;

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->mColorPopulations:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static fromBitmap(Landroid/graphics/Bitmap;I)Lcom/android/internal/util/cm/palette/ColorCutQuantizer;
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "maxColors"    # I

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .local v7, "height":I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .local v1, "pixels":[I
    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    new-instance v0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;

    new-instance v2, Lcom/android/internal/util/cm/palette/ColorHistogram;

    invoke-direct {v2, v1}, Lcom/android/internal/util/cm/palette/ColorHistogram;-><init>([I)V

    invoke-direct {v0, v2, p1}, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;-><init>(Lcom/android/internal/util/cm/palette/ColorHistogram;I)V

    return-object v0
.end method

.method private generateAverageColors(Ljava/util/Collection;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/util/cm/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "vboxes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .local v1, "colors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/util/cm/palette/Palette$Swatch;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;

    .local v3, "vbox":Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;
    invoke-virtual {v3}, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->getAverageColor()Lcom/android/internal/util/cm/palette/Palette$Swatch;

    move-result-object v0

    .local v0, "color":Lcom/android/internal/util/cm/palette/Palette$Swatch;
    invoke-static {v0}, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->shouldIgnoreColor(Lcom/android/internal/util/cm/palette/Palette$Swatch;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "color":Lcom/android/internal/util/cm/palette/Palette$Swatch;
    .end local v3    # "vbox":Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;
    :cond_1
    return-object v1
.end method

.method private static isBlack([F)Z
    .locals 2
    .param p0, "hslColor"    # [F

    .prologue
    const/4 v0, 0x2

    aget v0, p0, v0

    const v1, 0x3d4ccccd    # 0.05f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNearRedILine([F)Z
    .locals 4
    .param p0, "hslColor"    # [F

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    aget v2, p0, v1

    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    aget v2, p0, v1

    const/high16 v3, 0x42140000    # 37.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    aget v2, p0, v0

    const v3, 0x3f51eb85    # 0.82f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static isWhite([F)Z
    .locals 2
    .param p0, "hslColor"    # [F

    .prologue
    const/4 v0, 0x2

    aget v0, p0, v0

    const v1, 0x3f733333    # 0.95f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private modifySignificantOctet(III)V
    .locals 6
    .param p1, "dimension"    # I
    .param p2, "lowerIndex"    # I
    .param p3, "upperIndex"    # I

    .prologue
    packed-switch p1, :pswitch_data_0

    :cond_0
    :pswitch_0
    return-void

    :pswitch_1
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-gt v1, p3, :cond_0

    iget-object v2, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->mColors:[I

    aget v0, v2, v1

    .local v0, "color":I
    iget-object v2, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->mColors:[I

    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v4, v0, 0x10

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v5, v0, 0xff

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "color":I
    .end local v1    # "i":I
    :pswitch_2
    move v1, p2

    .restart local v1    # "i":I
    :goto_1
    if-gt v1, p3, :cond_0

    iget-object v2, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->mColors:[I

    aget v0, v2, v1

    .restart local v0    # "color":I
    iget-object v2, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->mColors:[I

    and-int/lit16 v3, v0, 0xff

    shr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v5, v0, 0x10

    and-int/lit16 v5, v5, 0xff

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private quantizePixels(II)Ljava/util/List;
    .locals 3
    .param p1, "maxColorIndex"    # I
    .param p2, "maxColors"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/util/cm/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/util/PriorityQueue;

    sget-object v1, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->VBOX_COMPARATOR_VOLUME:Ljava/util/Comparator;

    invoke-direct {v0, p2, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .local v0, "pq":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;>;"
    new-instance v1, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1}, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;-><init>(Lcom/android/internal/util/cm/palette/ColorCutQuantizer;II)V

    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    invoke-direct {p0, v0, p2}, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->splitBoxes(Ljava/util/PriorityQueue;I)V

    invoke-direct {p0, v0}, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->generateAverageColors(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private shouldIgnoreColor(I)Z
    .locals 4
    .param p1, "color"    # I

    .prologue
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->mTempHsl:[F

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/util/cm/palette/ColorUtils;->RGBtoHSL(III[F)V

    iget-object v0, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->mTempHsl:[F

    invoke-static {v0}, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->shouldIgnoreColor([F)Z

    move-result v0

    return v0
.end method

.method private static shouldIgnoreColor(Lcom/android/internal/util/cm/palette/Palette$Swatch;)Z
    .locals 1
    .param p0, "color"    # Lcom/android/internal/util/cm/palette/Palette$Swatch;

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/util/cm/palette/Palette$Swatch;->getHsl()[F

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->shouldIgnoreColor([F)Z

    move-result v0

    return v0
.end method

.method private static shouldIgnoreColor([F)Z
    .locals 1
    .param p0, "hslColor"    # [F

    .prologue
    invoke-static {p0}, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->isWhite([F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->isBlack([F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->isNearRedILine([F)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private splitBoxes(Ljava/util/PriorityQueue;I)V
    .locals 2
    .param p2, "maxSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "queue":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;>;"
    :goto_0
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->size()I

    move-result v1

    if-ge v1, p2, :cond_0

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;

    .local v0, "vbox":Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->canSplit()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;->splitBox()Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p1, v0}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "vbox":Lcom/android/internal/util/cm/palette/ColorCutQuantizer$Vbox;
    :cond_0
    return-void
.end method


# virtual methods
.method getQuantizedColors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/util/cm/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/cm/palette/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    return-object v0
.end method
