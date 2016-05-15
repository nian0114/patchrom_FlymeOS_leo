.class public Lcyanogenmod/os/Build;
.super Ljava/lang/Object;
.source "Build.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/os/Build$CM_VERSION_CODES;,
        Lcyanogenmod/os/Build$CM_VERSION;
    }
.end annotation


# static fields
.field public static final PARCELABLE_VERSION:I = 0x2

.field public static final UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final sdkMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcyanogenmod/os/Build;->sdkMap:Landroid/util/SparseArray;

    .line 45
    sget-object v0, Lcyanogenmod/os/Build;->sdkMap:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "Apricot"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 46
    sget-object v0, Lcyanogenmod/os/Build;->sdkMap:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "Boysenberry"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method

.method public static getNameForSDKInt(I)Ljava/lang/String;
    .locals 2
    .param p0, "sdkInt"    # I

    .prologue
    .line 116
    sget-object v1, Lcyanogenmod/os/Build;->sdkMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 117
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    const-string v0, "unknown"

    .line 120
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    return-object v0
.end method
