.class public final Lcyanogenmod/profiles/RingModeSettings;
.super Ljava/lang/Object;
.source "RingModeSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/profiles/RingModeSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final RING_MODE_MUTE:Ljava/lang/String; = "mute"

.field public static final RING_MODE_NORMAL:Ljava/lang/String; = "normal"

.field public static final RING_MODE_VIBRATE:Ljava/lang/String; = "vibrate"


# instance fields
.field private mDirty:Z

.field private mOverride:Z

.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcyanogenmod/profiles/RingModeSettings$1;

    invoke-direct {v0}, Lcyanogenmod/profiles/RingModeSettings$1;-><init>()V

    sput-object v0, Lcyanogenmod/profiles/RingModeSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 74
    const-string v0, "normal"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcyanogenmod/profiles/RingModeSettings;-><init>(Ljava/lang/String;Z)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p0, p1}, Lcyanogenmod/profiles/RingModeSettings;->readFromParcel(Landroid/os/Parcel;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "override"    # Z

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcyanogenmod/profiles/RingModeSettings;->mValue:Ljava/lang/String;

    .line 85
    iput-boolean p2, p0, Lcyanogenmod/profiles/RingModeSettings;->mOverride:Z

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcyanogenmod/profiles/RingModeSettings;->mDirty:Z

    .line 87
    return-void
.end method

.method public static fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Lcyanogenmod/profiles/RingModeSettings;
    .locals 6
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 145
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 146
    .local v0, "event":I
    new-instance v2, Lcyanogenmod/profiles/RingModeSettings;

    invoke-direct {v2}, Lcyanogenmod/profiles/RingModeSettings;-><init>()V

    .line 147
    .local v2, "ringModeDescriptor":Lcyanogenmod/profiles/RingModeSettings;
    :goto_0
    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    if-ne v0, v5, :cond_1

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ringModeDescriptor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 149
    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 150
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "name":Ljava/lang/String;
    const-string v3, "value"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 152
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcyanogenmod/profiles/RingModeSettings;->mValue:Ljava/lang/String;

    .line 159
    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 153
    .restart local v1    # "name":Ljava/lang/String;
    :cond_3
    const-string v3, "override"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 154
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Lcyanogenmod/profiles/RingModeSettings;->mOverride:Z

    goto :goto_1

    .line 156
    .end local v1    # "name":Ljava/lang/String;
    :cond_4
    if-ne v0, v5, :cond_2

    .line 157
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Premature end of file while parsing ring mode settings"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 161
    :cond_5
    return-object v2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcyanogenmod/profiles/RingModeSettings;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V
    .locals 1
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 166
    const-string v0, "<ringModeDescriptor>\n<value>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    iget-object v0, p0, Lcyanogenmod/profiles/RingModeSettings;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    const-string v0, "</value>\n<override>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    iget-boolean v0, p0, Lcyanogenmod/profiles/RingModeSettings;->mOverride:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 170
    const-string v0, "</override>\n</ringModeDescriptor>\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    return-void
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcyanogenmod/profiles/RingModeSettings;->mDirty:Z

    return v0
.end method

.method public isOverride()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcyanogenmod/profiles/RingModeSettings;->mOverride:Z

    return v0
.end method

.method public processOverride(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 130
    invoke-virtual {p0}, Lcyanogenmod/profiles/RingModeSettings;->isOverride()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    const/4 v1, 0x2

    .line 132
    .local v1, "ringerMode":I
    iget-object v2, p0, Lcyanogenmod/profiles/RingModeSettings;->mValue:Ljava/lang/String;

    const-string v3, "mute"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 133
    const/4 v1, 0x0

    .line 137
    :cond_0
    :goto_0
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 138
    .local v0, "amgr":Landroid/media/AudioManager;
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 140
    .end local v0    # "amgr":Landroid/media/AudioManager;
    .end local v1    # "ringerMode":I
    :cond_1
    return-void

    .line 134
    .restart local v1    # "ringerMode":I
    :cond_2
    iget-object v2, p0, Lcyanogenmod/profiles/RingModeSettings;->mValue:Ljava/lang/String;

    const-string v3, "vibrate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 208
    .local v1, "parcelableVersion":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 209
    .local v0, "parcelableSize":I
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 214
    .local v2, "startPosition":I
    const/4 v3, 0x2

    if-lt v1, v3, :cond_0

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcyanogenmod/profiles/RingModeSettings;->mOverride:Z

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcyanogenmod/profiles/RingModeSettings;->mValue:Ljava/lang/String;

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    iput-boolean v4, p0, Lcyanogenmod/profiles/RingModeSettings;->mDirty:Z

    .line 220
    :cond_0
    add-int v3, v2, v0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 221
    return-void

    :cond_1
    move v3, v5

    .line 215
    goto :goto_0

    :cond_2
    move v4, v5

    .line 217
    goto :goto_1
.end method

.method public setOverride(Z)V
    .locals 1
    .param p1, "override"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcyanogenmod/profiles/RingModeSettings;->mOverride:Z

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/profiles/RingModeSettings;->mDirty:Z

    .line 113
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcyanogenmod/profiles/RingModeSettings;->mValue:Ljava/lang/String;

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/profiles/RingModeSettings;->mDirty:Z

    .line 104
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 183
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 188
    .local v1, "sizePosition":I
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 192
    .local v2, "startPosition":I
    iget-boolean v3, p0, Lcyanogenmod/profiles/RingModeSettings;->mOverride:Z

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget-object v3, p0, Lcyanogenmod/profiles/RingModeSettings;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    iget-boolean v3, p0, Lcyanogenmod/profiles/RingModeSettings;->mDirty:Z

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int v0, v3, v2

    .line 198
    .local v0, "parcelableSize":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 199
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    add-int v3, v2, v0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 201
    return-void

    .end local v0    # "parcelableSize":I
    :cond_0
    move v3, v5

    .line 192
    goto :goto_0

    :cond_1
    move v4, v5

    .line 194
    goto :goto_1
.end method
