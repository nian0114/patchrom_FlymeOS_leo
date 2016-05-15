.class public Lcyanogenmod/app/suggest/ApplicationSuggestion;
.super Ljava/lang/Object;
.source "ApplicationSuggestion.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/app/suggest/ApplicationSuggestion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDownloadUri:Landroid/net/Uri;

.field private mName:Ljava/lang/String;

.field private mPackage:Ljava/lang/String;

.field private mThumbnailUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcyanogenmod/app/suggest/ApplicationSuggestion$1;

    invoke-direct {v0}, Lcyanogenmod/app/suggest/ApplicationSuggestion$1;-><init>()V

    sput-object v0, Lcyanogenmod/app/suggest/ApplicationSuggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 61
    .local v1, "parcelableVersion":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 62
    .local v0, "parcelableSize":I
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 64
    .local v2, "startPosition":I
    const/4 v3, 0x1

    if-lt v1, v3, :cond_0

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcyanogenmod/app/suggest/ApplicationSuggestion;->mName:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcyanogenmod/app/suggest/ApplicationSuggestion;->mPackage:Ljava/lang/String;

    .line 67
    const-class v3, Landroid/net/Uri;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Lcyanogenmod/app/suggest/ApplicationSuggestion;->mDownloadUri:Landroid/net/Uri;

    .line 68
    const-class v3, Landroid/net/Uri;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Lcyanogenmod/app/suggest/ApplicationSuggestion;->mThumbnailUri:Landroid/net/Uri;

    .line 71
    :cond_0
    add-int v3, v2, v0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 72
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcyanogenmod/app/suggest/ApplicationSuggestion$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcyanogenmod/app/suggest/ApplicationSuggestion$1;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcyanogenmod/app/suggest/ApplicationSuggestion;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "downloadUri"    # Landroid/net/Uri;
    .param p4, "thumbnailUri"    # Landroid/net/Uri;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcyanogenmod/app/suggest/ApplicationSuggestion;->mName:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcyanogenmod/app/suggest/ApplicationSuggestion;->mPackage:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcyanogenmod/app/suggest/ApplicationSuggestion;->mDownloadUri:Landroid/net/Uri;

    .line 54
    iput-object p4, p0, Lcyanogenmod/app/suggest/ApplicationSuggestion;->mThumbnailUri:Landroid/net/Uri;

    .line 55
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public getDownloadUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcyanogenmod/app/suggest/ApplicationSuggestion;->mDownloadUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcyanogenmod/app/suggest/ApplicationSuggestion;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcyanogenmod/app/suggest/ApplicationSuggestion;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbailUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcyanogenmod/app/suggest/ApplicationSuggestion;->mThumbnailUri:Landroid/net/Uri;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 83
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 88
    .local v1, "sizePosition":I
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 91
    .local v2, "startPosition":I
    iget-object v3, p0, Lcyanogenmod/app/suggest/ApplicationSuggestion;->mName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object v3, p0, Lcyanogenmod/app/suggest/ApplicationSuggestion;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object v3, p0, Lcyanogenmod/app/suggest/ApplicationSuggestion;->mDownloadUri:Landroid/net/Uri;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 94
    iget-object v3, p0, Lcyanogenmod/app/suggest/ApplicationSuggestion;->mThumbnailUri:Landroid/net/Uri;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int v0, v3, v2

    .line 98
    .local v0, "parcelableSize":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 99
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    add-int v3, v2, v0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 101
    return-void
.end method
