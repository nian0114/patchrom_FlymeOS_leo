.class public Landroid/app/ComposedIconInfo;
.super Ljava/lang/Object;
.source "ComposedIconInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ComposedIconInfo$SwatchType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/ComposedIconInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public colorFilter:[F

.field public defaultSwatchColors:[I

.field public iconBacks:[I

.field public iconDensity:I

.field public iconMask:I

.field public iconPaletteBack:I

.field public iconRotation:F

.field public iconRotationVariance:F

.field public iconScale:F

.field public iconSize:I

.field public iconTranslationX:F

.field public iconTranslationY:F

.field public iconUpon:I

.field public swatchType:Landroid/app/ComposedIconInfo$SwatchType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/app/ComposedIconInfo$1;

    invoke-direct {v0}, Landroid/app/ComposedIconInfo$1;-><init>()V

    sput-object v0, Landroid/app/ComposedIconInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ComposedIconInfo;->iconPaletteBack:I

    sget-object v0, Landroid/app/ComposedIconInfo$SwatchType;->None:Landroid/app/ComposedIconInfo$SwatchType;

    iput-object v0, p0, Landroid/app/ComposedIconInfo;->swatchType:Landroid/app/ComposedIconInfo$SwatchType;

    iput v1, p0, Landroid/app/ComposedIconInfo;->iconRotation:F

    iput v1, p0, Landroid/app/ComposedIconInfo;->iconTranslationX:F

    iput v1, p0, Landroid/app/ComposedIconInfo;->iconTranslationY:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/app/ComposedIconInfo;->iconScale:F

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    iput v4, p0, Landroid/app/ComposedIconInfo;->iconScale:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    iput v4, p0, Landroid/app/ComposedIconInfo;->iconRotation:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    iput v4, p0, Landroid/app/ComposedIconInfo;->iconRotationVariance:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    iput v4, p0, Landroid/app/ComposedIconInfo;->iconTranslationX:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    iput v4, p0, Landroid/app/ComposedIconInfo;->iconTranslationY:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/app/ComposedIconInfo;->iconDensity:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/app/ComposedIconInfo;->iconSize:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "backCount":I
    if-lez v0, :cond_0

    new-array v4, v0, [I

    iput-object v4, p0, Landroid/app/ComposedIconInfo;->iconBacks:[I

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v4, p0, Landroid/app/ComposedIconInfo;->iconBacks:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/app/ComposedIconInfo;->iconMask:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/app/ComposedIconInfo;->iconUpon:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "colorFilterSize":I
    if-lez v1, :cond_1

    new-array v4, v1, [F

    iput-object v4, p0, Landroid/app/ComposedIconInfo;->colorFilter:[F

    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v4, p0, Landroid/app/ComposedIconInfo;->colorFilter:[F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/app/ComposedIconInfo;->iconPaletteBack:I

    invoke-static {}, Landroid/app/ComposedIconInfo$SwatchType;->values()[Landroid/app/ComposedIconInfo$SwatchType;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    aget-object v4, v4, v5

    iput-object v4, p0, Landroid/app/ComposedIconInfo;->swatchType:Landroid/app/ComposedIconInfo$SwatchType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "numDefaultColors":I
    if-lez v3, :cond_2

    new-array v4, v3, [I

    iput-object v4, p0, Landroid/app/ComposedIconInfo;->defaultSwatchColors:[I

    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v3, :cond_2

    iget-object v4, p0, Landroid/app/ComposedIconInfo;->defaultSwatchColors:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/ComposedIconInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/app/ComposedIconInfo$1;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ComposedIconInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 8
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v7, 0x0

    iget v6, p0, Landroid/app/ComposedIconInfo;->iconScale:F

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeFloat(F)V

    iget v6, p0, Landroid/app/ComposedIconInfo;->iconRotation:F

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeFloat(F)V

    iget v6, p0, Landroid/app/ComposedIconInfo;->iconRotationVariance:F

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeFloat(F)V

    iget v6, p0, Landroid/app/ComposedIconInfo;->iconTranslationX:F

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeFloat(F)V

    iget v6, p0, Landroid/app/ComposedIconInfo;->iconTranslationY:F

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeFloat(F)V

    iget v6, p0, Landroid/app/ComposedIconInfo;->iconDensity:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    iget v6, p0, Landroid/app/ComposedIconInfo;->iconSize:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v6, p0, Landroid/app/ComposedIconInfo;->iconBacks:[I

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/app/ComposedIconInfo;->iconBacks:[I

    array-length v6, v6

    :goto_0
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v6, p0, Landroid/app/ComposedIconInfo;->iconBacks:[I

    if-eqz v6, :cond_1

    iget-object v0, p0, Landroid/app/ComposedIconInfo;->iconBacks:[I

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget v4, v0, v2

    .local v4, "resId":I
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "arr$":[I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "resId":I
    :cond_0
    move v6, v7

    goto :goto_0

    :cond_1
    iget v6, p0, Landroid/app/ComposedIconInfo;->iconMask:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    iget v6, p0, Landroid/app/ComposedIconInfo;->iconUpon:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v6, p0, Landroid/app/ComposedIconInfo;->colorFilter:[F

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/app/ComposedIconInfo;->colorFilter:[F

    array-length v6, v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/ComposedIconInfo;->colorFilter:[F

    .local v0, "arr$":[F
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_2
    if-ge v2, v3, :cond_3

    aget v5, v0, v2

    .local v5, "val":F
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeFloat(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0    # "arr$":[F
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "val":F
    :cond_2
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    :cond_3
    iget v6, p0, Landroid/app/ComposedIconInfo;->iconPaletteBack:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v6, p0, Landroid/app/ComposedIconInfo;->swatchType:Landroid/app/ComposedIconInfo$SwatchType;

    invoke-virtual {v6}, Landroid/app/ComposedIconInfo$SwatchType;->ordinal()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v6, p0, Landroid/app/ComposedIconInfo;->defaultSwatchColors:[I

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/app/ComposedIconInfo;->defaultSwatchColors:[I

    array-length v6, v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/ComposedIconInfo;->defaultSwatchColors:[I

    .local v0, "arr$":[I
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_3
    if-ge v2, v3, :cond_5

    aget v1, v0, v2

    .local v1, "color":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v0    # "arr$":[I
    .end local v1    # "color":I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_4
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    :cond_5
    return-void
.end method
