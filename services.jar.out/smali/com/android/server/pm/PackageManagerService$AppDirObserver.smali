.class final Lcom/android/server/pm/PackageManagerService$AppDirObserver;
.super Landroid/os/FileObserver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppDirObserver"
.end annotation


# instance fields
.field private final mIsRom:Z

.field private final mRootDir:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IZ)V
    .locals 0
    .parameter
    .parameter "path"
    .parameter "mask"
    .parameter "isrom"

    .prologue
    .line 5260
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 5261
    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 5262
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mRootDir:Ljava/lang/String;

    .line 5263
    iput-boolean p4, p0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mIsRom:Z

    .line 5264
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 18
    .parameter "event"
    .parameter "path"

    .prologue
    .line 5267
    const/16 v16, 0x0

    .line 5268
    .local v16, removedPackage:Ljava/lang/String;
    const/16 v17, -0x1

    .line 5269
    .local v17, removedUid:I
    const/4 v10, 0x0

    .line 5270
    .local v10, addedPackage:Ljava/lang/String;
    const/4 v11, -0x1

    .line 5271
    .local v11, addedUid:I
    const/4 v5, 0x0

    .line 5274
    .local v5, category:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v7

    .line 5275
    const/4 v14, 0x0

    .line 5276
    .local v14, fullPathStr:Ljava/lang/String;
    const/4 v2, 0x0

    .line 5277
    .local v2, fullPath:Ljava/io/File;
    if-eqz p2, :cond_0

    .line 5278
    :try_start_0
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mRootDir:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-direct {v13, v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5279
    .end local v2           #fullPath:Ljava/io/File;
    .local v13, fullPath:Ljava/io/File;
    :try_start_1
    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-result-object v14

    move-object v2, v13

    .line 5285
    .end local v13           #fullPath:Ljava/io/File;
    .restart local v2       #fullPath:Ljava/io/File;
    :cond_0
    :try_start_2
    #calls: Lcom/android/server/pm/PackageManagerService;->isPackageFilename(Ljava/lang/String;)Z
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/PackageManagerService;->access$1200(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5288
    monitor-exit v7

    .line 5360
    :cond_1
    :goto_0
    return-void

    .line 5293
    :cond_2
    #calls: Lcom/android/server/pm/PackageManagerService;->ignoreCodePath(Ljava/lang/String;)Z
    invoke-static {v14}, Lcom/android/server/pm/PackageManagerService;->access$1300(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5294
    monitor-exit v7

    goto :goto_0

    .line 5345
    :catchall_0
    move-exception v1

    :goto_1
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 5296
    :cond_3
    const/4 v15, 0x0

    .line 5298
    .local v15, p:Landroid/content/pm/PackageParser$Package;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5299
    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mAppDirs:Ljava/util/HashMap;

    invoke-virtual {v1, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    move-object v15, v0

    .line 5300
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5301
    move/from16 v0, p1

    and-int/lit16 v1, v0, 0x248

    if-eqz v1, :cond_a

    .line 5302
    if-eqz v15, :cond_a

    .line 5303
    :try_start_5
    iget-boolean v1, v15, Landroid/content/pm/PackageParser$Package;->mIsThemeApk:Z

    if-eqz v1, :cond_4

    .line 5304
    const-string v5, "com.tmobile.intent.category.THEME_PACKAGE_INSTALL_STATE_CHANGE"

    .line 5306
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v3, 0x1

    invoke-virtual {v1, v15, v3}, Lcom/android/server/pm/PackageManagerService;->removePackageLI(Landroid/content/pm/PackageParser$Package;Z)V

    .line 5307
    iget-object v1, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 5308
    iget-object v1, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v17, v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v12, v5

    .line 5312
    .end local v5           #category:Ljava/lang/String;
    .local v12, category:Ljava/lang/String;
    :goto_2
    move/from16 v0, p1

    and-int/lit16 v1, v0, 0x88

    if-eqz v1, :cond_9

    .line 5313
    if-nez v15, :cond_5

    .line 5314
    :try_start_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mIsRom:Z

    if-eqz v3, :cond_7

    const/16 v3, 0x41

    :goto_3
    or-int/lit8 v3, v3, 0x2

    or-int/lit8 v3, v3, 0x4

    const/16 v4, 0x61

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    #calls: Lcom/android/server/pm/PackageManagerService;->scanPackageLI(Ljava/io/File;IIJ)Landroid/content/pm/PackageParser$Package;
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService;->access$1400(Lcom/android/server/pm/PackageManagerService;Ljava/io/File;IIJ)Landroid/content/pm/PackageParser$Package;

    move-result-object v15

    .line 5321
    if-eqz v15, :cond_5

    .line 5328
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 5329
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v15, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v1, v15, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8

    const/4 v1, 0x1

    :goto_4
    #calls: Lcom/android/server/pm/PackageManagerService;->updatePermissionsLPw(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;I)V
    invoke-static {v4, v8, v15, v1}, Lcom/android/server/pm/PackageManagerService;->access$1500(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Landroid/content/pm/PackageParser$Package;I)V

    .line 5331
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 5332
    :try_start_8
    iget-object v1, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 5333
    iget-object v1, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 5336
    :cond_5
    if-eqz v15, :cond_9

    iget-boolean v1, v15, Landroid/content/pm/PackageParser$Package;->mIsThemeApk:Z

    if-eqz v1, :cond_9

    .line 5337
    const-string v5, "com.tmobile.intent.category.THEME_PACKAGE_INSTALL_STATE_CHANGE"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 5342
    .end local v12           #category:Ljava/lang/String;
    .restart local v5       #category:Ljava/lang/String;
    :goto_5
    :try_start_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 5343
    :try_start_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 5344
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 5345
    :try_start_b
    monitor-exit v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 5347
    if-eqz v16, :cond_6

    .line 5348
    new-instance v6, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v6, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 5349
    .local v6, extras:Landroid/os/Bundle;
    const-string v1, "android.intent.extra.UID"

    move/from16 v0, v17

    invoke-virtual {v6, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5350
    const-string v1, "android.intent.extra.DATA_REMOVED"

    const/4 v3, 0x0

    invoke-virtual {v6, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5351
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    move-object/from16 v4, v16

    invoke-static/range {v3 .. v9}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;I)V

    .line 5354
    .end local v6           #extras:Landroid/os/Bundle;
    :cond_6
    if-eqz v10, :cond_1

    .line 5355
    new-instance v6, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v6, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 5356
    .restart local v6       #extras:Landroid/os/Bundle;
    const-string v1, "android.intent.extra.UID"

    invoke-virtual {v6, v1, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5357
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    move-object v4, v10

    invoke-static/range {v3 .. v9}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;I)V

    goto/16 :goto_0

    .line 5300
    .end local v6           #extras:Landroid/os/Bundle;
    :catchall_1
    move-exception v1

    :try_start_c
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 5314
    .end local v5           #category:Ljava/lang/String;
    .restart local v12       #category:Ljava/lang/String;
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 5329
    :cond_8
    const/4 v1, 0x0

    goto :goto_4

    .line 5331
    :catchall_2
    move-exception v1

    :try_start_e
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    throw v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 5345
    :catchall_3
    move-exception v1

    move-object v5, v12

    .end local v12           #category:Ljava/lang/String;
    .restart local v5       #category:Ljava/lang/String;
    goto/16 :goto_1

    .line 5344
    :catchall_4
    move-exception v1

    :try_start_10
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :try_start_11
    throw v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 5345
    .end local v2           #fullPath:Ljava/io/File;
    .end local v15           #p:Landroid/content/pm/PackageParser$Package;
    .restart local v13       #fullPath:Ljava/io/File;
    :catchall_5
    move-exception v1

    move-object v2, v13

    .end local v13           #fullPath:Ljava/io/File;
    .restart local v2       #fullPath:Ljava/io/File;
    goto/16 :goto_1

    .end local v5           #category:Ljava/lang/String;
    .restart local v12       #category:Ljava/lang/String;
    .restart local v15       #p:Landroid/content/pm/PackageParser$Package;
    :cond_9
    move-object v5, v12

    .end local v12           #category:Ljava/lang/String;
    .restart local v5       #category:Ljava/lang/String;
    goto :goto_5

    :cond_a
    move-object v12, v5

    .end local v5           #category:Ljava/lang/String;
    .restart local v12       #category:Ljava/lang/String;
    goto/16 :goto_2
.end method
