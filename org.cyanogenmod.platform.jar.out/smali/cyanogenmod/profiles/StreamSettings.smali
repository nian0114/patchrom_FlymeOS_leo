.class public final Lcyanogenmod/profiles/StreamSettings;
.super Ljava/lang/Object;
.source "StreamSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/profiles/StreamSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDirty:Z

.field private mOverride:Z

.field private mStreamId:I

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcyanogenmod/profiles/StreamSettings$1;

    invoke-direct {v0}, Lcyanogenmod/profiles/StreamSettings$1;-><init>()V

    sput-object v0, Lcyanogenmod/profiles/StreamSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "streamId"    # I

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, v0, v0}, Lcyanogenmod/profiles/StreamSettings;-><init>(IIZ)V

    .line 74
    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 1
    .param p1, "streamId"    # I
    .param p2, "value"    # I
    .param p3, "override"    # Z

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput p1, p0, Lcyanogenmod/profiles/StreamSettings;->mStreamId:I

    .line 85
    iput p2, p0, Lcyanogenmod/profiles/StreamSettings;->mValue:I

    .line 86
    iput-boolean p3, p0, Lcyanogenmod/profiles/StreamSettings;->mOverride:Z

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcyanogenmod/profiles/StreamSettings;->mDirty:Z

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p0, p1}, Lcyanogenmod/profiles/StreamSettings;->readFromParcel(Landroid/os/Parcel;)V

    .line 66
    return-void
.end method

.method public static fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Lcyanogenmod/profiles/StreamSettings;
    .locals 5
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 141
    .local v0, "event":I
    new-instance v2, Lcyanogenmod/profiles/StreamSettings;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcyanogenmod/profiles/StreamSettings;-><init>(I)V

    .line 142
    .local v2, "streamDescriptor":Lcyanogenmod/profiles/StreamSettings;
    :goto_0
    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "streamDescriptor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 143
    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 144
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "name":Ljava/lang/String;
    const-string v3, "streamId"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 146
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcyanogenmod/profiles/StreamSettings;->mStreamId:I

    .line 155
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 147
    .restart local v1    # "name":Ljava/lang/String;
    :cond_2
    const-string v3, "value"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 148
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcyanogenmod/profiles/StreamSettings;->mValue:I

    goto :goto_1

    .line 149
    :cond_3
    const-string v3, "override"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 150
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Lcyanogenmod/profiles/StreamSettings;->mOverride:Z

    goto :goto_1

    .line 152
    .end local v1    # "name":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 153
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Premature end of file while parsing stream settings"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 157
    :cond_5
    return-object v2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public getStreamId()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcyanogenmod/profiles/StreamSettings;->mStreamId:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcyanogenmod/profiles/StreamSettings;->mValue:I

    return v0
.end method

.method public getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V
    .locals 1
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 162
    const-string v0, "<streamDescriptor>\n<streamId>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    iget v0, p0, Lcyanogenmod/profiles/StreamSettings;->mStreamId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    const-string v0, "</streamId>\n<value>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    iget v0, p0, Lcyanogenmod/profiles/StreamSettings;->mValue:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    const-string v0, "</value>\n<override>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    iget-boolean v0, p0, Lcyanogenmod/profiles/StreamSettings;->mOverride:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 168
    const-string v0, "</override>\n</streamDescriptor>\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcyanogenmod/profiles/StreamSettings;->mDirty:Z

    .line 170
    return-void
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcyanogenmod/profiles/StreamSettings;->mDirty:Z

    return v0
.end method

.method public isOverride()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcyanogenmod/profiles/StreamSettings;->mOverride:Z

    return v0
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

    iput v3, p0, Lcyanogenmod/profiles/StreamSettings;->mStreamId:I

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcyanogenmod/profiles/StreamSettings;->mOverride:Z

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcyanogenmod/profiles/StreamSettings;->mValue:I

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    iput-boolean v4, p0, Lcyanogenmod/profiles/StreamSettings;->mDirty:Z

    .line 221
    :cond_0
    add-int v3, v2, v0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 222
    return-void

    :cond_1
    move v3, v5

    .line 216
    goto :goto_0

    :cond_2
    move v4, v5

    .line 218
    goto :goto_1
.end method

.method public setOverride(Z)V
    .locals 1
    .param p1, "override"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcyanogenmod/profiles/StreamSettings;->mOverride:Z

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/profiles/StreamSettings;->mDirty:Z

    .line 122
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 111
    iput p1, p0, Lcyanogenmod/profiles/StreamSettings;->mValue:I

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/profiles/StreamSettings;->mDirty:Z

    .line 113
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 182
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 187
    .local v1, "sizePosition":I
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 191
    .local v2, "startPosition":I
    iget v3, p0, Lcyanogenmod/profiles/StreamSettings;->mStreamId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget-boolean v3, p0, Lcyanogenmod/profiles/StreamSettings;->mOverride:Z

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget v3, p0, Lcyanogenmod/profiles/StreamSettings;->mValue:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget-boolean v3, p0, Lcyanogenmod/profiles/StreamSettings;->mDirty:Z

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
