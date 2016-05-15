.class Lcyanogenmod/app/ThemeVersion$ThemeVersionImpl3;
.super Ljava/lang/Object;
.source "ThemeVersion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/app/ThemeVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThemeVersionImpl3"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fwCompVersionToSdkVersion(Landroid/content/ThemeVersion$ComponentVersion;)Lcyanogenmod/app/ThemeVersion$ComponentVersion;
    .locals 11
    .param p0, "version"    # Landroid/content/ThemeVersion$ComponentVersion;

    .prologue
    .line 191
    sget-object v2, Lcyanogenmod/app/ThemeComponent;->UNKNOWN:Lcyanogenmod/app/ThemeComponent;

    .line 192
    .local v2, "component":Lcyanogenmod/app/ThemeComponent;
    invoke-static {}, Lcyanogenmod/app/ThemeComponent;->values()[Lcyanogenmod/app/ThemeComponent;

    move-result-object v7

    .local v7, "arr$":[Lcyanogenmod/app/ThemeComponent;
    array-length v9, v7

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v9, :cond_1

    aget-object v6, v7, v8

    .line 193
    .local v6, "aComponent":Lcyanogenmod/app/ThemeComponent;
    iget v0, v6, Lcyanogenmod/app/ThemeComponent;->id:I

    iget v10, p0, Landroid/content/ThemeVersion$ComponentVersion;->id:I

    if-ne v0, v10, :cond_0

    .line 194
    move-object v2, v6

    .line 192
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 198
    .end local v6    # "aComponent":Lcyanogenmod/app/ThemeComponent;
    :cond_1
    iget v1, p0, Landroid/content/ThemeVersion$ComponentVersion;->id:I

    .line 199
    .local v1, "id":I
    invoke-virtual {p0}, Landroid/content/ThemeVersion$ComponentVersion;->name()Ljava/lang/String;

    move-result-object v3

    .line 200
    .local v3, "name":Ljava/lang/String;
    iget v4, p0, Landroid/content/ThemeVersion$ComponentVersion;->minSupportedVersion:I

    .line 201
    .local v4, "minVersion":I
    iget v5, p0, Landroid/content/ThemeVersion$ComponentVersion;->currentVersion:I

    .line 203
    .local v5, "targetVersion":I
    new-instance v0, Lcyanogenmod/app/ThemeVersion$ComponentVersion;

    invoke-direct/range {v0 .. v5}, Lcyanogenmod/app/ThemeVersion$ComponentVersion;-><init>(ILcyanogenmod/app/ThemeComponent;Ljava/lang/String;II)V

    return-object v0
.end method

.method public static getDeviceComponentVersion(Lcyanogenmod/app/ThemeComponent;)Lcyanogenmod/app/ThemeVersion$ComponentVersion;
    .locals 6
    .param p0, "component"    # Lcyanogenmod/app/ThemeComponent;

    .prologue
    .line 166
    invoke-static {}, Landroid/content/ThemeVersion$ComponentVersion;->values()[Landroid/content/ThemeVersion$ComponentVersion;

    move-result-object v0

    .local v0, "arr$":[Landroid/content/ThemeVersion$ComponentVersion;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 167
    .local v4, "version":Landroid/content/ThemeVersion$ComponentVersion;
    invoke-static {v4}, Lcyanogenmod/app/ThemeVersion$ThemeVersionImpl3;->fwCompVersionToSdkVersion(Landroid/content/ThemeVersion$ComponentVersion;)Lcyanogenmod/app/ThemeVersion$ComponentVersion;

    move-result-object v3

    .line 168
    .local v3, "sdkVersionInfo":Lcyanogenmod/app/ThemeVersion$ComponentVersion;
    iget-object v5, v3, Lcyanogenmod/app/ThemeVersion$ComponentVersion;->component:Lcyanogenmod/app/ThemeComponent;

    invoke-virtual {v5, p0}, Lcyanogenmod/app/ThemeComponent;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 172
    .end local v3    # "sdkVersionInfo":Lcyanogenmod/app/ThemeVersion$ComponentVersion;
    .end local v4    # "version":Landroid/content/ThemeVersion$ComponentVersion;
    :goto_1
    return-object v3

    .line 166
    .restart local v3    # "sdkVersionInfo":Lcyanogenmod/app/ThemeVersion$ComponentVersion;
    .restart local v4    # "version":Landroid/content/ThemeVersion$ComponentVersion;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    .end local v3    # "sdkVersionInfo":Lcyanogenmod/app/ThemeVersion$ComponentVersion;
    .end local v4    # "version":Landroid/content/ThemeVersion$ComponentVersion;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getDeviceComponentVersions()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcyanogenmod/app/ThemeVersion$ComponentVersion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v4, "versions":Ljava/util/List;, "Ljava/util/List<Lcyanogenmod/app/ThemeVersion$ComponentVersion;>;"
    invoke-static {}, Landroid/content/ThemeVersion$ComponentVersion;->values()[Landroid/content/ThemeVersion$ComponentVersion;

    move-result-object v0

    .local v0, "arr$":[Landroid/content/ThemeVersion$ComponentVersion;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 180
    .local v3, "version":Landroid/content/ThemeVersion$ComponentVersion;
    invoke-static {v3}, Lcyanogenmod/app/ThemeVersion$ThemeVersionImpl3;->fwCompVersionToSdkVersion(Landroid/content/ThemeVersion$ComponentVersion;)Lcyanogenmod/app/ThemeVersion$ComponentVersion;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    .end local v3    # "version":Landroid/content/ThemeVersion$ComponentVersion;
    :cond_0
    return-object v4
.end method
