.class public final Lcyanogenmod/providers/CMSettings;
.super Ljava/lang/Object;
.source "CMSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/providers/CMSettings$Global;,
        Lcyanogenmod/providers/CMSettings$Secure;,
        Lcyanogenmod/providers/CMSettings$System;,
        Lcyanogenmod/providers/CMSettings$NameValueCache;,
        Lcyanogenmod/providers/CMSettings$CMSettingNotFoundException;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "cmsettings"

.field public static final CALL_METHOD_GET_GLOBAL:Ljava/lang/String; = "GET_global"

.field public static final CALL_METHOD_GET_SECURE:Ljava/lang/String; = "GET_secure"

.field public static final CALL_METHOD_GET_SYSTEM:Ljava/lang/String; = "GET_system"

.field public static final CALL_METHOD_MIGRATE_SETTINGS:Ljava/lang/String; = "migrate_settings"

.field public static final CALL_METHOD_MIGRATE_SETTINGS_FOR_USER:Ljava/lang/String; = "migrate_settings_for_user"

.field public static final CALL_METHOD_PUT_GLOBAL:Ljava/lang/String; = "PUT_global"

.field public static final CALL_METHOD_PUT_SECURE:Ljava/lang/String; = "PUT_secure"

.field public static final CALL_METHOD_PUT_SYSTEM:Ljava/lang/String; = "PUT_system"

.field public static final CALL_METHOD_USER_KEY:Ljava/lang/String; = "_user"

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "CMSettings"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1040
    return-void
.end method
