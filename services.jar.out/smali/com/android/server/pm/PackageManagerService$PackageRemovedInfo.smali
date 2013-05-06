.class Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageRemovedInfo"
.end annotation


# instance fields
.field args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field isRemovedPackageSystemUpdate:Z

.field isThemeApk:Z

.field removedPackage:Ljava/lang/String;

.field removedUid:I

.field uid:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 7670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7672
    iput v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->uid:I

    .line 7673
    iput v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedUid:I

    .line 7674
    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    .line 7676
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 7677
    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isThemeApk:Z

    return-void
.end method


# virtual methods
.method sendBroadcast(ZZZ)V
    .locals 12
    .parameter "fullRemove"
    .parameter "replacing"
    .parameter "deleteLockedZipFileIfExists"

    .prologue
    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v4, 0x0

    .line 7681
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, v5}, Landroid/os/Bundle;-><init>(I)V

    .line 7682
    .local v3, extras:Landroid/os/Bundle;
    const-string v1, "android.intent.extra.UID"

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedUid:I

    if-ltz v0, :cond_4

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedUid:I

    :goto_0
    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7683
    const-string v0, "android.intent.extra.DATA_REMOVED"

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7684
    if-eqz p2, :cond_0

    .line 7685
    const-string v0, "android.intent.extra.REPLACING"

    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7687
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 7688
    const/4 v2, 0x0

    .line 7689
    .local v2, category:Ljava/lang/String;
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isThemeApk:Z

    if-eqz v0, :cond_1

    .line 7690
    const-string v2, "com.tmobile.intent.category.THEME_PACKAGE_INSTALL_STATE_CHANGE"

    .line 7692
    :cond_1
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;I)V

    .line 7694
    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    .line 7695
    const-string v0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;I)V

    .line 7699
    .end local v2           #category:Ljava/lang/String;
    :cond_2
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedUid:I

    if-ltz v0, :cond_3

    .line 7700
    const-string v5, "android.intent.action.UID_REMOVED"

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedUid:I

    invoke-static {v0}, Landroid/os/UserId;->getUserId(I)I

    move-result v11

    move-object v6, v4

    move-object v7, v4

    move-object v8, v3

    move-object v9, v4

    move-object v10, v4

    invoke-static/range {v5 .. v11}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;I)V

    .line 7703
    :cond_3
    return-void

    .line 7682
    :cond_4
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->uid:I

    goto :goto_0
.end method
