.class public final Lcyanogenmod/profiles/ConnectionSettings;
.super Ljava/lang/Object;
.source "ConnectionSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/profiles/ConnectionSettings$BooleanState;
    }
.end annotation


# static fields
.field private static final ACTION_MODIFY_NETWORK_MODE:Ljava/lang/String; = "com.android.internal.telephony.MODIFY_NETWORK_MODE"

.field private static final CM_MODE_2G:I = 0x0

.field private static final CM_MODE_2G3G:I = 0x3

.field private static final CM_MODE_3G:I = 0x1

.field private static final CM_MODE_4G:I = 0x2

.field private static final CM_MODE_ALL:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/profiles/ConnectionSettings;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXTRA_NETWORK_MODE:Ljava/lang/String; = "networkMode"

.field public static final PROFILE_CONNECTION_2G3G4G:I = 0x9

.field public static final PROFILE_CONNECTION_BLUETOOTH:I = 0x7

.field public static final PROFILE_CONNECTION_GPS:I = 0x4

.field public static final PROFILE_CONNECTION_MOBILEDATA:I = 0x0

.field public static final PROFILE_CONNECTION_NFC:I = 0x8

.field public static final PROFILE_CONNECTION_SYNC:I = 0x5

.field public static final PROFILE_CONNECTION_WIFI:I = 0x1

.field public static final PROFILE_CONNECTION_WIFIAP:I = 0x2

.field public static final PROFILE_CONNECTION_WIMAX:I = 0x3


# instance fields
.field private mConnectionId:I

.field private mDirty:Z

.field private mOverride:Z

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 137
    new-instance v0, Lcyanogenmod/profiles/ConnectionSettings$1;

    invoke-direct {v0}, Lcyanogenmod/profiles/ConnectionSettings$1;-><init>()V

    sput-object v0, Lcyanogenmod/profiles/ConnectionSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "connectionId"    # I

    .prologue
    const/4 v0, 0x0

    .line 162
    invoke-direct {p0, p1, v0, v0}, Lcyanogenmod/profiles/ConnectionSettings;-><init>(IIZ)V

    .line 163
    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 1
    .param p1, "connectionId"    # I
    .param p2, "value"    # I
    .param p3, "override"    # Z

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput p1, p0, Lcyanogenmod/profiles/ConnectionSettings;->mConnectionId:I

    .line 174
    iput p2, p0, Lcyanogenmod/profiles/ConnectionSettings;->mValue:I

    .line 175
    iput-boolean p3, p0, Lcyanogenmod/profiles/ConnectionSettings;->mOverride:Z

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mDirty:Z

    .line 177
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    invoke-virtual {p0, p1}, Lcyanogenmod/profiles/ConnectionSettings;->readFromParcel(Landroid/os/Parcel;)V

    .line 155
    return-void
.end method

.method public static fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Lcyanogenmod/profiles/ConnectionSettings;
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
    .line 355
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 356
    .local v1, "event":I
    new-instance v0, Lcyanogenmod/profiles/ConnectionSettings;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcyanogenmod/profiles/ConnectionSettings;-><init>(I)V

    .line 357
    .local v0, "connectionDescriptor":Lcyanogenmod/profiles/ConnectionSettings;
    :goto_0
    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "connectionDescriptor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 358
    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 359
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 360
    .local v2, "name":Ljava/lang/String;
    const-string v3, "connectionId"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 361
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcyanogenmod/profiles/ConnectionSettings;->mConnectionId:I

    .line 370
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 362
    .restart local v2    # "name":Ljava/lang/String;
    :cond_2
    const-string v3, "value"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 363
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcyanogenmod/profiles/ConnectionSettings;->mValue:I

    goto :goto_1

    .line 364
    :cond_3
    const-string v3, "override"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 365
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lcyanogenmod/profiles/ConnectionSettings;->mOverride:Z

    goto :goto_1

    .line 367
    .end local v2    # "name":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 368
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Premature end of file while parsing connection settings"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 372
    :cond_5
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 388
    const/4 v0, 0x0

    return v0
.end method

.method public getConnectionId()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mConnectionId:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mValue:I

    return v0
.end method

.method public getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V
    .locals 1
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 377
    const-string v0, "<connectionDescriptor>\n<connectionId>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    iget v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mConnectionId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 379
    const-string v0, "</connectionId>\n<value>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    iget v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mValue:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 381
    const-string v0, "</value>\n<override>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    iget-boolean v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mOverride:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 383
    const-string v0, "</override>\n</connectionDescriptor>\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    return-void
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mDirty:Z

    return v0
.end method

.method public isOverride()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mOverride:Z

    return v0
.end method

.method public processOverride(Landroid/content/Context;)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 228
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    .line 229
    .local v4, "bta":Landroid/bluetooth/BluetoothAdapter;
    const-string v18, "location"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/location/LocationManager;

    .line 230
    .local v10, "lm":Landroid/location/LocationManager;
    const-string v18, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/wifi/WifiManager;

    .line 231
    .local v17, "wm":Landroid/net/wifi/WifiManager;
    const-string v18, "phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telephony/TelephonyManager;

    .line 233
    .local v14, "tm":Landroid/telephony/TelephonyManager;
    const/4 v11, 0x0

    .line 235
    .local v11, "nfcAdapter":Landroid/nfc/NfcAdapter;
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/nfc/NfcAdapter;->getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 240
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcyanogenmod/profiles/ConnectionSettings;->getValue()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    const/4 v7, 0x1

    .line 243
    .local v7, "forcedState":Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcyanogenmod/profiles/ConnectionSettings;->getConnectionId()I

    move-result v18

    packed-switch v18, :pswitch_data_0

    .line 350
    :cond_0
    :goto_2
    :pswitch_0
    return-void

    .line 240
    .end local v7    # "forcedState":Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 245
    .restart local v7    # "forcedState":Z
    :pswitch_1
    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v6

    .line 246
    .local v6, "currentState":Z
    if-eq v7, v6, :cond_0

    .line 247
    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v12

    .line 248
    .local v12, "phoneCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    if-ge v8, v12, :cond_0

    .line 249
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mobile_data"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    if-eqz v7, :cond_2

    const/16 v18, 0x1

    :goto_4
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 251
    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v13

    .line 252
    .local v13, "subId":[I
    const/16 v18, 0x0

    aget v18, v13, v18

    move/from16 v0, v18

    invoke-virtual {v14, v0, v7}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 248
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 249
    .end local v13    # "subId":[I
    :cond_2
    const/16 v18, 0x0

    goto :goto_4

    .line 257
    .end local v6    # "currentState":Z
    .end local v8    # "i":I
    .end local v12    # "phoneCount":I
    :pswitch_2
    new-instance v9, Landroid/content/Intent;

    const-string v18, "com.android.internal.telephony.MODIFY_NETWORK_MODE"

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcyanogenmod/profiles/ConnectionSettings;->getValue()I

    move-result v18

    packed-switch v18, :pswitch_data_1

    goto :goto_2

    .line 260
    :pswitch_3
    const-string v18, "networkMode"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 278
    :goto_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    .line 263
    :pswitch_4
    const-string v18, "networkMode"

    const/16 v19, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_5

    .line 266
    :pswitch_5
    const-string v18, "networkMode"

    const/16 v19, 0xb

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_5

    .line 269
    :pswitch_6
    const-string v18, "networkMode"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_5

    .line 272
    :pswitch_7
    const-string v18, "networkMode"

    const/16 v19, 0x9

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_5

    .line 281
    .end local v9    # "intent":Landroid/content/Intent;
    :pswitch_8
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v5

    .line 282
    .local v5, "btstate":I
    if-eqz v7, :cond_4

    const/16 v18, 0xa

    move/from16 v0, v18

    if-eq v5, v0, :cond_3

    const/16 v18, 0xd

    move/from16 v0, v18

    if-ne v5, v0, :cond_4

    .line 284
    :cond_3
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto/16 :goto_2

    .line 285
    :cond_4
    if-nez v7, :cond_0

    const/16 v18, 0xc

    move/from16 v0, v18

    if-eq v5, v0, :cond_5

    const/16 v18, 0xb

    move/from16 v0, v18

    if-ne v5, v0, :cond_0

    .line 287
    :cond_5
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto/16 :goto_2

    .line 291
    .end local v5    # "btstate":I
    :pswitch_9
    const-string v18, "gps"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v6

    .line 292
    .restart local v6    # "currentState":Z
    if-eq v6, v7, :cond_0

    .line 293
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "gps"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 298
    .end local v6    # "currentState":Z
    :pswitch_a
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v6

    .line 299
    .restart local v6    # "currentState":Z
    if-eq v7, v6, :cond_0

    .line 300
    invoke-static {v7}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    goto/16 :goto_2

    .line 304
    .end local v6    # "currentState":Z
    :pswitch_b
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v15

    .line 305
    .local v15, "wifiApState":I
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v6

    .line 306
    .restart local v6    # "currentState":Z
    if-eq v6, v7, :cond_0

    .line 308
    if-eqz v7, :cond_6

    const/16 v18, 0xc

    move/from16 v0, v18

    if-eq v15, v0, :cond_7

    :cond_6
    const/16 v18, 0xd

    move/from16 v0, v18

    if-ne v15, v0, :cond_8

    .line 310
    :cond_7
    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 312
    :cond_8
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto/16 :goto_2

    .line 316
    .end local v6    # "currentState":Z
    .end local v15    # "wifiApState":I
    :pswitch_c
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v16

    .line 317
    .local v16, "wifiState":I
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v6

    .line 318
    .restart local v6    # "currentState":Z
    if-eq v6, v7, :cond_0

    .line 320
    if-eqz v7, :cond_9

    const/16 v18, 0x2

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_a

    :cond_9
    const/16 v18, 0x3

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 322
    :cond_a
    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 324
    :cond_b
    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_2

    .line 328
    .end local v6    # "currentState":Z
    .end local v16    # "wifiState":I
    :pswitch_d
    invoke-static/range {p1 .. p1}, Landroid/net/wimax/WimaxHelper;->isWimaxSupported(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 329
    invoke-static/range {p1 .. p1}, Landroid/net/wimax/WimaxHelper;->isWimaxEnabled(Landroid/content/Context;)Z

    move-result v6

    .line 330
    .restart local v6    # "currentState":Z
    if-eq v6, v7, :cond_0

    .line 331
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Landroid/net/wimax/WimaxHelper;->setWimaxEnabled(Landroid/content/Context;Z)Z

    goto/16 :goto_2

    .line 336
    .end local v6    # "currentState":Z
    :pswitch_e
    if-eqz v11, :cond_0

    .line 337
    invoke-virtual {v11}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v3

    .line 338
    .local v3, "adapterState":I
    const/16 v18, 0x3

    move/from16 v0, v18

    if-eq v3, v0, :cond_c

    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v3, v0, :cond_d

    :cond_c
    const/4 v6, 0x1

    .line 340
    .restart local v6    # "currentState":Z
    :goto_6
    if-eq v6, v7, :cond_0

    .line 341
    if-eqz v7, :cond_e

    .line 342
    invoke-virtual {v11}, Landroid/nfc/NfcAdapter;->enable()Z

    goto/16 :goto_2

    .line 338
    .end local v6    # "currentState":Z
    :cond_d
    const/4 v6, 0x0

    goto :goto_6

    .line 343
    .restart local v6    # "currentState":Z
    :cond_e
    if-nez v7, :cond_0

    const/16 v18, 0x4

    move/from16 v0, v18

    if-eq v3, v0, :cond_0

    .line 344
    invoke-virtual {v11}, Landroid/nfc/NfcAdapter;->disable()Z

    goto/16 :goto_2

    .line 236
    .end local v3    # "adapterState":I
    .end local v6    # "currentState":Z
    .end local v7    # "forcedState":Z
    :catch_0
    move-exception v18

    goto/16 :goto_0

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_8
        :pswitch_e
        :pswitch_2
    .end packed-switch

    .line 258
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 421
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 422
    .local v1, "parcelableVersion":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 423
    .local v0, "parcelableSize":I
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 428
    .local v2, "startPosition":I
    const/4 v3, 0x2

    if-lt v1, v3, :cond_0

    .line 429
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcyanogenmod/profiles/ConnectionSettings;->mConnectionId:I

    .line 430
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcyanogenmod/profiles/ConnectionSettings;->mOverride:Z

    .line 431
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcyanogenmod/profiles/ConnectionSettings;->mValue:I

    .line 432
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    iput-boolean v4, p0, Lcyanogenmod/profiles/ConnectionSettings;->mDirty:Z

    .line 435
    :cond_0
    add-int v3, v2, v0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 436
    return-void

    :cond_1
    move v3, v5

    .line 430
    goto :goto_0

    :cond_2
    move v4, v5

    .line 432
    goto :goto_1
.end method

.method public setOverride(Z)V
    .locals 1
    .param p1, "override"    # Z

    .prologue
    .line 209
    iput-boolean p1, p0, Lcyanogenmod/profiles/ConnectionSettings;->mOverride:Z

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mDirty:Z

    .line 211
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 200
    iput p1, p0, Lcyanogenmod/profiles/ConnectionSettings;->mValue:I

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mDirty:Z

    .line 202
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 396
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 401
    .local v1, "sizePosition":I
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 405
    .local v2, "startPosition":I
    iget v3, p0, Lcyanogenmod/profiles/ConnectionSettings;->mConnectionId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 406
    iget-boolean v3, p0, Lcyanogenmod/profiles/ConnectionSettings;->mOverride:Z

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    iget v3, p0, Lcyanogenmod/profiles/ConnectionSettings;->mValue:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 408
    iget-boolean v3, p0, Lcyanogenmod/profiles/ConnectionSettings;->mDirty:Z

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 411
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int v0, v3, v2

    .line 412
    .local v0, "parcelableSize":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 413
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    add-int v3, v2, v0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 415
    return-void

    .end local v0    # "parcelableSize":I
    :cond_0
    move v3, v5

    .line 406
    goto :goto_0

    :cond_1
    move v4, v5

    .line 408
    goto :goto_1
.end method
