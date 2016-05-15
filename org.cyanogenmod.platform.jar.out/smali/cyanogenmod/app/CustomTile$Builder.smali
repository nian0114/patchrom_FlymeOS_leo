.class public Lcyanogenmod/app/CustomTile$Builder;
.super Ljava/lang/Object;
.source "CustomTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/app/CustomTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCollapsePanel:Z

.field private mContentDescription:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDeleteIntent:Landroid/app/PendingIntent;

.field private mExpandedStyle:Lcyanogenmod/app/CustomTile$ExpandedStyle;

.field private mIcon:I

.field private mLabel:Ljava/lang/String;

.field private mOnClick:Landroid/app/PendingIntent;

.field private mOnClickUri:Landroid/net/Uri;

.field private mOnSettingsClick:Landroid/content/Intent;

.field private mRemoteIcon:Landroid/graphics/Bitmap;

.field private mSensitiveData:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 925
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 918
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/CustomTile$Builder;->mCollapsePanel:Z

    .line 920
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcyanogenmod/app/CustomTile$Builder;->mSensitiveData:Z

    .line 926
    iput-object p1, p0, Lcyanogenmod/app/CustomTile$Builder;->mContext:Landroid/content/Context;

    .line 927
    return-void
.end method


# virtual methods
.method public build()Lcyanogenmod/app/CustomTile;
    .locals 2

    .prologue
    .line 1080
    new-instance v0, Lcyanogenmod/app/CustomTile;

    invoke-direct {v0}, Lcyanogenmod/app/CustomTile;-><init>()V

    .line 1081
    .local v0, "tile":Lcyanogenmod/app/CustomTile;
    iget-object v1, p0, Lcyanogenmod/app/CustomTile$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcyanogenmod/app/CustomTile;->resourcesPackageName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcyanogenmod/app/CustomTile;->access$302(Lcyanogenmod/app/CustomTile;Ljava/lang/String;)Ljava/lang/String;

    .line 1082
    iget-object v1, p0, Lcyanogenmod/app/CustomTile$Builder;->mOnClick:Landroid/app/PendingIntent;

    iput-object v1, v0, Lcyanogenmod/app/CustomTile;->onClick:Landroid/app/PendingIntent;

    .line 1083
    iget-object v1, p0, Lcyanogenmod/app/CustomTile$Builder;->mOnSettingsClick:Landroid/content/Intent;

    iput-object v1, v0, Lcyanogenmod/app/CustomTile;->onSettingsClick:Landroid/content/Intent;

    .line 1084
    iget-object v1, p0, Lcyanogenmod/app/CustomTile$Builder;->mOnClickUri:Landroid/net/Uri;

    iput-object v1, v0, Lcyanogenmod/app/CustomTile;->onClickUri:Landroid/net/Uri;

    .line 1085
    iget-object v1, p0, Lcyanogenmod/app/CustomTile$Builder;->mLabel:Ljava/lang/String;

    iput-object v1, v0, Lcyanogenmod/app/CustomTile;->label:Ljava/lang/String;

    .line 1086
    iget-object v1, p0, Lcyanogenmod/app/CustomTile$Builder;->mContentDescription:Ljava/lang/String;

    iput-object v1, v0, Lcyanogenmod/app/CustomTile;->contentDescription:Ljava/lang/String;

    .line 1087
    iget-object v1, p0, Lcyanogenmod/app/CustomTile$Builder;->mExpandedStyle:Lcyanogenmod/app/CustomTile$ExpandedStyle;

    iput-object v1, v0, Lcyanogenmod/app/CustomTile;->expandedStyle:Lcyanogenmod/app/CustomTile$ExpandedStyle;

    .line 1088
    iget v1, p0, Lcyanogenmod/app/CustomTile$Builder;->mIcon:I

    iput v1, v0, Lcyanogenmod/app/CustomTile;->icon:I

    .line 1089
    iget-boolean v1, p0, Lcyanogenmod/app/CustomTile$Builder;->mCollapsePanel:Z

    iput-boolean v1, v0, Lcyanogenmod/app/CustomTile;->collapsePanel:Z

    .line 1090
    iget-object v1, p0, Lcyanogenmod/app/CustomTile$Builder;->mRemoteIcon:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcyanogenmod/app/CustomTile;->remoteIcon:Landroid/graphics/Bitmap;

    .line 1091
    iget-object v1, p0, Lcyanogenmod/app/CustomTile$Builder;->mDeleteIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Lcyanogenmod/app/CustomTile;->deleteIntent:Landroid/app/PendingIntent;

    .line 1092
    iget-boolean v1, p0, Lcyanogenmod/app/CustomTile$Builder;->mSensitiveData:Z

    iput-boolean v1, v0, Lcyanogenmod/app/CustomTile;->sensitiveData:Z

    .line 1093
    return-object v0
.end method

.method public hasSensitiveData(Z)Lcyanogenmod/app/CustomTile$Builder;
    .locals 0
    .param p1, "bool"    # Z

    .prologue
    .line 1071
    iput-boolean p1, p0, Lcyanogenmod/app/CustomTile$Builder;->mSensitiveData:Z

    .line 1072
    return-object p0
.end method

.method public setContentDescription(I)Lcyanogenmod/app/CustomTile$Builder;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 965
    iget-object v0, p0, Lcyanogenmod/app/CustomTile$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcyanogenmod/app/CustomTile$Builder;->mContentDescription:Ljava/lang/String;

    .line 966
    return-object p0
.end method

.method public setContentDescription(Ljava/lang/String;)Lcyanogenmod/app/CustomTile$Builder;
    .locals 0
    .param p1, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 955
    iput-object p1, p0, Lcyanogenmod/app/CustomTile$Builder;->mContentDescription:Ljava/lang/String;

    .line 956
    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Lcyanogenmod/app/CustomTile$Builder;
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1060
    iput-object p1, p0, Lcyanogenmod/app/CustomTile$Builder;->mDeleteIntent:Landroid/app/PendingIntent;

    .line 1061
    return-object p0
.end method

.method public setExpandedStyle(Lcyanogenmod/app/CustomTile$ExpandedStyle;)Lcyanogenmod/app/CustomTile$Builder;
    .locals 1
    .param p1, "expandedStyle"    # Lcyanogenmod/app/CustomTile$ExpandedStyle;

    .prologue
    .line 1031
    iget-object v0, p0, Lcyanogenmod/app/CustomTile$Builder;->mExpandedStyle:Lcyanogenmod/app/CustomTile$ExpandedStyle;

    if-eq v0, p1, :cond_0

    .line 1032
    iput-object p1, p0, Lcyanogenmod/app/CustomTile$Builder;->mExpandedStyle:Lcyanogenmod/app/CustomTile$ExpandedStyle;

    .line 1033
    iget-object v0, p0, Lcyanogenmod/app/CustomTile$Builder;->mExpandedStyle:Lcyanogenmod/app/CustomTile$ExpandedStyle;

    if-eqz v0, :cond_0

    .line 1034
    invoke-virtual {p1, p0}, Lcyanogenmod/app/CustomTile$ExpandedStyle;->setBuilder(Lcyanogenmod/app/CustomTile$Builder;)V

    .line 1037
    :cond_0
    return-object p0
.end method

.method public setIcon(I)Lcyanogenmod/app/CustomTile$Builder;
    .locals 0
    .param p1, "drawableId"    # I

    .prologue
    .line 1007
    iput p1, p0, Lcyanogenmod/app/CustomTile$Builder;->mIcon:I

    .line 1008
    return-object p0
.end method

.method public setIcon(Landroid/graphics/Bitmap;)Lcyanogenmod/app/CustomTile$Builder;
    .locals 1
    .param p1, "remoteIcon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1020
    const/4 v0, 0x0

    iput v0, p0, Lcyanogenmod/app/CustomTile$Builder;->mIcon:I

    .line 1021
    iput-object p1, p0, Lcyanogenmod/app/CustomTile$Builder;->mRemoteIcon:Landroid/graphics/Bitmap;

    .line 1022
    return-object p0
.end method

.method public setLabel(I)Lcyanogenmod/app/CustomTile$Builder;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 945
    iget-object v0, p0, Lcyanogenmod/app/CustomTile$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcyanogenmod/app/CustomTile$Builder;->mLabel:Ljava/lang/String;

    .line 946
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcyanogenmod/app/CustomTile$Builder;
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 935
    iput-object p1, p0, Lcyanogenmod/app/CustomTile$Builder;->mLabel:Ljava/lang/String;

    .line 936
    return-object p0
.end method

.method public setOnClickIntent(Landroid/app/PendingIntent;)Lcyanogenmod/app/CustomTile$Builder;
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 975
    iput-object p1, p0, Lcyanogenmod/app/CustomTile$Builder;->mOnClick:Landroid/app/PendingIntent;

    .line 976
    return-object p0
.end method

.method public setOnClickUri(Landroid/net/Uri;)Lcyanogenmod/app/CustomTile$Builder;
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 996
    iput-object p1, p0, Lcyanogenmod/app/CustomTile$Builder;->mOnClickUri:Landroid/net/Uri;

    .line 997
    return-object p0
.end method

.method public setOnSettingsClickIntent(Landroid/content/Intent;)Lcyanogenmod/app/CustomTile$Builder;
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 986
    iput-object p1, p0, Lcyanogenmod/app/CustomTile$Builder;->mOnSettingsClick:Landroid/content/Intent;

    .line 987
    return-object p0
.end method

.method public shouldCollapsePanel(Z)Lcyanogenmod/app/CustomTile$Builder;
    .locals 0
    .param p1, "bool"    # Z

    .prologue
    .line 1047
    iput-boolean p1, p0, Lcyanogenmod/app/CustomTile$Builder;->mCollapsePanel:Z

    .line 1048
    return-object p0
.end method
