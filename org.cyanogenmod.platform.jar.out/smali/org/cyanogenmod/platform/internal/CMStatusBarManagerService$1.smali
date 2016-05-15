.class Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "CMStatusBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 107
    .local v7, "action":Ljava/lang/String;
    if-nez v7, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    const/16 v18, 0x0

    .line 112
    .local v18, "queryRestart":Z
    const/16 v16, 0x0

    .line 113
    .local v16, "queryRemove":Z
    const/4 v13, 0x0

    .line 114
    .local v13, "packageChanged":Z
    const/16 v19, 0x1

    .line 116
    .local v19, "removeTiles":Z
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    const-string v1, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    :cond_2
    const-string v1, "android.intent.extra.user_handle"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 124
    .local v4, "changeUserId":I
    const/4 v14, 0x0

    .line 125
    .local v14, "pkgList":[Ljava/lang/String;
    if-eqz v16, :cond_4

    const-string v1, "android.intent.extra.REPLACING"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v17, 0x1

    .line 127
    .local v17, "queryReplace":Z
    :goto_1
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 128
    const-string v1, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 162
    :goto_2
    if-eqz v14, :cond_b

    array-length v1, v14

    if-lez v1, :cond_b

    .line 163
    move-object v8, v14

    .local v8, "arr$":[Ljava/lang/String;
    array-length v12, v8

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_3
    if-ge v11, v12, :cond_b

    aget-object v2, v8, v11

    .line 164
    .local v2, "pkgName":Ljava/lang/String;
    if-eqz v19, :cond_3

    .line 165
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;

    if-nez v18, :cond_a

    const/4 v3, 0x1

    :goto_4
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->removeAllCustomTilesInt(Ljava/lang/String;ZIILorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;)Z

    .line 163
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 125
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    .end local v17    # "queryReplace":Z
    :cond_4
    const/16 v17, 0x0

    goto :goto_1

    .line 129
    .restart local v17    # "queryReplace":Z
    :cond_5
    if-eqz v18, :cond_6

    .line 130
    const-string v1, "android.intent.extra.PACKAGES"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    goto :goto_2

    .line 132
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v20

    .line 133
    .local v20, "uri":Landroid/net/Uri;
    if-eqz v20, :cond_0

    .line 136
    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 137
    .restart local v2    # "pkgName":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 140
    if-eqz v13, :cond_8

    .line 143
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v15

    .line 144
    .local v15, "pm":Landroid/content/pm/IPackageManager;
    const/4 v1, -0x1

    if-eq v4, v1, :cond_9

    move v1, v4

    :goto_5
    invoke-interface {v15, v2, v1}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    .line 147
    .local v10, "enabled":I
    const/4 v1, 0x1

    if-eq v10, v1, :cond_7

    if-nez v10, :cond_8

    .line 149
    :cond_7
    const/16 v19, 0x0

    .line 159
    .end local v10    # "enabled":I
    .end local v15    # "pm":Landroid/content/pm/IPackageManager;
    :cond_8
    :goto_6
    const/4 v1, 0x1

    new-array v14, v1, [Ljava/lang/String;

    .end local v14    # "pkgList":[Ljava/lang/String;
    const/4 v1, 0x0

    aput-object v2, v14, v1

    .restart local v14    # "pkgList":[Ljava/lang/String;
    goto :goto_2

    .line 144
    .restart local v15    # "pm":Landroid/content/pm/IPackageManager;
    :cond_9
    const/4 v1, 0x0

    goto :goto_5

    .line 151
    .end local v15    # "pm":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v9

    .line 154
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "CMStatusBarManagerService"

    const-string v3, "Exception trying to look up app enabled setting"

    invoke-static {v1, v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 165
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    .end local v20    # "uri":Landroid/net/Uri;
    .restart local v8    # "arr$":[Ljava/lang/String;
    .restart local v11    # "i$":I
    .restart local v12    # "len$":I
    :cond_a
    const/4 v3, 0x0

    goto :goto_4

    .line 170
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;

    # getter for: Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mCustomTileListeners:Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;
    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->access$000(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;)Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;

    move-result-object v1

    move/from16 v0, v17

    invoke-virtual {v1, v0, v14}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;->onPackagesChanged(Z[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 155
    .restart local v2    # "pkgName":Ljava/lang/String;
    .restart local v20    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v1

    goto :goto_6
.end method
