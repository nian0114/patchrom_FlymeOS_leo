.class public Lcyanogenmod/app/CustomTile;
.super Ljava/lang/Object;
.source "CustomTile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/app/CustomTile$Builder;,
        Lcyanogenmod/app/CustomTile$ExpandedListItem;,
        Lcyanogenmod/app/CustomTile$ExpandedGridItem;,
        Lcyanogenmod/app/CustomTile$ExpandedItem;,
        Lcyanogenmod/app/CustomTile$RemoteExpandedStyle;,
        Lcyanogenmod/app/CustomTile$ListExpandedStyle;,
        Lcyanogenmod/app/CustomTile$GridExpandedStyle;,
        Lcyanogenmod/app/CustomTile$ExpandedStyle;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/app/CustomTile;",
            ">;"
        }
    .end annotation
.end field

.field public static final PSEUDO_GRID_ITEM_MAX_COUNT:I = 0x9


# instance fields
.field public collapsePanel:Z

.field public contentDescription:Ljava/lang/String;

.field public deleteIntent:Landroid/app/PendingIntent;

.field public expandedStyle:Lcyanogenmod/app/CustomTile$ExpandedStyle;

.field public icon:I

.field public label:Ljava/lang/String;

.field public onClick:Landroid/app/PendingIntent;

.field public onClickUri:Landroid/net/Uri;

.field public onSettingsClick:Landroid/content/Intent;

.field public remoteIcon:Landroid/graphics/Bitmap;

.field private resourcesPackageName:Ljava/lang/String;

.field public sensitiveData:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 878
    new-instance v0, Lcyanogenmod/app/CustomTile$1;

    invoke-direct {v0}, Lcyanogenmod/app/CustomTile$1;-><init>()V

    sput-object v0, Lcyanogenmod/app/CustomTile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcyanogenmod/app/CustomTile;->resourcesPackageName:Ljava/lang/String;

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/CustomTile;->collapsePanel:Z

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcyanogenmod/app/CustomTile;->sensitiveData:Z

    .line 175
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v3, ""

    iput-object v3, p0, Lcyanogenmod/app/CustomTile;->resourcesPackageName:Ljava/lang/String;

    .line 109
    iput-boolean v4, p0, Lcyanogenmod/app/CustomTile;->collapsePanel:Z

    .line 116
    iput-boolean v5, p0, Lcyanogenmod/app/CustomTile;->sensitiveData:Z

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 125
    .local v1, "parcelableVersion":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 126
    .local v0, "parcelableSize":I
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 131
    .local v2, "startPosition":I
    if-lt v1, v4, :cond_6

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    iput-object v3, p0, Lcyanogenmod/app/CustomTile;->onClick:Landroid/app/PendingIntent;

    .line 135
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 136
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    iput-object v3, p0, Lcyanogenmod/app/CustomTile;->onSettingsClick:Landroid/content/Intent;

    .line 138
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 139
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Lcyanogenmod/app/CustomTile;->onClickUri:Landroid/net/Uri;

    .line 141
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcyanogenmod/app/CustomTile;->label:Ljava/lang/String;

    .line 144
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcyanogenmod/app/CustomTile;->contentDescription:Ljava/lang/String;

    .line 147
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    .line 148
    sget-object v3, Lcyanogenmod/app/CustomTile$ExpandedStyle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcyanogenmod/app/CustomTile$ExpandedStyle;

    iput-object v3, p0, Lcyanogenmod/app/CustomTile;->expandedStyle:Lcyanogenmod/app/CustomTile$ExpandedStyle;

    .line 150
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcyanogenmod/app/CustomTile;->icon:I

    .line 153
    :cond_6
    const/4 v3, 0x2

    if-lt v1, v3, :cond_9

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcyanogenmod/app/CustomTile;->resourcesPackageName:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v4, :cond_a

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcyanogenmod/app/CustomTile;->collapsePanel:Z

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    .line 157
    sget-object v3, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcyanogenmod/app/CustomTile;->remoteIcon:Landroid/graphics/Bitmap;

    .line 159
    :cond_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    .line 160
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    iput-object v3, p0, Lcyanogenmod/app/CustomTile;->deleteIntent:Landroid/app/PendingIntent;

    .line 162
    :cond_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v4, :cond_b

    :goto_1
    iput-boolean v4, p0, Lcyanogenmod/app/CustomTile;->sensitiveData:Z

    .line 165
    :cond_9
    add-int v3, v2, v0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 166
    return-void

    :cond_a
    move v3, v5

    .line 155
    goto :goto_0

    :cond_b
    move v4, v5

    .line 162
    goto :goto_1
.end method

.method static synthetic access$302(Lcyanogenmod/app/CustomTile;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcyanogenmod/app/CustomTile;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcyanogenmod/app/CustomTile;->resourcesPackageName:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public clone()Lcyanogenmod/app/CustomTile;
    .locals 1

    .prologue
    .line 184
    new-instance v0, Lcyanogenmod/app/CustomTile;

    invoke-direct {v0}, Lcyanogenmod/app/CustomTile;-><init>()V

    .line 185
    .local v0, "that":Lcyanogenmod/app/CustomTile;
    invoke-virtual {p0, v0}, Lcyanogenmod/app/CustomTile;->cloneInto(Lcyanogenmod/app/CustomTile;)V

    .line 186
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0}, Lcyanogenmod/app/CustomTile;->clone()Lcyanogenmod/app/CustomTile;

    move-result-object v0

    return-object v0
.end method

.method public cloneInto(Lcyanogenmod/app/CustomTile;)V
    .locals 1
    .param p1, "that"    # Lcyanogenmod/app/CustomTile;

    .prologue
    .line 230
    iget-object v0, p0, Lcyanogenmod/app/CustomTile;->resourcesPackageName:Ljava/lang/String;

    iput-object v0, p1, Lcyanogenmod/app/CustomTile;->resourcesPackageName:Ljava/lang/String;

    .line 231
    iget-object v0, p0, Lcyanogenmod/app/CustomTile;->onClick:Landroid/app/PendingIntent;

    iput-object v0, p1, Lcyanogenmod/app/CustomTile;->onClick:Landroid/app/PendingIntent;

    .line 232
    iget-object v0, p0, Lcyanogenmod/app/CustomTile;->onSettingsClick:Landroid/content/Intent;

    iput-object v0, p1, Lcyanogenmod/app/CustomTile;->onSettingsClick:Landroid/content/Intent;

    .line 233
    iget-object v0, p0, Lcyanogenmod/app/CustomTile;->onClickUri:Landroid/net/Uri;

    iput-object v0, p1, Lcyanogenmod/app/CustomTile;->onClickUri:Landroid/net/Uri;

    .line 234
    iget-object v0, p0, Lcyanogenmod/app/CustomTile;->label:Ljava/lang/String;

    iput-object v0, p1, Lcyanogenmod/app/CustomTile;->label:Ljava/lang/String;

    .line 235
    iget-object v0, p0, Lcyanogenmod/app/CustomTile;->contentDescription:Ljava/lang/String;

    iput-object v0, p1, Lcyanogenmod/app/CustomTile;->contentDescription:Ljava/lang/String;

    .line 236
    iget-object v0, p0, Lcyanogenmod/app/CustomTile;->expandedStyle:Lcyanogenmod/app/CustomTile$ExpandedStyle;

    iput-object v0, p1, Lcyanogenmod/app/CustomTile;->expandedStyle:Lcyanogenmod/app/CustomTile$ExpandedStyle;

    .line 237
    iget v0, p0, Lcyanogenmod/app/CustomTile;->icon:I

    iput v0, p1, Lcyanogenmod/app/CustomTile;->icon:I

    .line 238
    iget-boolean v0, p0, Lcyanogenmod/app/CustomTile;->collapsePanel:Z

    iput-boolean v0, p1, Lcyanogenmod/app/CustomTile;->collapsePanel:Z

    .line 239
    iget-object v0, p0, Lcyanogenmod/app/CustomTile;->remoteIcon:Landroid/graphics/Bitmap;

    iput-object v0, p1, Lcyanogenmod/app/CustomTile;->remoteIcon:Landroid/graphics/Bitmap;

    .line 240
    iget-object v0, p0, Lcyanogenmod/app/CustomTile;->deleteIntent:Landroid/app/PendingIntent;

    iput-object v0, p1, Lcyanogenmod/app/CustomTile;->deleteIntent:Landroid/app/PendingIntent;

    .line 241
    iget-boolean v0, p0, Lcyanogenmod/app/CustomTile;->sensitiveData:Z

    iput-boolean v0, p1, Lcyanogenmod/app/CustomTile;->sensitiveData:Z

    .line 242
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    return v0
.end method

.method public getResourcesPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcyanogenmod/app/CustomTile;->resourcesPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .local v1, "b":Ljava/lang/StringBuilder;
    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "NEW_LINE":Ljava/lang/String;
    iget-object v2, p0, Lcyanogenmod/app/CustomTile;->onClickUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClickUri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->onClickUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    :cond_0
    iget-object v2, p0, Lcyanogenmod/app/CustomTile;->onClick:Landroid/app/PendingIntent;

    if-eqz v2, :cond_1

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->onClick:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    :cond_1
    iget-object v2, p0, Lcyanogenmod/app/CustomTile;->onSettingsClick:Landroid/content/Intent;

    if-eqz v2, :cond_2

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSettingsClick="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->onSettingsClick:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    :cond_2
    iget-object v2, p0, Lcyanogenmod/app/CustomTile;->label:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "label="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    :cond_3
    iget-object v2, p0, Lcyanogenmod/app/CustomTile;->contentDescription:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contentDescription="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->contentDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    :cond_4
    iget-object v2, p0, Lcyanogenmod/app/CustomTile;->expandedStyle:Lcyanogenmod/app/CustomTile$ExpandedStyle;

    if-eqz v2, :cond_5

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expandedStyle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->expandedStyle:Lcyanogenmod/app/CustomTile$ExpandedStyle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "icon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcyanogenmod/app/CustomTile;->icon:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resourcesPackageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->resourcesPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "collapsePanel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcyanogenmod/app/CustomTile;->collapsePanel:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    iget-object v2, p0, Lcyanogenmod/app/CustomTile;->remoteIcon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remoteIcon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->remoteIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getGenerationId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    :cond_6
    iget-object v2, p0, Lcyanogenmod/app/CustomTile;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_7

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteIntent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sensitiveData="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcyanogenmod/app/CustomTile;->sensitiveData:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 253
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 258
    .local v1, "sizePosition":I
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 262
    .local v2, "startPosition":I
    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->onClick:Landroid/app/PendingIntent;

    if-eqz v3, :cond_0

    .line 263
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->onClick:Landroid/app/PendingIntent;

    invoke-virtual {v3, p1, v5}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 268
    :goto_0
    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->onSettingsClick:Landroid/content/Intent;

    if-eqz v3, :cond_1

    .line 269
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->onSettingsClick:Landroid/content/Intent;

    invoke-virtual {v3, p1, v5}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 274
    :goto_1
    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->onClickUri:Landroid/net/Uri;

    if-eqz v3, :cond_2

    .line 275
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->onClickUri:Landroid/net/Uri;

    invoke-virtual {v3, p1, v5}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 280
    :goto_2
    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->label:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 281
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->label:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 286
    :goto_3
    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->contentDescription:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 287
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->contentDescription:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 292
    :goto_4
    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->expandedStyle:Lcyanogenmod/app/CustomTile$ExpandedStyle;

    if-eqz v3, :cond_5

    .line 293
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->expandedStyle:Lcyanogenmod/app/CustomTile$ExpandedStyle;

    invoke-virtual {v3, p1, v5}, Lcyanogenmod/app/CustomTile$ExpandedStyle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 298
    :goto_5
    iget v3, p0, Lcyanogenmod/app/CustomTile;->icon:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->resourcesPackageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 302
    iget-boolean v3, p0, Lcyanogenmod/app/CustomTile;->collapsePanel:Z

    if-eqz v3, :cond_6

    move v3, v4

    :goto_6
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->remoteIcon:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_7

    .line 304
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->remoteIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3, p1, v5}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 309
    :goto_7
    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_8

    .line 310
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, p1, v5}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 315
    :goto_8
    iget-boolean v3, p0, Lcyanogenmod/app/CustomTile;->sensitiveData:Z

    if-eqz v3, :cond_9

    :goto_9
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int v0, v3, v2

    .line 319
    .local v0, "parcelableSize":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 320
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    add-int v3, v2, v0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 322
    return-void

    .line 266
    .end local v0    # "parcelableSize":I
    :cond_0
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 272
    :cond_1
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 278
    :cond_2
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 284
    :cond_3
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 290
    :cond_4
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 296
    :cond_5
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    :cond_6
    move v3, v5

    .line 302
    goto :goto_6

    .line 307
    :cond_7
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 313
    :cond_8
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    :cond_9
    move v4, v5

    .line 315
    goto :goto_9
.end method
