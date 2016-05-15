.class public Landroid/view/WindowManagerPolicyControl;
.super Ljava/lang/Object;
.source "WindowManagerPolicyControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowManagerPolicyControl$1;,
        Landroid/view/WindowManagerPolicyControl$Filter;,
        Landroid/view/WindowManagerPolicyControl$ImmersiveDefaultStyles;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final NAME_IMMERSIVE_FULL:Ljava/lang/String; = "immersive.full"

.field private static final NAME_IMMERSIVE_NAVIGATION:Ljava/lang/String; = "immersive.navigation"

.field private static final NAME_IMMERSIVE_PRECONFIRMATIONS:Ljava/lang/String; = "immersive.preconfirms"

.field private static final NAME_IMMERSIVE_STATUS:Ljava/lang/String; = "immersive.status"

.field private static TAG:Ljava/lang/String;

.field private static sDefaultImmersiveStyle:I

.field private static sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

.field private static sImmersivePreconfirmationsFilter:Landroid/view/WindowManagerPolicyControl$Filter;

.field private static sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

.field private static sSettingValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "PolicyControl"

    sput-object v0, Landroid/view/WindowManagerPolicyControl;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/WindowManagerPolicyControl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addToNavigationWhiteList(Ljava/lang/String;)V
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    sget-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/WindowManagerPolicyControl$Filter;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/view/WindowManagerPolicyControl$Filter;-><init>(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/view/WindowManagerPolicyControl$1;)V

    sput-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    :cond_0
    sget-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    # getter for: Landroid/view/WindowManagerPolicyControl$Filter;->mWhitelist:Landroid/util/ArraySet;
    invoke-static {v0}, Landroid/view/WindowManagerPolicyControl$Filter;->access$100(Landroid/view/WindowManagerPolicyControl$Filter;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    # getter for: Landroid/view/WindowManagerPolicyControl$Filter;->mWhitelist:Landroid/util/ArraySet;
    invoke-static {v0}, Landroid/view/WindowManagerPolicyControl$Filter;->access$100(Landroid/view/WindowManagerPolicyControl$Filter;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public static addToStatusWhiteList(Ljava/lang/String;)V
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    sget-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/WindowManagerPolicyControl$Filter;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/view/WindowManagerPolicyControl$Filter;-><init>(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/view/WindowManagerPolicyControl$1;)V

    sput-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    :cond_0
    sget-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    # getter for: Landroid/view/WindowManagerPolicyControl$Filter;->mWhitelist:Landroid/util/ArraySet;
    invoke-static {v0}, Landroid/view/WindowManagerPolicyControl$Filter;->access$100(Landroid/view/WindowManagerPolicyControl$Filter;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    # getter for: Landroid/view/WindowManagerPolicyControl$Filter;->mWhitelist:Landroid/util/ArraySet;
    invoke-static {v0}, Landroid/view/WindowManagerPolicyControl$Filter;->access$100(Landroid/view/WindowManagerPolicyControl$Filter;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public static adjustClearableFlags(Landroid/view/WindowManagerPolicy$WindowState;I)I
    .locals 2
    .param p0, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p1, "clearableFlags"    # I

    .prologue
    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_0
    sget-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-virtual {v1, v0}, Landroid/view/WindowManagerPolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_0

    and-int/lit8 p1, p1, -0x5

    :cond_0
    return p1

    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static disableImmersiveConfirmation(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    sget-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersivePreconfirmationsFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersivePreconfirmationsFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-virtual {v0, p0}, Landroid/view/WindowManagerPolicyControl$Filter;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static dump(Ljava/lang/String;Landroid/view/WindowManagerPolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "filter"    # Landroid/view/WindowManagerPolicyControl$Filter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "pw"    # Ljava/io/PrintWriter;

    .prologue
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "PolicyControl."

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x3d

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(C)V

    if-nez p1, :cond_0

    const-string v0, "null"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p3}, Landroid/view/WindowManagerPolicyControl$Filter;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    goto :goto_0
.end method

.method public static dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const-string v0, "sImmersiveStatusFilter"

    sget-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-static {v0, v1, p0, p1}, Landroid/view/WindowManagerPolicyControl;->dump(Ljava/lang/String;Landroid/view/WindowManagerPolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V

    const-string v0, "sImmersiveNavigationFilter"

    sget-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-static {v0, v1, p0, p1}, Landroid/view/WindowManagerPolicyControl;->dump(Ljava/lang/String;Landroid/view/WindowManagerPolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V

    const-string v0, "sImmersivePreconfirmationsFilter"

    sget-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersivePreconfirmationsFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-static {v0, v1, p0, p1}, Landroid/view/WindowManagerPolicyControl;->dump(Ljava/lang/String;Landroid/view/WindowManagerPolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static getPrivateWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 3
    .param p0, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    if-eqz p1, :cond_5

    :goto_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .local v0, "privateFlags":I
    sget-object v2, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-eqz v2, :cond_1

    sget-object v2, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-eqz v2, :cond_1

    sget-object v2, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-virtual {v2}, Landroid/view/WindowManagerPolicyControl$Filter;->isEnabledForAll()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-virtual {v2}, Landroid/view/WindowManagerPolicyControl$Filter;->isEnabledForAll()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_0

    or-int/lit16 v0, v0, 0x2000

    :cond_0
    sget v2, Landroid/view/WindowManagerPolicyControl;->sDefaultImmersiveStyle:I

    packed-switch v2, :pswitch_data_0

    :cond_1
    sget-object v2, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-eqz v2, :cond_3

    sget-object v2, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-virtual {v2, p1}, Landroid/view/WindowManagerPolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_2

    or-int/lit16 v0, v0, 0x2000

    :cond_2
    or-int/lit16 v0, v0, 0x800

    :cond_3
    sget-object v2, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-eqz v2, :cond_4

    sget-object v2, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-virtual {v2, p1}, Landroid/view/WindowManagerPolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_4

    or-int/lit16 v0, v0, 0x1000

    :cond_4
    move v1, v0

    .end local v0    # "privateFlags":I
    .local v1, "privateFlags":I
    :goto_1
    return v1

    .end local v1    # "privateFlags":I
    :cond_5
    invoke-interface {p0}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    goto :goto_0

    .restart local v0    # "privateFlags":I
    :pswitch_0
    or-int/lit16 v0, v0, 0x1000

    or-int/lit16 v0, v0, 0x800

    move v1, v0

    .end local v0    # "privateFlags":I
    .restart local v1    # "privateFlags":I
    goto :goto_1

    .end local v1    # "privateFlags":I
    .restart local v0    # "privateFlags":I
    :pswitch_1
    or-int/lit16 v0, v0, 0x800

    move v1, v0

    .end local v0    # "privateFlags":I
    .restart local v1    # "privateFlags":I
    goto :goto_1

    .end local v1    # "privateFlags":I
    .restart local v0    # "privateFlags":I
    :pswitch_2
    or-int/lit16 v0, v0, 0x1000

    move v1, v0

    .end local v0    # "privateFlags":I
    .restart local v1    # "privateFlags":I
    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 3
    .param p0, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    if-eqz p1, :cond_4

    :goto_0
    if-eqz p0, :cond_5

    invoke-interface {p0}, Landroid/view/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    move-result v0

    .local v0, "vis":I
    :goto_1
    sget-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-eqz v1, :cond_1

    sget-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-virtual {v1, p1}, Landroid/view/WindowManagerPolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Landroid/view/WindowManagerPolicyControl;->sDefaultImmersiveStyle:I

    if-eqz v1, :cond_0

    sget v1, Landroid/view/WindowManagerPolicyControl;->sDefaultImmersiveStyle:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :cond_0
    or-int/lit16 v0, v0, 0x1404

    const v1, -0x40000101    # -1.9999694f

    and-int/2addr v0, v1

    :cond_1
    sget-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-eqz v1, :cond_3

    sget-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-virtual {v1, p1}, Landroid/view/WindowManagerPolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Landroid/view/WindowManagerPolicyControl;->sDefaultImmersiveStyle:I

    if-eqz v1, :cond_2

    sget v1, Landroid/view/WindowManagerPolicyControl;->sDefaultImmersiveStyle:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    :cond_2
    or-int/lit16 v0, v0, 0x1202

    const v1, 0x7ffffeff

    and-int/2addr v0, v1

    :cond_3
    return v0

    .end local v0    # "vis":I
    :cond_4
    invoke-interface {p0}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    goto :goto_0

    :cond_5
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    goto :goto_1
.end method

.method public static getWhiteLists()Landroid/util/ArraySet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .local v0, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    sget-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    # getter for: Landroid/view/WindowManagerPolicyControl$Filter;->mWhitelist:Landroid/util/ArraySet;
    invoke-static {v1}, Landroid/view/WindowManagerPolicyControl$Filter;->access$100(Landroid/view/WindowManagerPolicyControl$Filter;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    :cond_0
    sget-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-eqz v1, :cond_1

    sget-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    sget-object v2, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-eq v1, v2, :cond_1

    sget-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    # getter for: Landroid/view/WindowManagerPolicyControl$Filter;->mWhitelist:Landroid/util/ArraySet;
    invoke-static {v1}, Landroid/view/WindowManagerPolicyControl$Filter;->access$100(Landroid/view/WindowManagerPolicyControl$Filter;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    :cond_1
    return-object v0
.end method

.method public static getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 3
    .param p0, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    if-eqz p1, :cond_4

    :goto_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .local v0, "flags":I
    sget-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-eqz v1, :cond_1

    sget-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-virtual {v1, p1}, Landroid/view/WindowManagerPolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Landroid/view/WindowManagerPolicyControl;->sDefaultImmersiveStyle:I

    if-eqz v1, :cond_0

    sget v1, Landroid/view/WindowManagerPolicyControl;->sDefaultImmersiveStyle:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :cond_0
    or-int/lit16 v0, v0, 0x400

    const v1, -0x4000801

    and-int/2addr v0, v1

    :cond_1
    sget-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-eqz v1, :cond_3

    sget-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-virtual {v1, p1}, Landroid/view/WindowManagerPolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Landroid/view/WindowManagerPolicyControl;->sDefaultImmersiveStyle:I

    if-eqz v1, :cond_2

    sget v1, Landroid/view/WindowManagerPolicyControl;->sDefaultImmersiveStyle:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    :cond_2
    const v1, -0x8000001

    and-int/2addr v0, v1

    :cond_3
    return v0

    .end local v0    # "flags":I
    :cond_4
    invoke-interface {p0}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    goto :goto_0
.end method

.method public static immersiveNavigationFilterMatches(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    sget-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-virtual {v0, p0}, Landroid/view/WindowManagerPolicyControl$Filter;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static immersiveStatusFilterMatches(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    sget-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-virtual {v0, p0}, Landroid/view/WindowManagerPolicyControl$Filter;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isImmersiveFiltersActive()Z
    .locals 1

    .prologue
    sget-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-nez v0, :cond_0

    sget-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static reloadFromSetting(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "policy_control_style"

    invoke-static {p0, v0}, Landroid/view/WindowManagerPolicyControl;->reloadStyleFromSetting(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "policy_control"

    invoke-static {p0, v0}, Landroid/view/WindowManagerPolicyControl;->reloadFromSetting(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static reloadFromSetting(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    sget-boolean v2, Landroid/view/WindowManagerPolicyControl;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Landroid/view/WindowManagerPolicyControl;->TAG:Ljava/lang/String;

    const-string v3, "reloadFromSetting()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    .local v1, "value":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, -0x2

    invoke-static {v2, p1, v3}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/view/WindowManagerPolicyControl;->sSettingValue:Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v2, Landroid/view/WindowManagerPolicyControl;->sSettingValue:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-static {v1}, Landroid/view/WindowManagerPolicyControl;->setFilters(Ljava/lang/String;)V

    sput-object v1, Landroid/view/WindowManagerPolicyControl;->sSettingValue:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "t":Ljava/lang/Throwable;
    sget-object v2, Landroid/view/WindowManagerPolicyControl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading policy control, value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static reloadStyleFromSetting(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/view/WindowManagerPolicyControl;->sDefaultImmersiveStyle:I

    sget-boolean v0, Landroid/view/WindowManagerPolicyControl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/view/WindowManagerPolicyControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reloadStyleFromSetting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/view/WindowManagerPolicyControl;->sDefaultImmersiveStyle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static removeFromWhiteLists(Ljava/lang/String;)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    sget-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    # getter for: Landroid/view/WindowManagerPolicyControl$Filter;->mWhitelist:Landroid/util/ArraySet;
    invoke-static {v0}, Landroid/view/WindowManagerPolicyControl$Filter;->access$100(Landroid/view/WindowManagerPolicyControl$Filter;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    # getter for: Landroid/view/WindowManagerPolicyControl$Filter;->mWhitelist:Landroid/util/ArraySet;
    invoke-static {v0}, Landroid/view/WindowManagerPolicyControl$Filter;->access$100(Landroid/view/WindowManagerPolicyControl$Filter;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public static saveStyleToSettings(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # I

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "policy_control_style"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sput p1, Landroid/view/WindowManagerPolicyControl;->sDefaultImmersiveStyle:I

    return-void
.end method

.method public static saveToSettings(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "policy_control"

    invoke-static {p0, v0}, Landroid/view/WindowManagerPolicyControl;->saveToSettings(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static saveToSettings(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .local v1, "value":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "needSemicolon":Z
    sget-object v2, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-eqz v2, :cond_0

    const-string v2, "immersive.status"

    sget-object v3, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-static {v2, v3, v1}, Landroid/view/WindowManagerPolicyControl;->writeFilter(Ljava/lang/String;Landroid/view/WindowManagerPolicyControl$Filter;Ljava/lang/StringBuilder;)V

    const/4 v0, 0x1

    :cond_0
    sget-object v2, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v2, "immersive.navigation"

    sget-object v3, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-static {v2, v3, v1}, Landroid/view/WindowManagerPolicyControl;->writeFilter(Ljava/lang/String;Landroid/view/WindowManagerPolicyControl$Filter;Ljava/lang/StringBuilder;)V

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p1, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private static setFilters(Ljava/lang/String;)V
    .locals 13
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    sget-boolean v9, Landroid/view/WindowManagerPolicyControl;->DEBUG:Z

    if-eqz v9, :cond_0

    sget-object v9, Landroid/view/WindowManagerPolicyControl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setFilters: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sput-object v12, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    sput-object v12, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    sput-object v12, Landroid/view/WindowManagerPolicyControl;->sImmersivePreconfirmationsFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-eqz p0, :cond_6

    const-string v9, ":"

    invoke-virtual {p0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .local v7, "nvps":[Ljava/lang/String;
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_6

    aget-object v6, v0, v3

    .local v6, "nvp":Ljava/lang/String;
    const/16 v9, 0x3d

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .local v2, "i":I
    const/4 v9, -0x1

    if-ne v2, v9, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    invoke-virtual {v6, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .local v5, "n":Ljava/lang/String;
    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .local v8, "v":Ljava/lang/String;
    const-string v9, "immersive.full"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v8}, Landroid/view/WindowManagerPolicyControl$Filter;->parse(Ljava/lang/String;)Landroid/view/WindowManagerPolicyControl$Filter;

    move-result-object v1

    .local v1, "f":Landroid/view/WindowManagerPolicyControl$Filter;
    sput-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    sput-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    sget-object v9, Landroid/view/WindowManagerPolicyControl;->sImmersivePreconfirmationsFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-nez v9, :cond_1

    sput-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersivePreconfirmationsFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    goto :goto_1

    .end local v1    # "f":Landroid/view/WindowManagerPolicyControl$Filter;
    :cond_3
    const-string v9, "immersive.status"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {v8}, Landroid/view/WindowManagerPolicyControl$Filter;->parse(Ljava/lang/String;)Landroid/view/WindowManagerPolicyControl$Filter;

    move-result-object v1

    .restart local v1    # "f":Landroid/view/WindowManagerPolicyControl$Filter;
    sput-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    goto :goto_1

    .end local v1    # "f":Landroid/view/WindowManagerPolicyControl$Filter;
    :cond_4
    const-string v9, "immersive.navigation"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {v8}, Landroid/view/WindowManagerPolicyControl$Filter;->parse(Ljava/lang/String;)Landroid/view/WindowManagerPolicyControl$Filter;

    move-result-object v1

    .restart local v1    # "f":Landroid/view/WindowManagerPolicyControl$Filter;
    sput-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    sget-object v9, Landroid/view/WindowManagerPolicyControl;->sImmersivePreconfirmationsFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    if-nez v9, :cond_1

    sput-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersivePreconfirmationsFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    goto :goto_1

    .end local v1    # "f":Landroid/view/WindowManagerPolicyControl$Filter;
    :cond_5
    const-string v9, "immersive.preconfirms"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {v8}, Landroid/view/WindowManagerPolicyControl$Filter;->parse(Ljava/lang/String;)Landroid/view/WindowManagerPolicyControl$Filter;

    move-result-object v1

    .restart local v1    # "f":Landroid/view/WindowManagerPolicyControl$Filter;
    sput-object v1, Landroid/view/WindowManagerPolicyControl;->sImmersivePreconfirmationsFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    goto :goto_1

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "f":Landroid/view/WindowManagerPolicyControl$Filter;
    .end local v2    # "i":I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "n":Ljava/lang/String;
    .end local v6    # "nvp":Ljava/lang/String;
    .end local v7    # "nvps":[Ljava/lang/String;
    .end local v8    # "v":Ljava/lang/String;
    :cond_6
    sget-boolean v9, Landroid/view/WindowManagerPolicyControl;->DEBUG:Z

    if-eqz v9, :cond_7

    sget-object v9, Landroid/view/WindowManagerPolicyControl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "immersiveStatusFilter: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Landroid/view/WindowManagerPolicyControl;->sImmersiveStatusFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v9, Landroid/view/WindowManagerPolicyControl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "immersiveNavigationFilter: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Landroid/view/WindowManagerPolicyControl;->sImmersiveNavigationFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v9, Landroid/view/WindowManagerPolicyControl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "immersivePreconfirmationsFilter: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Landroid/view/WindowManagerPolicyControl;->sImmersivePreconfirmationsFilter:Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method private static writeFilter(Ljava/lang/String;Landroid/view/WindowManagerPolicyControl$Filter;Ljava/lang/StringBuilder;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "filter"    # Landroid/view/WindowManagerPolicyControl$Filter;
    .param p2, "stringBuilder"    # Ljava/lang/StringBuilder;

    .prologue
    # getter for: Landroid/view/WindowManagerPolicyControl$Filter;->mWhitelist:Landroid/util/ArraySet;
    invoke-static {p1}, Landroid/view/WindowManagerPolicyControl$Filter;->access$100(Landroid/view/WindowManagerPolicyControl$Filter;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    # getter for: Landroid/view/WindowManagerPolicyControl$Filter;->mBlacklist:Landroid/util/ArraySet;
    invoke-static {p1}, Landroid/view/WindowManagerPolicyControl$Filter;->access$200(Landroid/view/WindowManagerPolicyControl$Filter;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .local v0, "needComma":Z
    # getter for: Landroid/view/WindowManagerPolicyControl$Filter;->mWhitelist:Landroid/util/ArraySet;
    invoke-static {p1}, Landroid/view/WindowManagerPolicyControl$Filter;->access$100(Landroid/view/WindowManagerPolicyControl$Filter;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    # getter for: Landroid/view/WindowManagerPolicyControl$Filter;->mWhitelist:Landroid/util/ArraySet;
    invoke-static {p1}, Landroid/view/WindowManagerPolicyControl$Filter;->access$100(Landroid/view/WindowManagerPolicyControl$Filter;)Landroid/util/ArraySet;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p2, v2}, Landroid/view/WindowManagerPolicyControl;->writePackages(Landroid/util/ArraySet;Ljava/lang/StringBuilder;Z)V

    const/4 v0, 0x1

    :cond_2
    # getter for: Landroid/view/WindowManagerPolicyControl$Filter;->mBlacklist:Landroid/util/ArraySet;
    invoke-static {p1}, Landroid/view/WindowManagerPolicyControl$Filter;->access$200(Landroid/view/WindowManagerPolicyControl$Filter;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_3

    const-string v1, ","

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    # getter for: Landroid/view/WindowManagerPolicyControl$Filter;->mBlacklist:Landroid/util/ArraySet;
    invoke-static {p1}, Landroid/view/WindowManagerPolicyControl$Filter;->access$200(Landroid/view/WindowManagerPolicyControl$Filter;)Landroid/util/ArraySet;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, p2, v2}, Landroid/view/WindowManagerPolicyControl;->writePackages(Landroid/util/ArraySet;Ljava/lang/StringBuilder;Z)V

    goto :goto_0
.end method

.method private static writePackages(Landroid/util/ArraySet;Ljava/lang/StringBuilder;Z)V
    .locals 3
    .param p1, "stringBuilder"    # Ljava/lang/StringBuilder;
    .param p2, "isBlackList"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p0, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p2, :cond_1

    const-string v2, "-"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    return-void
.end method
