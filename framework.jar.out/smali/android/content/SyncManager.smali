.class public Landroid/content/SyncManager;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/SyncManager$SyncHandler;,
        Landroid/content/SyncManager$ServiceConnectionData;,
        Landroid/content/SyncManager$SyncTimeTracker;,
        Landroid/content/SyncManager$AccountSyncStats;,
        Landroid/content/SyncManager$AuthoritySyncStats;,
        Landroid/content/SyncManager$ActiveSyncContext;,
        Landroid/content/SyncManager$SyncAlarmIntentReceiver;,
        Landroid/content/SyncManager$SyncHandlerMessagePayload;
    }
.end annotation


# static fields
.field private static final ACTION_SYNC_ALARM:Ljava/lang/String; = "android.content.syncmanager.SYNC_ALARM"

.field private static final DEFAULT_MAX_SYNC_RETRY_TIME_IN_SECONDS:J = 0xe10L

.field private static final DELAY_RETRY_SYNC_IN_PROGRESS_IN_SECONDS:I = 0xa

.field private static final HANDLE_SYNC_ALARM_WAKE_LOCK:Ljava/lang/String; = "SyncManagerHandleSyncAlarm"

.field private static final INITIALIZATION_UNBIND_DELAY_MS:I = 0x1388

.field private static final INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser; = null

.field private static final INITIAL_SYNC_RETRY_TIME_IN_MS:J = 0x7530L

#the value of this static final field might be set in the static constructor
.field private static final LOCAL_SYNC_DELAY:J = 0x0L

#the value of this static final field might be set in the static constructor
.field private static final MAX_SIMULTANEOUS_INITIALIZATION_SYNCS:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final MAX_SIMULTANEOUS_REGULAR_SYNCS:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final MAX_TIME_PER_SYNC:J = 0x0L

.field private static final SYNC_ALARM_TIMEOUT_MAX:J = 0x6ddd00L

.field private static final SYNC_ALARM_TIMEOUT_MIN:J = 0x7530L

.field private static final SYNC_LOOP_WAKE_LOCK:Ljava/lang/String; = "SyncLoopWakeLock"

#the value of this static final field might be set in the static constructor
.field private static final SYNC_NOTIFICATION_DELAY:J = 0x0L

.field private static final SYNC_WAKE_LOCK_PREFIX:Ljava/lang/String; = "*sync*"

.field private static final TAG:Ljava/lang/String; = "SyncManager"


# instance fields
.field private volatile mAccounts:[Landroid/accounts/AccountAndUser;

.field protected final mActiveSyncContexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/SyncManager$ActiveSyncContext;",
            ">;"
        }
    .end annotation
.end field

.field private mAlarmService:Landroid/app/AlarmManager;

.field private mBackgroundDataSettingChanged:Landroid/content/BroadcastReceiver;

.field private volatile mBootCompleted:Z

.field private mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

.field private mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

.field private mConnectivityIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private volatile mDataConnectionIsConnected:Z

.field private volatile mHandleAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mNeedSyncActiveNotification:Z

.field private final mNotificationMgr:Landroid/app/NotificationManager;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mShutdownIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mStorageIntentReceiver:Landroid/content/BroadcastReceiver;

.field private volatile mStorageIsLow:Z

.field protected mSyncAdapters:Landroid/content/SyncAdaptersCache;

.field private final mSyncAlarmIntent:Landroid/app/PendingIntent;

.field private final mSyncHandler:Landroid/content/SyncManager$SyncHandler;

.field private volatile mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mSyncQueue:Landroid/content/SyncQueue;

.field private mSyncRandomOffsetMillis:I

.field private mSyncStorageEngine:Landroid/content/SyncStorageEngine;

.field private mThemeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mUiContext:Landroid/content/Context;

.field private mUserIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x7530

    const/4 v1, 0x2

    .line 96
    invoke-static {}, Landroid/app/ActivityManager;->isLargeRAM()Z

    move-result v2

    .line 97
    .local v2, isLargeRAM:Z
    if-eqz v2, :cond_0

    const/4 v0, 0x5

    .line 98
    .local v0, defaultMaxInitSyncs:I
    :goto_0
    if-eqz v2, :cond_1

    .line 99
    .local v1, defaultMaxRegularSyncs:I
    :goto_1
    const-string/jumbo v3, "sync.max_init_syncs"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Landroid/content/SyncManager;->MAX_SIMULTANEOUS_INITIALIZATION_SYNCS:I

    .line 101
    const-string/jumbo v3, "sync.max_regular_syncs"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Landroid/content/SyncManager;->MAX_SIMULTANEOUS_REGULAR_SYNCS:I

    .line 103
    const-string/jumbo v3, "sync.local_sync_delay"

    invoke-static {v3, v6, v7}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    sput-wide v3, Landroid/content/SyncManager;->LOCAL_SYNC_DELAY:J

    .line 105
    const-string/jumbo v3, "sync.max_time_per_sync"

    const-wide/32 v4, 0x493e0

    invoke-static {v3, v4, v5}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    sput-wide v3, Landroid/content/SyncManager;->MAX_TIME_PER_SYNC:J

    .line 107
    const-string/jumbo v3, "sync.notification_delay"

    invoke-static {v3, v6, v7}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    sput-wide v3, Landroid/content/SyncManager;->SYNC_NOTIFICATION_DELAY:J

    .line 142
    const/4 v3, 0x0

    new-array v3, v3, [Landroid/accounts/AccountAndUser;

    sput-object v3, Landroid/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

    return-void

    .end local v0           #defaultMaxInitSyncs:I
    .end local v1           #defaultMaxRegularSyncs:I
    :cond_0
    move v0, v1

    .line 97
    goto :goto_0

    .line 98
    .restart local v0       #defaultMaxInitSyncs:I
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 8
    .parameter "context"
    .parameter "factoryTest"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    sget-object v2, Landroid/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

    iput-object v2, p0, Landroid/content/SyncManager;->mAccounts:[Landroid/accounts/AccountAndUser;

    .line 148
    iput-boolean v5, p0, Landroid/content/SyncManager;->mDataConnectionIsConnected:Z

    .line 149
    iput-boolean v5, p0, Landroid/content/SyncManager;->mStorageIsLow:Z

    .line 152
    iput-object v7, p0, Landroid/content/SyncManager;->mAlarmService:Landroid/app/AlarmManager;

    .line 157
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Landroid/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    .line 160
    iput-boolean v5, p0, Landroid/content/SyncManager;->mNeedSyncActiveNotification:Z

    .line 169
    new-instance v2, Landroid/content/SyncManager$1;

    invoke-direct {v2, p0}, Landroid/content/SyncManager$1;-><init>(Landroid/content/SyncManager;)V

    iput-object v2, p0, Landroid/content/SyncManager;->mStorageIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 190
    new-instance v2, Landroid/content/SyncManager$2;

    invoke-direct {v2, p0}, Landroid/content/SyncManager$2;-><init>(Landroid/content/SyncManager;)V

    iput-object v2, p0, Landroid/content/SyncManager;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    .line 196
    new-instance v2, Landroid/content/SyncManager$3;

    invoke-direct {v2, p0}, Landroid/content/SyncManager$3;-><init>(Landroid/content/SyncManager;)V

    iput-object v2, p0, Landroid/content/SyncManager;->mThemeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 202
    new-instance v2, Landroid/content/SyncManager$4;

    invoke-direct {v2, p0}, Landroid/content/SyncManager$4;-><init>(Landroid/content/SyncManager;)V

    iput-object v2, p0, Landroid/content/SyncManager;->mBackgroundDataSettingChanged:Landroid/content/BroadcastReceiver;

    .line 298
    new-instance v2, Landroid/content/SyncManager$5;

    invoke-direct {v2, p0}, Landroid/content/SyncManager$5;-><init>(Landroid/content/SyncManager;)V

    iput-object v2, p0, Landroid/content/SyncManager;->mConnectivityIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 323
    new-instance v2, Landroid/content/SyncManager$6;

    invoke-direct {v2, p0}, Landroid/content/SyncManager$6;-><init>(Landroid/content/SyncManager;)V

    iput-object v2, p0, Landroid/content/SyncManager;->mShutdownIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 331
    new-instance v2, Landroid/content/SyncManager$7;

    invoke-direct {v2, p0}, Landroid/content/SyncManager$7;-><init>(Landroid/content/SyncManager;)V

    iput-object v2, p0, Landroid/content/SyncManager;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 341
    iput-boolean v5, p0, Landroid/content/SyncManager;->mBootCompleted:Z

    .line 356
    iput-object p1, p0, Landroid/content/SyncManager;->mContext:Landroid/content/Context;

    .line 357
    invoke-static {p1}, Landroid/content/SyncStorageEngine;->init(Landroid/content/Context;)V

    .line 358
    invoke-static {}, Landroid/content/SyncStorageEngine;->getSingleton()Landroid/content/SyncStorageEngine;

    move-result-object v2

    iput-object v2, p0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    .line 359
    iget-object v2, p0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    new-instance v3, Landroid/content/SyncManager$8;

    invoke-direct {v3, p0}, Landroid/content/SyncManager$8;-><init>(Landroid/content/SyncManager;)V

    invoke-virtual {v2, v3}, Landroid/content/SyncStorageEngine;->setOnSyncRequestListener(Landroid/content/SyncStorageEngine$OnSyncRequestListener;)V

    .line 366
    new-instance v2, Landroid/content/SyncAdaptersCache;

    iget-object v3, p0, Landroid/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/content/SyncAdaptersCache;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    .line 367
    new-instance v2, Landroid/content/SyncQueue;

    iget-object v3, p0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    iget-object v4, p0, Landroid/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-direct {v2, v3, v4}, Landroid/content/SyncQueue;-><init>(Landroid/content/SyncStorageEngine;Landroid/content/SyncAdaptersCache;)V

    iput-object v2, p0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    .line 369
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SyncHandlerThread"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 371
    .local v1, syncThread:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 372
    new-instance v2, Landroid/content/SyncManager$SyncHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/content/SyncManager$SyncHandler;-><init>(Landroid/content/SyncManager;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    .line 374
    iget-object v2, p0, Landroid/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    new-instance v3, Landroid/content/SyncManager$9;

    invoke-direct {v3, p0}, Landroid/content/SyncManager$9;-><init>(Landroid/content/SyncManager;)V

    iget-object v4, p0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    invoke-virtual {v2, v3, v4}, Landroid/content/SyncAdaptersCache;->setListener(Landroid/content/pm/RegisteredServicesCacheListener;Landroid/os/Handler;)V

    .line 383
    iget-object v2, p0, Landroid/content/SyncManager;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.content.syncmanager.SYNC_ALARM"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v5, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Landroid/content/SyncManager;->mSyncAlarmIntent:Landroid/app/PendingIntent;

    .line 386
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 387
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v2, p0, Landroid/content/SyncManager;->mConnectivityIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 389
    if-nez p2, :cond_0

    .line 390
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 391
    .restart local v0       #intentFilter:Landroid/content/IntentFilter;
    iget-object v2, p0, Landroid/content/SyncManager;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 394
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 395
    .restart local v0       #intentFilter:Landroid/content/IntentFilter;
    iget-object v2, p0, Landroid/content/SyncManager;->mBackgroundDataSettingChanged:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 397
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 398
    .restart local v0       #intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 399
    iget-object v2, p0, Landroid/content/SyncManager;->mStorageIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 401
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 402
    .restart local v0       #intentFilter:Landroid/content/IntentFilter;
    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 403
    iget-object v2, p0, Landroid/content/SyncManager;->mShutdownIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 405
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 406
    .restart local v0       #intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 407
    iget-object v2, p0, Landroid/content/SyncManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/content/SyncManager;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 409
    iget-object v2, p0, Landroid/content/SyncManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/content/SyncManager;->mThemeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v2, v3}, Lcom/android/internal/app/ThemeUtils;->registerThemeChangeReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 411
    if-nez p2, :cond_2

    .line 412
    const-string/jumbo v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Landroid/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 414
    new-instance v2, Landroid/content/SyncManager$SyncAlarmIntentReceiver;

    invoke-direct {v2, p0}, Landroid/content/SyncManager$SyncAlarmIntentReceiver;-><init>(Landroid/content/SyncManager;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.content.syncmanager.SYNC_ALARM"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 419
    :goto_0
    const-string/jumbo v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Landroid/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    .line 425
    iget-object v2, p0, Landroid/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v3, "SyncManagerHandleSyncAlarm"

    invoke-virtual {v2, v6, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Landroid/content/SyncManager;->mHandleAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 427
    iget-object v2, p0, Landroid/content/SyncManager;->mHandleAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 434
    iget-object v2, p0, Landroid/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v3, "SyncLoopWakeLock"

    invoke-virtual {v2, v6, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Landroid/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 436
    iget-object v2, p0, Landroid/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 438
    iget-object v2, p0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    new-instance v3, Landroid/content/SyncManager$10;

    invoke-direct {v3, p0}, Landroid/content/SyncManager$10;-><init>(Landroid/content/SyncManager;)V

    invoke-virtual {v2, v6, v3}, Landroid/content/SyncStorageEngine;->addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V

    .line 446
    if-nez p2, :cond_1

    .line 447
    iget-object v2, p0, Landroid/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    iget-object v3, p0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    invoke-virtual {v2, p0, v3, v5}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 450
    invoke-virtual {p0, v7}, Landroid/content/SyncManager;->onAccountsUpdated([Landroid/accounts/Account;)V

    .line 454
    :cond_1
    iget-object v2, p0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    invoke-virtual {v2}, Landroid/content/SyncStorageEngine;->getSyncRandomOffset()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    iput v2, p0, Landroid/content/SyncManager;->mSyncRandomOffsetMillis:I

    .line 455
    return-void

    .line 417
    :cond_2
    iput-object v7, p0, Landroid/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/content/SyncManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Landroid/content/SyncManager;->mStorageIsLow:Z

    return v0
.end method

.method static synthetic access$002(Landroid/content/SyncManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Landroid/content/SyncManager;->mStorageIsLow:Z

    return p1
.end method

.method static synthetic access$100(Landroid/content/SyncManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/content/SyncManager;->sendCheckAlarmsMessage()V

    return-void
.end method

.method static synthetic access$1000(Landroid/content/SyncManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/content/SyncManager;->sendSyncAlarmMessage()V

    return-void
.end method

.method static synthetic access$1200(Landroid/content/SyncManager;Landroid/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Landroid/content/SyncManager;->sendSyncFinishedOrCanceledMessage(Landroid/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/content/SyncManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Landroid/content/SyncManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1802(Landroid/content/SyncManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Landroid/content/SyncManager;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$1900(Landroid/content/SyncManager;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/content/SyncManager;->getAllUsers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/SyncManager;)Landroid/content/SyncManager$SyncHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/content/SyncManager;)Landroid/os/PowerManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Landroid/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/content/SyncManager;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/content/SyncManager;Landroid/content/SyncManager$ActiveSyncContext;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Landroid/content/SyncManager;->isSyncStillActive(Landroid/content/SyncManager$ActiveSyncContext;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Landroid/content/SyncManager;)[Landroid/accounts/AccountAndUser;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Landroid/content/SyncManager;->mAccounts:[Landroid/accounts/AccountAndUser;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/content/SyncManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Landroid/content/SyncManager;->mSyncRandomOffsetMillis:I

    return v0
.end method

.method static synthetic access$2500(Landroid/content/SyncManager;[Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/content/SyncManager;->containsAccountAndUser([Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600()[Landroid/accounts/AccountAndUser;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Landroid/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

    return-object v0
.end method

.method static synthetic access$2700()J
    .locals 2

    .prologue
    .line 83
    sget-wide v0, Landroid/content/SyncManager;->MAX_TIME_PER_SYNC:J

    return-wide v0
.end method

.method static synthetic access$2800()I
    .locals 1

    .prologue
    .line 83
    sget v0, Landroid/content/SyncManager;->MAX_SIMULTANEOUS_INITIALIZATION_SYNCS:I

    return v0
.end method

.method static synthetic access$2900()I
    .locals 1

    .prologue
    .line 83
    sget v0, Landroid/content/SyncManager;->MAX_SIMULTANEOUS_REGULAR_SYNCS:I

    return v0
.end method

.method static synthetic access$3000(Landroid/content/SyncManager;Landroid/content/SyncOperation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Landroid/content/SyncManager;->increaseBackoffSetting(Landroid/content/SyncOperation;)V

    return-void
.end method

.method static synthetic access$302(Landroid/content/SyncManager;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Landroid/content/SyncManager;->mUiContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$3100(Landroid/content/SyncManager;Landroid/content/SyncOperation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Landroid/content/SyncManager;->clearBackoffSetting(Landroid/content/SyncOperation;)V

    return-void
.end method

.method static synthetic access$3200(Landroid/content/SyncManager;Landroid/content/SyncOperation;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/content/SyncManager;->setDelayUntilTime(Landroid/content/SyncOperation;J)V

    return-void
.end method

.method static synthetic access$3300(Landroid/content/SyncManager;)Landroid/app/NotificationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Landroid/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$3400()J
    .locals 2

    .prologue
    .line 83
    sget-wide v0, Landroid/content/SyncManager;->SYNC_NOTIFICATION_DELAY:J

    return-wide v0
.end method

.method static synthetic access$3500(Landroid/content/SyncManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Landroid/content/SyncManager;->mNeedSyncActiveNotification:Z

    return v0
.end method

.method static synthetic access$3502(Landroid/content/SyncManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Landroid/content/SyncManager;->mNeedSyncActiveNotification:Z

    return p1
.end method

.method static synthetic access$3600(Landroid/content/SyncManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/content/SyncManager;->ensureAlarmService()V

    return-void
.end method

.method static synthetic access$3700(Landroid/content/SyncManager;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncAlarmIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$3800(Landroid/content/SyncManager;)Landroid/app/AlarmManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Landroid/content/SyncManager;->mAlarmService:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$3900(Landroid/content/SyncManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/content/SyncManager;->getUiContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/SyncManager;)Landroid/net/ConnectivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/content/SyncManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Landroid/content/SyncManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Landroid/content/SyncManager;->mDataConnectionIsConnected:Z

    return v0
.end method

.method static synthetic access$502(Landroid/content/SyncManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Landroid/content/SyncManager;->mDataConnectionIsConnected:Z

    return p1
.end method

.method static synthetic access$600(Landroid/content/SyncManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/content/SyncManager;->readDataConnectionState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    return-object v0
.end method

.method static synthetic access$800(Landroid/content/SyncManager;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Landroid/content/SyncManager;->onUserRemoved(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$900(Landroid/content/SyncManager;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Landroid/content/SyncManager;->mHandleAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private clearBackoffSetting(Landroid/content/SyncOperation;)V
    .locals 8
    .parameter "op"

    .prologue
    const-wide/16 v4, -0x1

    .line 724
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    iget-object v1, p1, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget v2, p1, Landroid/content/SyncOperation;->userId:I

    iget-object v3, p1, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    move-wide v6, v4

    invoke-virtual/range {v0 .. v7}, Landroid/content/SyncStorageEngine;->setBackoff(Landroid/accounts/Account;ILjava/lang/String;JJ)V

    .line 726
    iget-object v6, p0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    monitor-enter v6

    .line 727
    :try_start_0
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    iget-object v1, p1, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget v2, p1, Landroid/content/SyncOperation;->userId:I

    iget-object v3, p1, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/SyncQueue;->onBackoffChanged(Landroid/accounts/Account;ILjava/lang/String;J)V

    .line 728
    monitor-exit v6

    .line 729
    return-void

    .line 728
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private containsAccountAndUser([Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z
    .locals 3
    .parameter "accounts"
    .parameter "account"
    .parameter "userId"

    .prologue
    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, found:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 232
    aget-object v2, p1, v1

    iget v2, v2, Landroid/accounts/AccountAndUser;->userId:I

    if-ne v2, p3, :cond_1

    aget-object v2, p1, v1

    iget-object v2, v2, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    invoke-virtual {v2, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 234
    const/4 v0, 0x1

    .line 238
    :cond_0
    return v0

    .line 231
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private dumpDayStatistic(Ljava/io/PrintWriter;Landroid/content/SyncStorageEngine$DayStats;)V
    .locals 4
    .parameter "pw"
    .parameter "ds"

    .prologue
    .line 1245
    const-string v0, "Success ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p2, Landroid/content/SyncStorageEngine$DayStats;->successCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1246
    iget v0, p2, Landroid/content/SyncStorageEngine$DayStats;->successCount:I

    if-lez v0, :cond_0

    .line 1247
    const-string v0, " for "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p2, Landroid/content/SyncStorageEngine$DayStats;->successTime:J

    invoke-direct {p0, p1, v0, v1}, Landroid/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 1248
    const-string v0, " avg="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p2, Landroid/content/SyncStorageEngine$DayStats;->successTime:J

    iget v2, p2, Landroid/content/SyncStorageEngine$DayStats;->successCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Landroid/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 1250
    :cond_0
    const-string v0, ") Failure ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p2, Landroid/content/SyncStorageEngine$DayStats;->failureCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1251
    iget v0, p2, Landroid/content/SyncStorageEngine$DayStats;->failureCount:I

    if-lez v0, :cond_1

    .line 1252
    const-string v0, " for "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p2, Landroid/content/SyncStorageEngine$DayStats;->failureTime:J

    invoke-direct {p0, p1, v0, v1}, Landroid/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 1253
    const-string v0, " avg="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p2, Landroid/content/SyncStorageEngine$DayStats;->failureTime:J

    iget v2, p2, Landroid/content/SyncStorageEngine$DayStats;->failureCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Landroid/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 1255
    :cond_1
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1256
    return-void
.end method

.method private dumpDayStatistics(Ljava/io/PrintWriter;)V
    .locals 12
    .parameter "pw"

    .prologue
    const/4 v11, 0x6

    const/4 v8, 0x0

    .line 1462
    iget-object v7, p0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    invoke-virtual {v7}, Landroid/content/SyncStorageEngine;->getDayStatistics()[Landroid/content/SyncStorageEngine$DayStats;

    move-result-object v3

    .line 1463
    .local v3, dses:[Landroid/content/SyncStorageEngine$DayStats;
    if-eqz v3, :cond_6

    aget-object v7, v3, v8

    if-eqz v7, :cond_6

    .line 1464
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1465
    const-string v7, "Sync Statistics"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1466
    const-string v7, "  Today:  "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget-object v7, v3, v8

    invoke-direct {p0, p1, v7}, Landroid/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Landroid/content/SyncStorageEngine$DayStats;)V

    .line 1467
    aget-object v7, v3, v8

    iget v5, v7, Landroid/content/SyncStorageEngine$DayStats;->day:I

    .line 1472
    .local v5, today:I
    const/4 v4, 0x1

    .local v4, i:I
    :goto_0
    if-gt v4, v11, :cond_0

    array-length v7, v3

    if-ge v4, v7, :cond_0

    .line 1473
    aget-object v2, v3, v4

    .line 1474
    .local v2, ds:Landroid/content/SyncStorageEngine$DayStats;
    if-nez v2, :cond_3

    .line 1483
    .end local v2           #ds:Landroid/content/SyncStorageEngine$DayStats;
    :cond_0
    move v6, v5

    .line 1484
    .local v6, weekDay:I
    :cond_1
    :goto_1
    array-length v7, v3

    if-ge v4, v7, :cond_6

    .line 1485
    const/4 v0, 0x0

    .line 1486
    .local v0, aggr:Landroid/content/SyncStorageEngine$DayStats;
    add-int/lit8 v6, v6, -0x7

    .line 1487
    :goto_2
    array-length v7, v3

    if-ge v4, v7, :cond_2

    .line 1488
    aget-object v2, v3, v4

    .line 1489
    .restart local v2       #ds:Landroid/content/SyncStorageEngine$DayStats;
    if-nez v2, :cond_4

    .line 1490
    array-length v4, v3

    .line 1505
    .end local v2           #ds:Landroid/content/SyncStorageEngine$DayStats;
    :cond_2
    if-eqz v0, :cond_1

    .line 1506
    const-string v7, "  Week-"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sub-int v7, v5, v6

    div-int/lit8 v7, v7, 0x7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, ": "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1507
    invoke-direct {p0, p1, v0}, Landroid/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Landroid/content/SyncStorageEngine$DayStats;)V

    goto :goto_1

    .line 1475
    .end local v0           #aggr:Landroid/content/SyncStorageEngine$DayStats;
    .end local v6           #weekDay:I
    .restart local v2       #ds:Landroid/content/SyncStorageEngine$DayStats;
    :cond_3
    iget v7, v2, Landroid/content/SyncStorageEngine$DayStats;->day:I

    sub-int v1, v5, v7

    .line 1476
    .local v1, delta:I
    if-gt v1, v11, :cond_0

    .line 1478
    const-string v7, "  Day-"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, ":  "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1479
    invoke-direct {p0, p1, v2}, Landroid/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Landroid/content/SyncStorageEngine$DayStats;)V

    .line 1472
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1493
    .end local v1           #delta:I
    .restart local v0       #aggr:Landroid/content/SyncStorageEngine$DayStats;
    .restart local v6       #weekDay:I
    :cond_4
    iget v7, v2, Landroid/content/SyncStorageEngine$DayStats;->day:I

    sub-int v1, v6, v7

    .line 1494
    .restart local v1       #delta:I
    if-gt v1, v11, :cond_2

    .line 1495
    add-int/lit8 v4, v4, 0x1

    .line 1497
    if-nez v0, :cond_5

    .line 1498
    new-instance v0, Landroid/content/SyncStorageEngine$DayStats;

    .end local v0           #aggr:Landroid/content/SyncStorageEngine$DayStats;
    invoke-direct {v0, v6}, Landroid/content/SyncStorageEngine$DayStats;-><init>(I)V

    .line 1500
    .restart local v0       #aggr:Landroid/content/SyncStorageEngine$DayStats;
    :cond_5
    iget v7, v0, Landroid/content/SyncStorageEngine$DayStats;->successCount:I

    iget v8, v2, Landroid/content/SyncStorageEngine$DayStats;->successCount:I

    add-int/2addr v7, v8

    iput v7, v0, Landroid/content/SyncStorageEngine$DayStats;->successCount:I

    .line 1501
    iget-wide v7, v0, Landroid/content/SyncStorageEngine$DayStats;->successTime:J

    iget-wide v9, v2, Landroid/content/SyncStorageEngine$DayStats;->successTime:J

    add-long/2addr v7, v9

    iput-wide v7, v0, Landroid/content/SyncStorageEngine$DayStats;->successTime:J

    .line 1502
    iget v7, v0, Landroid/content/SyncStorageEngine$DayStats;->failureCount:I

    iget v8, v2, Landroid/content/SyncStorageEngine$DayStats;->failureCount:I

    add-int/2addr v7, v8

    iput v7, v0, Landroid/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 1503
    iget-wide v7, v0, Landroid/content/SyncStorageEngine$DayStats;->failureTime:J

    iget-wide v9, v2, Landroid/content/SyncStorageEngine$DayStats;->failureTime:J

    add-long/2addr v7, v9

    iput-wide v7, v0, Landroid/content/SyncStorageEngine$DayStats;->failureTime:J

    goto :goto_2

    .line 1511
    .end local v0           #aggr:Landroid/content/SyncStorageEngine$DayStats;
    .end local v1           #delta:I
    .end local v2           #ds:Landroid/content/SyncStorageEngine$DayStats;
    .end local v4           #i:I
    .end local v5           #today:I
    .end local v6           #weekDay:I
    :cond_6
    return-void
.end method

.method private dumpRecentHistory(Ljava/io/PrintWriter;)V
    .locals 55
    .parameter "pw"

    .prologue
    .line 1264
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/content/SyncStorageEngine;->getSyncHistory()Ljava/util/ArrayList;

    move-result-object v26

    .line 1266
    .local v26, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/SyncStorageEngine$SyncHistoryItem;>;"
    if-eqz v26, :cond_f

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v50

    if-lez v50, :cond_f

    .line 1267
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v10

    .line 1268
    .local v10, authorityMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/content/SyncManager$AuthoritySyncStats;>;"
    const-wide/16 v46, 0x0

    .line 1269
    .local v46, totalElapsedTime:J
    const-wide/16 v48, 0x0

    .line 1270
    .local v48, totalTimes:J
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1272
    .local v3, N:I
    const/16 v32, 0x0

    .line 1273
    .local v32, maxAuthority:I
    const/16 v31, 0x0

    .line 1274
    .local v31, maxAccount:I
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v50

    if-eqz v50, :cond_5

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/SyncStorageEngine$SyncHistoryItem;

    .line 1275
    .local v25, item:Landroid/content/SyncStorageEngine$SyncHistoryItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object/from16 v50, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    move/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Landroid/content/SyncStorageEngine;->getAuthority(I)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v8

    .line 1279
    .local v8, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v8, :cond_4

    .line 1280
    iget-object v11, v8, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    .line 1281
    .local v11, authorityName:Ljava/lang/String;
    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v8, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, "/"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    iget-object v0, v8, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1287
    .local v5, accountKey:Ljava/lang/String;
    :goto_1
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v30

    .line 1288
    .local v30, length:I
    move/from16 v0, v30

    move/from16 v1, v32

    if-le v0, v1, :cond_0

    .line 1289
    move/from16 v32, v30

    .line 1291
    :cond_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v30

    .line 1292
    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_1

    .line 1293
    move/from16 v31, v30

    .line 1296
    :cond_1
    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    move-wide/from16 v17, v0

    .line 1297
    .local v17, elapsedTime:J
    add-long v46, v46, v17

    .line 1298
    const-wide/16 v50, 0x1

    add-long v48, v48, v50

    .line 1299
    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/SyncManager$AuthoritySyncStats;

    .line 1300
    .local v12, authoritySyncStats:Landroid/content/SyncManager$AuthoritySyncStats;
    if-nez v12, :cond_2

    .line 1301
    new-instance v12, Landroid/content/SyncManager$AuthoritySyncStats;

    .end local v12           #authoritySyncStats:Landroid/content/SyncManager$AuthoritySyncStats;
    const/16 v50, 0x0

    move-object/from16 v0, v50

    invoke-direct {v12, v11, v0}, Landroid/content/SyncManager$AuthoritySyncStats;-><init>(Ljava/lang/String;Landroid/content/SyncManager$1;)V

    .line 1302
    .restart local v12       #authoritySyncStats:Landroid/content/SyncManager$AuthoritySyncStats;
    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1304
    :cond_2
    iget-wide v0, v12, Landroid/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    move-wide/from16 v50, v0

    add-long v50, v50, v17

    move-wide/from16 v0, v50

    iput-wide v0, v12, Landroid/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    .line 1305
    iget v0, v12, Landroid/content/SyncManager$AuthoritySyncStats;->times:I

    move/from16 v50, v0

    add-int/lit8 v50, v50, 0x1

    move/from16 v0, v50

    iput v0, v12, Landroid/content/SyncManager$AuthoritySyncStats;->times:I

    .line 1306
    iget-object v6, v12, Landroid/content/SyncManager$AuthoritySyncStats;->accountMap:Ljava/util/Map;

    .line 1307
    .local v6, accountMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/content/SyncManager$AccountSyncStats;>;"
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/SyncManager$AccountSyncStats;

    .line 1308
    .local v7, accountSyncStats:Landroid/content/SyncManager$AccountSyncStats;
    if-nez v7, :cond_3

    .line 1309
    new-instance v7, Landroid/content/SyncManager$AccountSyncStats;

    .end local v7           #accountSyncStats:Landroid/content/SyncManager$AccountSyncStats;
    const/16 v50, 0x0

    move-object/from16 v0, v50

    invoke-direct {v7, v5, v0}, Landroid/content/SyncManager$AccountSyncStats;-><init>(Ljava/lang/String;Landroid/content/SyncManager$1;)V

    .line 1310
    .restart local v7       #accountSyncStats:Landroid/content/SyncManager$AccountSyncStats;
    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1312
    :cond_3
    iget-wide v0, v7, Landroid/content/SyncManager$AccountSyncStats;->elapsedTime:J

    move-wide/from16 v50, v0

    add-long v50, v50, v17

    move-wide/from16 v0, v50

    iput-wide v0, v7, Landroid/content/SyncManager$AccountSyncStats;->elapsedTime:J

    .line 1313
    iget v0, v7, Landroid/content/SyncManager$AccountSyncStats;->times:I

    move/from16 v50, v0

    add-int/lit8 v50, v50, 0x1

    move/from16 v0, v50

    iput v0, v7, Landroid/content/SyncManager$AccountSyncStats;->times:I

    goto/16 :goto_0

    .line 1283
    .end local v5           #accountKey:Ljava/lang/String;
    .end local v6           #accountMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/content/SyncManager$AccountSyncStats;>;"
    .end local v7           #accountSyncStats:Landroid/content/SyncManager$AccountSyncStats;
    .end local v11           #authorityName:Ljava/lang/String;
    .end local v12           #authoritySyncStats:Landroid/content/SyncManager$AuthoritySyncStats;
    .end local v17           #elapsedTime:J
    .end local v30           #length:I
    :cond_4
    const-string v11, "Unknown"

    .line 1284
    .restart local v11       #authorityName:Ljava/lang/String;
    const-string v5, "Unknown"

    .restart local v5       #accountKey:Ljava/lang/String;
    goto :goto_1

    .line 1317
    .end local v5           #accountKey:Ljava/lang/String;
    .end local v8           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v11           #authorityName:Ljava/lang/String;
    .end local v25           #item:Landroid/content/SyncStorageEngine$SyncHistoryItem;
    :cond_5
    const-wide/16 v50, 0x0

    cmp-long v50, v46, v50

    if-lez v50, :cond_7

    .line 1318
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1319
    const-string v50, "Detailed Statistics (Recent history):  %d (# of times) %ds (sync time)\n"

    const/16 v51, 0x2

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    aput-object v53, v51, v52

    const/16 v52, 0x1

    const-wide/16 v53, 0x3e8

    div-long v53, v46, v53

    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    aput-object v53, v51, v52

    move-object/from16 v0, p1

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1323
    new-instance v40, Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v50

    move-object/from16 v0, v40

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1325
    .local v40, sortedAuthorities:Ljava/util/List;,"Ljava/util/List<Landroid/content/SyncManager$AuthoritySyncStats;>;"
    new-instance v50, Landroid/content/SyncManager$11;

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/content/SyncManager$11;-><init>(Landroid/content/SyncManager;)V

    move-object/from16 v0, v40

    move-object/from16 v1, v50

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1337
    add-int/lit8 v50, v31, 0x3

    move/from16 v0, v32

    move/from16 v1, v50

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v33

    .line 1338
    .local v33, maxLength:I
    add-int/lit8 v50, v33, 0x4

    add-int/lit8 v50, v50, 0x2

    add-int/lit8 v50, v50, 0xa

    add-int/lit8 v35, v50, 0xb

    .line 1339
    .local v35, padLength:I
    move/from16 v0, v35

    new-array v13, v0, [C

    .line 1340
    .local v13, chars:[C
    const/16 v50, 0x2d

    move/from16 v0, v50

    invoke-static {v13, v0}, Ljava/util/Arrays;->fill([CC)V

    .line 1341
    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    invoke-direct {v0, v13}, Ljava/lang/String;-><init>([C)V

    .line 1343
    .local v38, separator:Ljava/lang/String;
    const-string v50, "  %%-%ds: %%-9s  %%-11s\n"

    const/16 v51, 0x1

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    add-int/lit8 v53, v33, 0x2

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    aput-object v53, v51, v52

    invoke-static/range {v50 .. v51}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1345
    .local v9, authorityFormat:Ljava/lang/String;
    const-string v50, "    %%-%ds:   %%-9s  %%-11s\n"

    const/16 v51, 0x1

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    aput-object v53, v51, v52

    invoke-static/range {v50 .. v51}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1348
    .local v4, accountFormat:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1349
    invoke-interface/range {v40 .. v40}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .end local v23           #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v50

    if-eqz v50, :cond_7

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/SyncManager$AuthoritySyncStats;

    .line 1350
    .restart local v12       #authoritySyncStats:Landroid/content/SyncManager$AuthoritySyncStats;
    iget-object v0, v12, Landroid/content/SyncManager$AuthoritySyncStats;->name:Ljava/lang/String;

    move-object/from16 v34, v0

    .line 1356
    .local v34, name:Ljava/lang/String;
    iget-wide v0, v12, Landroid/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    move-wide/from16 v17, v0

    .line 1357
    .restart local v17       #elapsedTime:J
    iget v0, v12, Landroid/content/SyncManager$AuthoritySyncStats;->times:I

    move/from16 v44, v0

    .line 1358
    .local v44, times:I
    const-string v50, "%ds/%d%%"

    const/16 v51, 0x2

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    const-wide/16 v53, 0x3e8

    div-long v53, v17, v53

    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    aput-object v53, v51, v52

    const/16 v52, 0x1

    const-wide/16 v53, 0x64

    mul-long v53, v53, v17

    div-long v53, v53, v46

    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    aput-object v53, v51, v52

    invoke-static/range {v50 .. v51}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v43

    .line 1361
    .local v43, timeStr:Ljava/lang/String;
    const-string v50, "%d/%d%%"

    const/16 v51, 0x2

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    aput-object v53, v51, v52

    const/16 v52, 0x1

    mul-int/lit8 v53, v44, 0x64

    move/from16 v0, v53

    int-to-long v0, v0

    move-wide/from16 v53, v0

    div-long v53, v53, v48

    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    aput-object v53, v51, v52

    invoke-static/range {v50 .. v51}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v45

    .line 1364
    .local v45, timesStr:Ljava/lang/String;
    const/16 v50, 0x3

    move/from16 v0, v50

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    aput-object v34, v50, v51

    const/16 v51, 0x1

    aput-object v45, v50, v51

    const/16 v51, 0x2

    aput-object v43, v50, v51

    move-object/from16 v0, p1

    move-object/from16 v1, v50

    invoke-virtual {v0, v9, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1366
    new-instance v39, Ljava/util/ArrayList;

    iget-object v0, v12, Landroid/content/SyncManager$AuthoritySyncStats;->accountMap:Ljava/util/Map;

    move-object/from16 v50, v0

    invoke-interface/range {v50 .. v50}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v50

    move-object/from16 v0, v39

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1369
    .local v39, sortedAccounts:Ljava/util/List;,"Ljava/util/List<Landroid/content/SyncManager$AccountSyncStats;>;"
    new-instance v50, Landroid/content/SyncManager$12;

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/content/SyncManager$12;-><init>(Landroid/content/SyncManager;)V

    move-object/from16 v0, v39

    move-object/from16 v1, v50

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1380
    invoke-interface/range {v39 .. v39}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v50

    if-eqz v50, :cond_6

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/content/SyncManager$AccountSyncStats;

    .line 1381
    .local v41, stats:Landroid/content/SyncManager$AccountSyncStats;
    move-object/from16 v0, v41

    iget-wide v0, v0, Landroid/content/SyncManager$AccountSyncStats;->elapsedTime:J

    move-wide/from16 v17, v0

    .line 1382
    move-object/from16 v0, v41

    iget v0, v0, Landroid/content/SyncManager$AccountSyncStats;->times:I

    move/from16 v44, v0

    .line 1383
    const-string v50, "%ds/%d%%"

    const/16 v51, 0x2

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    const-wide/16 v53, 0x3e8

    div-long v53, v17, v53

    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    aput-object v53, v51, v52

    const/16 v52, 0x1

    const-wide/16 v53, 0x64

    mul-long v53, v53, v17

    div-long v53, v53, v46

    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    aput-object v53, v51, v52

    invoke-static/range {v50 .. v51}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v43

    .line 1386
    const-string v50, "%d/%d%%"

    const/16 v51, 0x2

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    aput-object v53, v51, v52

    const/16 v52, 0x1

    mul-int/lit8 v53, v44, 0x64

    move/from16 v0, v53

    int-to-long v0, v0

    move-wide/from16 v53, v0

    div-long v53, v53, v48

    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    aput-object v53, v51, v52

    invoke-static/range {v50 .. v51}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v45

    .line 1389
    const/16 v50, 0x3

    move/from16 v0, v50

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/content/SyncManager$AccountSyncStats;->name:Ljava/lang/String;

    move-object/from16 v52, v0

    aput-object v52, v50, v51

    const/16 v51, 0x1

    aput-object v45, v50, v51

    const/16 v51, 0x2

    aput-object v43, v50, v51

    move-object/from16 v0, p1

    move-object/from16 v1, v50

    invoke-virtual {v0, v4, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto/16 :goto_3

    .line 1391
    .end local v41           #stats:Landroid/content/SyncManager$AccountSyncStats;
    :cond_6
    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1395
    .end local v4           #accountFormat:Ljava/lang/String;
    .end local v9           #authorityFormat:Ljava/lang/String;
    .end local v12           #authoritySyncStats:Landroid/content/SyncManager$AuthoritySyncStats;
    .end local v13           #chars:[C
    .end local v17           #elapsedTime:J
    .end local v24           #i$:Ljava/util/Iterator;
    .end local v33           #maxLength:I
    .end local v34           #name:Ljava/lang/String;
    .end local v35           #padLength:I
    .end local v38           #separator:Ljava/lang/String;
    .end local v39           #sortedAccounts:Ljava/util/List;,"Ljava/util/List<Landroid/content/SyncManager$AccountSyncStats;>;"
    .end local v40           #sortedAuthorities:Ljava/util/List;,"Ljava/util/List<Landroid/content/SyncManager$AuthoritySyncStats;>;"
    .end local v43           #timeStr:Ljava/lang/String;
    .end local v44           #times:I
    .end local v45           #timesStr:Ljava/lang/String;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1396
    const-string v50, "Recent Sync History"

    move-object/from16 v0, p1

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1397
    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "  %-"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string/jumbo v51, "s  %s\n"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1398
    .local v21, format:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v29

    .line 1400
    .local v29, lastTimeMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    const/16 v22, 0x0

    .local v22, i:I
    :goto_4
    move/from16 v0, v22

    if-ge v0, v3, :cond_f

    .line 1401
    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/SyncStorageEngine$SyncHistoryItem;

    .line 1402
    .restart local v25       #item:Landroid/content/SyncStorageEngine$SyncHistoryItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object/from16 v50, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    move/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Landroid/content/SyncStorageEngine;->getAuthority(I)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v8

    .line 1406
    .restart local v8       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v8, :cond_b

    .line 1407
    iget-object v11, v8, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    .line 1408
    .restart local v11       #authorityName:Ljava/lang/String;
    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v8, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, "/"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    iget-object v0, v8, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1413
    .restart local v5       #accountKey:Ljava/lang/String;
    :goto_5
    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    move-wide/from16 v17, v0

    .line 1414
    .restart local v17       #elapsedTime:J
    new-instance v42, Landroid/text/format/Time;

    invoke-direct/range {v42 .. v42}, Landroid/text/format/Time;-><init>()V

    .line 1415
    .local v42, time:Landroid/text/format/Time;
    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    move-wide/from16 v19, v0

    .line 1416
    .local v19, eventTime:J
    move-object/from16 v0, v42

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1418
    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v50

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, "/"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 1419
    .local v27, key:Ljava/lang/String;
    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Long;

    .line 1421
    .local v28, lastEventTime:Ljava/lang/Long;
    if-nez v28, :cond_c

    .line 1422
    const-string v16, ""

    .line 1435
    .local v16, diffString:Ljava/lang/String;
    :goto_6
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v50

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    move-object/from16 v2, v50

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1437
    const-string v50, "  #%-3d: %s %8s  %5.1fs  %8s"

    const/16 v51, 0x5

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    add-int/lit8 v53, v22, 0x1

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    aput-object v53, v51, v52

    const/16 v52, 0x1

    invoke-static/range {v19 .. v20}, Landroid/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v53

    aput-object v53, v51, v52

    const/16 v52, 0x2

    sget-object v53, Landroid/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->source:I

    move/from16 v54, v0

    aget-object v53, v53, v54

    aput-object v53, v51, v52

    const/16 v52, 0x3

    move-wide/from16 v0, v17

    long-to-float v0, v0

    move/from16 v53, v0

    const/high16 v54, 0x447a

    div-float v53, v53, v54

    invoke-static/range {v53 .. v53}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v53

    aput-object v53, v51, v52

    const/16 v52, 0x4

    aput-object v16, v51, v52

    move-object/from16 v0, p1

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1443
    const/16 v50, 0x2

    move/from16 v0, v50

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    aput-object v5, v50, v51

    const/16 v51, 0x1

    aput-object v11, v50, v51

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1445
    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->event:I

    move/from16 v50, v0

    const/16 v51, 0x1

    move/from16 v0, v50

    move/from16 v1, v51

    if-ne v0, v1, :cond_8

    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    move-wide/from16 v50, v0

    const-wide/16 v52, 0x0

    cmp-long v50, v50, v52

    if-nez v50, :cond_8

    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J

    move-wide/from16 v50, v0

    const-wide/16 v52, 0x0

    cmp-long v50, v50, v52

    if-eqz v50, :cond_9

    .line 1448
    :cond_8
    const-string v50, "    event=%d upstreamActivity=%d downstreamActivity=%d\n"

    const/16 v51, 0x3

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->event:I

    move/from16 v53, v0

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    aput-object v53, v51, v52

    const/16 v52, 0x1

    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    move-wide/from16 v53, v0

    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    aput-object v53, v51, v52

    const/16 v52, 0x2

    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J

    move-wide/from16 v53, v0

    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    aput-object v53, v51, v52

    move-object/from16 v0, p1

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1453
    :cond_9
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    move-object/from16 v50, v0

    if-eqz v50, :cond_a

    const-string/jumbo v50, "success"

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    move-object/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-nez v50, :cond_a

    .line 1455
    const-string v50, "    mesg=%s\n"

    const/16 v51, 0x1

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    move-object/from16 v53, v0

    aput-object v53, v51, v52

    move-object/from16 v0, p1

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1400
    :cond_a
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_4

    .line 1410
    .end local v5           #accountKey:Ljava/lang/String;
    .end local v11           #authorityName:Ljava/lang/String;
    .end local v16           #diffString:Ljava/lang/String;
    .end local v17           #elapsedTime:J
    .end local v19           #eventTime:J
    .end local v27           #key:Ljava/lang/String;
    .end local v28           #lastEventTime:Ljava/lang/Long;
    .end local v42           #time:Landroid/text/format/Time;
    :cond_b
    const-string v11, "Unknown"

    .line 1411
    .restart local v11       #authorityName:Ljava/lang/String;
    const-string v5, "Unknown"

    .restart local v5       #accountKey:Ljava/lang/String;
    goto/16 :goto_5

    .line 1424
    .restart local v17       #elapsedTime:J
    .restart local v19       #eventTime:J
    .restart local v27       #key:Ljava/lang/String;
    .restart local v28       #lastEventTime:Ljava/lang/Long;
    .restart local v42       #time:Landroid/text/format/Time;
    :cond_c
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v50

    sub-long v50, v50, v19

    const-wide/16 v52, 0x3e8

    div-long v14, v50, v52

    .line 1425
    .local v14, diff:J
    const-wide/16 v50, 0x3c

    cmp-long v50, v14, v50

    if-gez v50, :cond_d

    .line 1426
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    .restart local v16       #diffString:Ljava/lang/String;
    goto/16 :goto_6

    .line 1427
    .end local v16           #diffString:Ljava/lang/String;
    :cond_d
    const-wide/16 v50, 0xe10

    cmp-long v50, v14, v50

    if-gez v50, :cond_e

    .line 1428
    const-string v50, "%02d:%02d"

    const/16 v51, 0x2

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    const-wide/16 v53, 0x3c

    div-long v53, v14, v53

    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    aput-object v53, v51, v52

    const/16 v52, 0x1

    const-wide/16 v53, 0x3c

    rem-long v53, v14, v53

    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    aput-object v53, v51, v52

    invoke-static/range {v50 .. v51}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .restart local v16       #diffString:Ljava/lang/String;
    goto/16 :goto_6

    .line 1430
    .end local v16           #diffString:Ljava/lang/String;
    :cond_e
    const-wide/16 v50, 0xe10

    rem-long v36, v14, v50

    .line 1431
    .local v36, sec:J
    const-string v50, "%02d:%02d:%02d"

    const/16 v51, 0x3

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    const-wide/16 v53, 0xe10

    div-long v53, v14, v53

    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    aput-object v53, v51, v52

    const/16 v52, 0x1

    const-wide/16 v53, 0x3c

    div-long v53, v36, v53

    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    aput-object v53, v51, v52

    const/16 v52, 0x2

    const-wide/16 v53, 0x3c

    rem-long v53, v36, v53

    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    aput-object v53, v51, v52

    invoke-static/range {v50 .. v51}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .restart local v16       #diffString:Ljava/lang/String;
    goto/16 :goto_6

    .line 1459
    .end local v3           #N:I
    .end local v5           #accountKey:Ljava/lang/String;
    .end local v8           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v10           #authorityMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/content/SyncManager$AuthoritySyncStats;>;"
    .end local v11           #authorityName:Ljava/lang/String;
    .end local v14           #diff:J
    .end local v16           #diffString:Ljava/lang/String;
    .end local v17           #elapsedTime:J
    .end local v19           #eventTime:J
    .end local v21           #format:Ljava/lang/String;
    .end local v22           #i:I
    .end local v25           #item:Landroid/content/SyncStorageEngine$SyncHistoryItem;
    .end local v27           #key:Ljava/lang/String;
    .end local v28           #lastEventTime:Ljava/lang/Long;
    .end local v29           #lastTimeMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v31           #maxAccount:I
    .end local v32           #maxAuthority:I
    .end local v36           #sec:J
    .end local v42           #time:Landroid/text/format/Time;
    .end local v46           #totalElapsedTime:J
    .end local v48           #totalTimes:J
    :cond_f
    return-void
.end method

.method private dumpTimeSec(Ljava/io/PrintWriter;J)V
    .locals 4
    .parameter "pw"
    .parameter "time"

    .prologue
    .line 1240
    const-wide/16 v0, 0x3e8

    div-long v0, p2, v0

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    const-wide/16 v0, 0x64

    div-long v0, p2, v0

    const-wide/16 v2, 0xa

    rem-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1241
    const/16 v0, 0x73

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1242
    return-void
.end method

.method private ensureAlarmService()V
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Landroid/content/SyncManager;->mAlarmService:Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    .line 477
    iget-object v0, p0, Landroid/content/SyncManager;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Landroid/content/SyncManager;->mAlarmService:Landroid/app/AlarmManager;

    .line 479
    :cond_0
    return-void
.end method

.method static formatTime(J)Ljava/lang/String;
    .locals 2
    .parameter "time"

    .prologue
    .line 1058
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 1059
    .local v0, tobj:Landroid/text/format/Time;
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 1060
    const-string v1, "%Y-%m-%d %H:%M:%S"

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getAllUsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getUsers()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 226
    :goto_0
    return-object v0

    .line 223
    :catch_0
    move-exception v0

    .line 226
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .prologue
    .line 344
    monitor-enter p0

    .line 345
    :try_start_0
    iget-object v0, p0, Landroid/content/SyncManager;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 346
    iget-object v0, p0, Landroid/content/SyncManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Landroid/content/SyncManager;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    .line 349
    :cond_0
    iget-object v0, p0, Landroid/content/SyncManager;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    monitor-exit p0

    return-object v0

    .line 350
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getLastFailureMessage(I)Ljava/lang/String;
    .locals 1
    .parameter "code"

    .prologue
    .line 1209
    packed-switch p1, :pswitch_data_0

    .line 1235
    const-string/jumbo v0, "unknown"

    :goto_0
    return-object v0

    .line 1211
    :pswitch_0
    const-string/jumbo v0, "sync already in progress"

    goto :goto_0

    .line 1214
    :pswitch_1
    const-string v0, "authentication error"

    goto :goto_0

    .line 1217
    :pswitch_2
    const-string v0, "I/O error"

    goto :goto_0

    .line 1220
    :pswitch_3
    const-string/jumbo v0, "parse error"

    goto :goto_0

    .line 1223
    :pswitch_4
    const-string v0, "conflict error"

    goto :goto_0

    .line 1226
    :pswitch_5
    const-string/jumbo v0, "too many deletions error"

    goto :goto_0

    .line 1229
    :pswitch_6
    const-string/jumbo v0, "too many retries error"

    goto :goto_0

    .line 1232
    :pswitch_7
    const-string v0, "internal error"

    goto :goto_0

    .line 1209
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private getUiContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 915
    iget-object v0, p0, Landroid/content/SyncManager;->mUiContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 916
    iget-object v0, p0, Landroid/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/app/ThemeUtils;->createUiContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/content/SyncManager;->mUiContext:Landroid/content/Context;

    .line 918
    :cond_0
    iget-object v0, p0, Landroid/content/SyncManager;->mUiContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/SyncManager;->mUiContext:Landroid/content/Context;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/content/SyncManager;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method private increaseBackoffSetting(Landroid/content/SyncOperation;)V
    .locals 18
    .parameter "op"

    .prologue
    .line 734
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 736
    .local v11, now:J
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/content/SyncOperation;->userId:I

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/SyncStorageEngine;->getBackoff(Landroid/accounts/Account;ILjava/lang/String;)Landroid/util/Pair;

    move-result-object v13

    .line 738
    .local v13, previousSettings:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    const-wide/16 v7, -0x1

    .line 739
    .local v7, newDelayInMs:J
    if-eqz v13, :cond_2

    .line 742
    iget-object v1, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v11, v1

    if-gez v1, :cond_1

    .line 743
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 744
    const-string v2, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Still in backoff, do not increase it. Remaining: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sub-long/2addr v14, v11

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " seconds."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_0
    :goto_0
    return-void

    .line 750
    :cond_1
    iget-object v1, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x2

    mul-long v7, v1, v3

    .line 752
    :cond_2
    const-wide/16 v1, 0x0

    cmp-long v1, v7, v1

    if-gtz v1, :cond_3

    .line 754
    const-wide/16 v1, 0x7530

    const-wide/32 v3, 0x80e8

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/SyncManager;->jitterize(JJ)J

    move-result-wide v7

    .line 759
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sync_max_retry_delay_in_seconds"

    const-wide/16 v3, 0xe10

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v9

    .line 762
    .local v9, maxSyncRetryTimeInSeconds:J
    const-wide/16 v1, 0x3e8

    mul-long/2addr v1, v9

    cmp-long v1, v7, v1

    if-lez v1, :cond_4

    .line 763
    const-wide/16 v1, 0x3e8

    mul-long v7, v9, v1

    .line 766
    :cond_4
    add-long v5, v11, v7

    .line 768
    .local v5, backoff:J
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/content/SyncOperation;->userId:I

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual/range {v1 .. v8}, Landroid/content/SyncStorageEngine;->setBackoff(Landroid/accounts/Account;ILjava/lang/String;JJ)V

    .line 771
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, p1

    iput-object v1, v0, Landroid/content/SyncOperation;->backoff:Ljava/lang/Long;

    .line 772
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncOperation;->updateEffectiveRunTime()V

    .line 774
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    monitor-enter v14

    .line 775
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/content/SyncOperation;->userId:I

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Landroid/content/SyncQueue;->onBackoffChanged(Landroid/accounts/Account;ILjava/lang/String;J)V

    .line 776
    monitor-exit v14

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isSyncStillActive(Landroid/content/SyncManager$ActiveSyncContext;)Z
    .locals 3
    .parameter "activeSyncContext"

    .prologue
    .line 2571
    iget-object v2, p0, Landroid/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncManager$ActiveSyncContext;

    .line 2572
    .local v1, sync:Landroid/content/SyncManager$ActiveSyncContext;
    if-ne v1, p1, :cond_0

    .line 2573
    const/4 v2, 0x1

    .line 2576
    .end local v1           #sync:Landroid/content/SyncManager$ActiveSyncContext;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private jitterize(JJ)J
    .locals 5
    .parameter "minValue"
    .parameter "maxValue"

    .prologue
    .line 462
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Ljava/util/Random;-><init>(J)V

    .line 463
    .local v0, random:Ljava/util/Random;
    sub-long v1, p3, p1

    .line 464
    .local v1, spread:J
    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 465
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "the difference between the maxValue and the minValue must be less than 2147483647"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 468
    :cond_0
    long-to-int v3, v1

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v3, p1

    return-wide v3
.end method

.method private onUserRemoved(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v2, -0x1

    .line 903
    const-string v1, "android.intent.extra.user_id"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 904
    .local v0, userId:I
    if-ne v0, v2, :cond_0

    .line 912
    :goto_0
    return-void

    .line 907
    :cond_0
    iget-object v1, p0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/accounts/Account;

    invoke-virtual {v1, v2, v0}, Landroid/content/SyncStorageEngine;->doDatabaseCleanup([Landroid/accounts/Account;I)V

    .line 908
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/content/SyncManager;->onAccountsUpdated([Landroid/accounts/Account;)V

    .line 909
    iget-object v2, p0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    monitor-enter v2

    .line 910
    :try_start_0
    iget-object v1, p0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    invoke-virtual {v1, v0}, Landroid/content/SyncQueue;->removeUser(I)V

    .line 911
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private readDataConnectionState()Z
    .locals 2

    .prologue
    .line 319
    invoke-direct {p0}, Landroid/content/SyncManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 320
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private sendCancelSyncsMessage(Landroid/accounts/Account;ILjava/lang/String;)V
    .locals 3
    .parameter "account"
    .parameter "userId"
    .parameter "authority"

    .prologue
    .line 698
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SyncManager"

    const-string/jumbo v2, "sending MESSAGE_CANCEL"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_0
    iget-object v1, p0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    invoke-virtual {v1}, Landroid/content/SyncManager$SyncHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 700
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 701
    invoke-static {p1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 702
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 703
    iget-object v1, p0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    invoke-virtual {v1, v0}, Landroid/content/SyncManager$SyncHandler;->sendMessage(Landroid/os/Message;)Z

    .line 704
    return-void
.end method

.method private sendCheckAlarmsMessage()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 682
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SyncManager"

    const-string/jumbo v1, "sending MESSAGE_CHECK_ALARMS"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_0
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    invoke-virtual {v0, v2}, Landroid/content/SyncManager$SyncHandler;->removeMessages(I)V

    .line 684
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    invoke-virtual {v0, v2}, Landroid/content/SyncManager$SyncHandler;->sendEmptyMessage(I)Z

    .line 685
    return-void
.end method

.method private sendSyncAlarmMessage()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 677
    const-string v0, "SyncManager"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SyncManager"

    const-string/jumbo v1, "sending MESSAGE_SYNC_ALARM"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :cond_0
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    invoke-virtual {v0, v2}, Landroid/content/SyncManager$SyncHandler;->sendEmptyMessage(I)Z

    .line 679
    return-void
.end method

.method private sendSyncFinishedOrCanceledMessage(Landroid/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V
    .locals 3
    .parameter "syncContext"
    .parameter "syncResult"

    .prologue
    .line 689
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SyncManager"

    const-string/jumbo v2, "sending MESSAGE_SYNC_FINISHED"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :cond_0
    iget-object v1, p0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    invoke-virtual {v1}, Landroid/content/SyncManager$SyncHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 691
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 692
    new-instance v1, Landroid/content/SyncManager$SyncHandlerMessagePayload;

    invoke-direct {v1, p0, p1, p2}, Landroid/content/SyncManager$SyncHandlerMessagePayload;-><init>(Landroid/content/SyncManager;Landroid/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 693
    iget-object v1, p0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    invoke-virtual {v1, v0}, Landroid/content/SyncManager$SyncHandler;->sendMessage(Landroid/os/Message;)Z

    .line 694
    return-void
.end method

.method private setDelayUntilTime(Landroid/content/SyncOperation;J)V
    .locals 10
    .parameter "op"
    .parameter "delayUntilSeconds"

    .prologue
    .line 780
    const-wide/16 v0, 0x3e8

    mul-long v8, p2, v0

    .line 781
    .local v8, delayUntil:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 783
    .local v6, absoluteNow:J
    cmp-long v0, v8, v6

    if-lez v0, :cond_0

    .line 784
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v2, v8, v6

    add-long v4, v0, v2

    .line 788
    .local v4, newDelayUntilTime:J
    :goto_0
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    iget-object v1, p1, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget v2, p1, Landroid/content/SyncOperation;->userId:I

    iget-object v3, p1, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/SyncStorageEngine;->setDelayUntilTime(Landroid/accounts/Account;ILjava/lang/String;J)V

    .line 790
    iget-object v1, p0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    monitor-enter v1

    .line 791
    :try_start_0
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    iget-object v2, p1, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v3, p1, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/content/SyncQueue;->onDelayUntilTimeChanged(Landroid/accounts/Account;Ljava/lang/String;J)V

    .line 792
    monitor-exit v1

    .line 793
    return-void

    .line 786
    .end local v4           #newDelayUntilTime:J
    :cond_0
    const-wide/16 v4, 0x0

    .restart local v4       #newDelayUntilTime:J
    goto :goto_0

    .line 792
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public cancelActiveSync(Landroid/accounts/Account;ILjava/lang/String;)V
    .locals 0
    .parameter "account"
    .parameter "userId"
    .parameter "authority"

    .prologue
    .line 801
    invoke-direct {p0, p1, p2, p3}, Landroid/content/SyncManager;->sendCancelSyncsMessage(Landroid/accounts/Account;ILjava/lang/String;)V

    .line 802
    return-void
.end method

.method public clearScheduledSyncOperations(Landroid/accounts/Account;ILjava/lang/String;)V
    .locals 8
    .parameter "account"
    .parameter "userId"
    .parameter "authority"

    .prologue
    const-wide/16 v4, -0x1

    .line 834
    iget-object v1, p0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    monitor-enter v1

    .line 835
    :try_start_0
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/SyncQueue;->remove(Landroid/accounts/Account;ILjava/lang/String;)V

    .line 836
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 837
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v6, v4

    invoke-virtual/range {v0 .. v7}, Landroid/content/SyncStorageEngine;->setBackoff(Landroid/accounts/Account;ILjava/lang/String;JJ)V

    .line 839
    return-void

    .line 836
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 4
    .parameter "fd"
    .parameter "pw"

    .prologue
    .line 1047
    invoke-virtual {p0, p2}, Landroid/content/SyncManager;->dumpSyncState(Ljava/io/PrintWriter;)V

    .line 1048
    invoke-virtual {p0, p2}, Landroid/content/SyncManager;->dumpSyncHistory(Ljava/io/PrintWriter;)V

    .line 1050
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1051
    const-string v2, "SyncAdapters:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1052
    iget-object v2, p0, Landroid/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-virtual {v2}, Landroid/content/SyncAdaptersCache;->getAllServices()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 1053
    .local v1, info:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1055
    .end local v1           #info:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;
    :cond_0
    return-void
.end method

.method protected dumpSyncHistory(Ljava/io/PrintWriter;)V
    .locals 0
    .parameter "pw"

    .prologue
    .line 1259
    invoke-direct {p0, p1}, Landroid/content/SyncManager;->dumpRecentHistory(Ljava/io/PrintWriter;)V

    .line 1260
    invoke-direct {p0, p1}, Landroid/content/SyncManager;->dumpDayStatistics(Ljava/io/PrintWriter;)V

    .line 1261
    return-void
.end method

.method protected dumpSyncState(Ljava/io/PrintWriter;)V
    .locals 33
    .parameter "pw"

    .prologue
    .line 1064
    const-string v28, "data connected: "

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/SyncManager;->mDataConnectionIsConnected:Z

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1065
    const-string v28, "auto sync: "

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1066
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncManager;->getAllUsers()Ljava/util/List;

    move-result-object v27

    .line 1067
    .local v27, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v27, :cond_1

    .line 1068
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/pm/UserInfo;

    .line 1069
    .local v26, user:Landroid/content/pm/UserInfo;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "u"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v26

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object/from16 v29, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 1072
    .end local v26           #user:Landroid/content/pm/UserInfo;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1074
    .end local v11           #i$:Ljava/util/Iterator;
    :cond_1
    const-string/jumbo v28, "memory low: "

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/SyncManager;->mStorageIsLow:Z

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1076
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/content/SyncManager;->mAccounts:[Landroid/accounts/AccountAndUser;

    .line 1078
    .local v5, accounts:[Landroid/accounts/AccountAndUser;
    const-string v28, "accounts: "

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1079
    sget-object v28, Landroid/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

    move-object/from16 v0, v28

    if-eq v5, v0, :cond_2

    .line 1080
    array-length v0, v5

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1084
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    .line 1085
    .local v19, now:J
    const-string/jumbo v28, "now: "

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1086
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, " ("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    invoke-static/range {v29 .. v30}, Landroid/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ")"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1087
    const-string/jumbo v28, "offset: "

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/SyncManager;->mSyncRandomOffsetMillis:I

    move/from16 v28, v0

    move/from16 v0, v28

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1088
    const-string v28, " (HH:MM:SS)"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1089
    const-string/jumbo v28, "uptime: "

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v28, 0x3e8

    div-long v28, v19, v28

    invoke-static/range {v28 .. v29}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1090
    const-string v28, " (HH:MM:SS)"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1091
    const-string/jumbo v28, "time spent syncing: "

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1092
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->mSyncTimeTracker:Landroid/content/SyncManager$SyncTimeTracker;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/SyncManager$SyncTimeTracker;->timeSpentSyncing()J

    move-result-wide v28

    const-wide/16 v30, 0x3e8

    div-long v28, v28, v30

    invoke-static/range {v28 .. v29}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1094
    const-string v28, " (HH:MM:SS), sync "

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1095
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->mSyncTimeTracker:Landroid/content/SyncManager$SyncTimeTracker;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Landroid/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z

    move/from16 v28, v0

    if-eqz v28, :cond_3

    const-string v28, ""

    :goto_2
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1096
    const-string v28, "in progress"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1097
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    move-object/from16 v28, v0

    #getter for: Landroid/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;
    invoke-static/range {v28 .. v28}, Landroid/content/SyncManager$SyncHandler;->access$1400(Landroid/content/SyncManager$SyncHandler;)Ljava/lang/Long;

    move-result-object v28

    if-eqz v28, :cond_4

    .line 1098
    const-string/jumbo v28, "next alarm time: "

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    move-object/from16 v28, v0

    #getter for: Landroid/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;
    invoke-static/range {v28 .. v28}, Landroid/content/SyncManager$SyncHandler;->access$1400(Landroid/content/SyncManager$SyncHandler;)Ljava/lang/Long;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1099
    const-string v28, " ("

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1100
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    move-object/from16 v28, v0

    #getter for: Landroid/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;
    invoke-static/range {v28 .. v28}, Landroid/content/SyncManager$SyncHandler;->access$1400(Landroid/content/SyncManager$SyncHandler;)Ljava/lang/Long;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    sub-long v28, v28, v19

    const-wide/16 v30, 0x3e8

    div-long v28, v28, v30

    invoke-static/range {v28 .. v29}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1101
    const-string v28, " (HH:MM:SS) from now)"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1106
    :goto_3
    const-string/jumbo v28, "notification info: "

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1107
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 1108
    .local v22, sb:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->toString(Ljava/lang/StringBuilder;)V

    .line 1109
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1111
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1112
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Active Syncs: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1113
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/SyncManager$ActiveSyncContext;

    .line 1114
    .local v6, activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    iget-wide v0, v6, Landroid/content/SyncManager$ActiveSyncContext;->mStartTime:J

    move-wide/from16 v28, v0

    sub-long v28, v19, v28

    const-wide/16 v30, 0x3e8

    div-long v8, v28, v30

    .line 1115
    .local v8, durationInSeconds:J
    const-string v28, "  "

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1116
    invoke-static {v8, v9}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1117
    const-string v28, " - "

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1118
    iget-object v0, v6, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/content/SyncOperation;->dump(Z)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1119
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_4

    .line 1082
    .end local v6           #activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    .end local v8           #durationInSeconds:J
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v19           #now:J
    .end local v22           #sb:Ljava/lang/StringBuilder;
    :cond_2
    const-string/jumbo v28, "not known yet"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1095
    .restart local v19       #now:J
    :cond_3
    const-string/jumbo v28, "not "

    goto/16 :goto_2

    .line 1103
    :cond_4
    const-string/jumbo v28, "no alarm is scheduled (there had better not be any pending syncs)"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1122
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v22       #sb:Ljava/lang/StringBuilder;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    move-object/from16 v29, v0

    monitor-enter v29

    .line 1123
    const/16 v28, 0x0

    :try_start_0
    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1124
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/SyncQueue;->dump(Ljava/lang/StringBuilder;)V

    .line 1125
    monitor-exit v29
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1126
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1127
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1130
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1131
    const-string v28, "Sync Status"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1132
    move-object v7, v5

    .local v7, arr$:[Landroid/accounts/AccountAndUser;
    array-length v0, v7

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    move v12, v11

    .end local v11           #i$:I
    .local v12, i$:I
    :goto_5
    move/from16 v0, v16

    if-ge v12, v0, :cond_10

    aget-object v4, v7, v12

    .line 1133
    .local v4, account:Landroid/accounts/AccountAndUser;
    const-string v28, "  Account "

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v4, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1134
    const-string v28, " u"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v4, Landroid/accounts/AccountAndUser;->userId:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1135
    const-string v28, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v4, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1136
    const-string v28, ":"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1138
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/SyncAdaptersCache;->getAllServices()Ljava/util/Collection;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .end local v12           #i$:I
    .local v11, i$:Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 1139
    .local v25, syncAdapterType:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/content/SyncAdapterType;

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v28, v0

    iget-object v0, v4, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_6

    .line 1143
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object/from16 v29, v0

    iget-object v0, v4, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object/from16 v30, v0

    iget v0, v4, Landroid/accounts/AccountAndUser;->userId:I

    move/from16 v31, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/content/SyncAdapterType;

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, v31

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/SyncStorageEngine;->getOrCreateAuthority(Landroid/accounts/Account;ILjava/lang/String;)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v23

    .line 1146
    .local v23, settings:Landroid/content/SyncStorageEngine$AuthorityInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/SyncStorageEngine;->getOrCreateSyncStatus(Landroid/content/SyncStorageEngine$AuthorityInfo;)Landroid/content/SyncStatusInfo;

    move-result-object v24

    .line 1147
    .local v24, status:Landroid/content/SyncStatusInfo;
    const-string v28, "    "

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1148
    const-string v28, ":"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1149
    const-string v28, "      settings:"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1150
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    move/from16 v28, v0

    if-lez v28, :cond_a

    const-string/jumbo v28, "syncable"

    :goto_7
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1153
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, ", "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    move/from16 v28, v0

    if-eqz v28, :cond_c

    const-string v28, "enabled"

    :goto_8
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1154
    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    move-wide/from16 v28, v0

    cmp-long v28, v28, v19

    if-lez v28, :cond_7

    .line 1155
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, ", delay for "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    move-wide/from16 v29, v0

    sub-long v29, v29, v19

    const-wide/16 v31, 0x3e8

    div-long v29, v29, v31

    invoke-virtual/range {v28 .. v30}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " sec"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1158
    :cond_7
    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    move-wide/from16 v28, v0

    cmp-long v28, v28, v19

    if-lez v28, :cond_8

    .line 1159
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, ", backoff for "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    move-wide/from16 v29, v0

    sub-long v29, v29, v19

    const-wide/16 v31, 0x3e8

    div-long v29, v29, v31

    invoke-virtual/range {v28 .. v30}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " sec"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1162
    :cond_8
    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x0

    cmp-long v28, v28, v30

    if-lez v28, :cond_9

    .line 1163
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, ", the backoff increment is "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    move-wide/from16 v29, v0

    const-wide/16 v31, 0x3e8

    div-long v29, v29, v31

    invoke-virtual/range {v28 .. v30}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " sec"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1166
    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1167
    const/16 v21, 0x0

    .line 1168
    .local v21, periodicIndex:I
    :goto_9
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v21

    move/from16 v1, v28

    if-ge v0, v1, :cond_d

    .line 1170
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    .line 1171
    .local v13, info:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo;->getPeriodicSyncTime(I)J

    move-result-wide v14

    .line 1172
    .local v14, lastPeriodicTime:J
    iget-object v0, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Ljava/lang/Long;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    const-wide/16 v30, 0x3e8

    mul-long v28, v28, v30

    add-long v17, v14, v28

    .line 1173
    .local v17, nextPeriodicTime:J
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "      periodic period="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    iget-object v0, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", extras="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    iget-object v0, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", next="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static/range {v17 .. v18}, Landroid/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1169
    add-int/lit8 v21, v21, 0x1

    goto :goto_9

    .line 1125
    .end local v4           #account:Landroid/accounts/AccountAndUser;
    .end local v7           #arr$:[Landroid/accounts/AccountAndUser;
    .end local v13           #info:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    .end local v14           #lastPeriodicTime:J
    .end local v16           #len$:I
    .end local v17           #nextPeriodicTime:J
    .end local v21           #periodicIndex:I
    .end local v23           #settings:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v24           #status:Landroid/content/SyncStatusInfo;
    .end local v25           #syncAdapterType:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    :catchall_0
    move-exception v28

    :try_start_1
    monitor-exit v29
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v28

    .line 1150
    .restart local v4       #account:Landroid/accounts/AccountAndUser;
    .restart local v7       #arr$:[Landroid/accounts/AccountAndUser;
    .restart local v16       #len$:I
    .restart local v23       #settings:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .restart local v24       #status:Landroid/content/SyncStatusInfo;
    .restart local v25       #syncAdapterType:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    :cond_a
    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    move/from16 v28, v0

    if-nez v28, :cond_b

    const-string/jumbo v28, "not syncable"

    goto/16 :goto_7

    :cond_b
    const-string/jumbo v28, "not initialized"

    goto/16 :goto_7

    .line 1153
    :cond_c
    const-string v28, "disabled"

    goto/16 :goto_8

    .line 1177
    .restart local v21       #periodicIndex:I
    :cond_d
    const-string v28, "      count: local="

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/SyncStatusInfo;->numSourceLocal:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1178
    const-string v28, " poll="

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/SyncStatusInfo;->numSourcePoll:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1179
    const-string v28, " periodic="

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/SyncStatusInfo;->numSourcePeriodic:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1180
    const-string v28, " server="

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/SyncStatusInfo;->numSourceServer:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1181
    const-string v28, " user="

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/SyncStatusInfo;->numSourceUser:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1182
    const-string v28, " total="

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/SyncStatusInfo;->numSyncs:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1183
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1184
    const-string v28, "      total duration: "

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1185
    move-object/from16 v0, v24

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->totalElapsedTime:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x3e8

    div-long v28, v28, v30

    invoke-static/range {v28 .. v29}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1186
    move-object/from16 v0, v24

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x0

    cmp-long v28, v28, v30

    if-eqz v28, :cond_e

    .line 1187
    const-string v28, "      SUCCESS: source="

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1188
    sget-object v28, Landroid/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    move/from16 v29, v0

    aget-object v28, v28, v29

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1189
    const-string v28, " time="

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1190
    move-object/from16 v0, v24

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Landroid/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1192
    :cond_e
    move-object/from16 v0, v24

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x0

    cmp-long v28, v28, v30

    if-eqz v28, :cond_6

    .line 1193
    const-string v28, "      FAILURE: source="

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1194
    sget-object v28, Landroid/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    move/from16 v29, v0

    aget-object v28, v28, v29

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1196
    const-string v28, " initialTime="

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1197
    move-object/from16 v0, v24

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Landroid/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1198
    const-string v28, " lastTime="

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1199
    move-object/from16 v0, v24

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Landroid/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1200
    const/16 v28, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo;->getLastFailureMesgAsInt(I)I

    move-result v10

    .line 1201
    .local v10, errCode:I
    const-string v28, "      message: "

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/content/SyncManager;->getLastFailureMessage(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " ("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ")"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1132
    .end local v10           #errCode:I
    .end local v21           #periodicIndex:I
    .end local v23           #settings:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v24           #status:Landroid/content/SyncStatusInfo;
    .end local v25           #syncAdapterType:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    :cond_f
    add-int/lit8 v11, v12, 0x1

    .local v11, i$:I
    move v12, v11

    .end local v11           #i$:I
    .restart local v12       #i$:I
    goto/16 :goto_5

    .line 1206
    .end local v4           #account:Landroid/accounts/AccountAndUser;
    :cond_10
    return-void
.end method

.method public getSyncAdapterTypes()[Landroid/content/SyncAdapterType;
    .locals 6

    .prologue
    .line 665
    iget-object v5, p0, Landroid/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-virtual {v5}, Landroid/content/SyncAdaptersCache;->getAllServices()Ljava/util/Collection;

    move-result-object v3

    .line 667
    .local v3, serviceInfos:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v5

    new-array v4, v5, [Landroid/content/SyncAdapterType;

    .line 668
    .local v4, types:[Landroid/content/SyncAdapterType;
    const/4 v0, 0x0

    .line 669
    .local v0, i:I
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 670
    .local v2, serviceInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    iget-object v5, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v5, Landroid/content/SyncAdapterType;

    aput-object v5, v4, v0

    .line 671
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 673
    .end local v2           #serviceInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    :cond_0
    return-object v4
.end method

.method public getSyncStorageEngine()Landroid/content/SyncStorageEngine;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    return-object v0
.end method

.method maybeRescheduleSync(Landroid/content/SyncResult;Landroid/content/SyncOperation;)V
    .locals 16
    .parameter "syncResult"
    .parameter "operation"

    .prologue
    .line 842
    const-string v1, "SyncManager"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    .line 843
    .local v14, isLoggable:Z
    if-eqz v14, :cond_0

    .line 844
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encountered error(s) during the sync: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :cond_0
    new-instance v15, Landroid/content/SyncOperation;

    move-object/from16 v0, p2

    invoke-direct {v15, v0}, Landroid/content/SyncOperation;-><init>(Landroid/content/SyncOperation;)V

    .line 852
    .end local p2
    .local v15, operation:Landroid/content/SyncOperation;
    iget-object v1, v15, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v2, "ignore_backoff"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 853
    iget-object v1, v15, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v2, "ignore_backoff"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 862
    :cond_1
    iget-object v1, v15, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v2, "do_not_retry"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 863
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not retrying sync operation because SYNC_EXTRAS_DO_NOT_RETRY was specified "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    :goto_0
    return-void

    .line 865
    :cond_2
    iget-object v1, v15, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "upload"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p1

    iget-boolean v1, v0, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-nez v1, :cond_3

    .line 867
    iget-object v1, v15, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "upload"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 868
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "retrying sync operation as a two-way sync because an upload-only sync encountered an error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/SyncManager;->scheduleSyncOperation(Landroid/content/SyncOperation;)V

    goto :goto_0

    .line 871
    :cond_3
    move-object/from16 v0, p1

    iget-boolean v1, v0, Landroid/content/SyncResult;->tooManyRetries:Z

    if-eqz v1, :cond_4

    .line 872
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not retrying sync operation because it retried too many times: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 874
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncResult;->madeSomeProgress()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 875
    if-eqz v14, :cond_5

    .line 876
    const-string v1, "SyncManager"

    const-string/jumbo v2, "retrying sync operation because even though it had an error it achieved some success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/SyncManager;->scheduleSyncOperation(Landroid/content/SyncOperation;)V

    goto :goto_0

    .line 880
    :cond_6
    move-object/from16 v0, p1

    iget-boolean v1, v0, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-eqz v1, :cond_8

    .line 881
    if-eqz v14, :cond_7

    .line 882
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "retrying sync operation that failed because there was already a sync in progress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :cond_7
    new-instance v1, Landroid/content/SyncOperation;

    iget-object v2, v15, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget v3, v15, Landroid/content/SyncOperation;->userId:I

    iget v4, v15, Landroid/content/SyncOperation;->syncSource:I

    iget-object v5, v15, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    iget-object v6, v15, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-wide/16 v7, 0x2710

    iget-object v9, v15, Landroid/content/SyncOperation;->backoff:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-wide v11, v15, Landroid/content/SyncOperation;->delayUntil:J

    iget-boolean v13, v15, Landroid/content/SyncOperation;->allowParallelSyncs:Z

    invoke-direct/range {v1 .. v13}, Landroid/content/SyncOperation;-><init>(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;JJJZ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/SyncManager;->scheduleSyncOperation(Landroid/content/SyncOperation;)V

    goto/16 :goto_0

    .line 890
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncResult;->hasSoftError()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 891
    if-eqz v14, :cond_9

    .line 892
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "retrying sync operation because it encountered a soft error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/SyncManager;->scheduleSyncOperation(Landroid/content/SyncOperation;)V

    goto/16 :goto_0

    .line 897
    :cond_a
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not retrying sync operation because the error is a hard error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 17
    .parameter "accounts"

    .prologue
    .line 243
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/content/SyncManager;->mAccounts:[Landroid/accounts/AccountAndUser;

    sget-object v2, Landroid/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

    if-ne v1, v2, :cond_1

    const/4 v14, 0x1

    .line 245
    .local v14, justBootedUp:Z
    :goto_0
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncManager;->getAllUsers()Ljava/util/List;

    move-result-object v16

    .line 246
    .local v16, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v16, :cond_2

    .line 296
    :cond_0
    :goto_1
    return-void

    .line 243
    .end local v14           #justBootedUp:Z
    .end local v16           #users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_1
    const/4 v14, 0x0

    goto :goto_0

    .line 248
    .restart local v14       #justBootedUp:Z
    .restart local v16       #users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    const/4 v11, 0x0

    .line 252
    .local v11, count:I
    invoke-static {}, Landroid/accounts/AccountManagerService;->getSingleton()Landroid/accounts/AccountManagerService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManagerService;->getAllAccounts()[Landroid/accounts/AccountAndUser;

    move-result-object v10

    .line 253
    .local v10, allAccounts:[Landroid/accounts/AccountAndUser;
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/UserInfo;

    .line 254
    .local v15, user:Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/content/SyncManager;->mBootCompleted:Z

    if-eqz v1, :cond_3

    .line 255
    invoke-static {}, Landroid/accounts/AccountManagerService;->getSingleton()Landroid/accounts/AccountManagerService;

    move-result-object v1

    iget v2, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManagerService;->getAccounts(I)[Landroid/accounts/Account;

    move-result-object v9

    .line 257
    .local v9, accountsForUser:[Landroid/accounts/Account;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    iget v2, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v9, v2}, Landroid/content/SyncStorageEngine;->doDatabaseCleanup([Landroid/accounts/Account;I)V

    goto :goto_2

    .line 261
    .end local v9           #accountsForUser:[Landroid/accounts/Account;
    .end local v15           #user:Landroid/content/pm/UserInfo;
    :cond_4
    move-object/from16 v0, p0

    iput-object v10, v0, Landroid/content/SyncManager;->mAccounts:[Landroid/accounts/AccountAndUser;

    .line 263
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_5
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/SyncManager$ActiveSyncContext;

    .line 264
    .local v12, currentSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    iget-object v1, v12, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    iget-object v1, v1, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v2, v12, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    iget v2, v2, Landroid/content/SyncOperation;->userId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v1, v2}, Landroid/content/SyncManager;->containsAccountAndUser([Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 267
    const-string v1, "SyncManager"

    const-string v2, "canceling sync since the account has been removed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v1}, Landroid/content/SyncManager;->sendSyncFinishedOrCanceledMessage(Landroid/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    goto :goto_3

    .line 275
    .end local v12           #currentSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    :cond_6
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncManager;->sendCheckAlarmsMessage()V

    .line 277
    array-length v1, v10

    if-lez v1, :cond_0

    .line 292
    move v8, v14

    .line 293
    .local v8, onlyThoseWithUnkownSyncableState:Z
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/content/SyncManager;->scheduleSync(Landroid/accounts/Account;ILjava/lang/String;Landroid/os/Bundle;JZ)V

    goto :goto_1
.end method

.method public scheduleLocalSync(Landroid/accounts/Account;ILjava/lang/String;)V
    .locals 8
    .parameter "account"
    .parameter "userId"
    .parameter "authority"

    .prologue
    .line 657
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 658
    .local v4, extras:Landroid/os/Bundle;
    const-string/jumbo v0, "upload"

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 659
    sget-wide v5, Landroid/content/SyncManager;->LOCAL_SYNC_DELAY:J

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Landroid/content/SyncManager;->scheduleSync(Landroid/accounts/Account;ILjava/lang/String;Landroid/os/Bundle;JZ)V

    .line 661
    return-void
.end method

.method public scheduleSync(Landroid/accounts/Account;ILjava/lang/String;Landroid/os/Bundle;JZ)V
    .locals 48
    .parameter "requestedAccount"
    .parameter "userId"
    .parameter "requestedAuthority"
    .parameter "extras"
    .parameter "delay"
    .parameter "onlyThoseWithUnkownSyncableState"

    .prologue
    .line 512
    const-string v2, "SyncManager"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v39

    .line 514
    .local v39, isLoggable:Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/content/SyncManager;->mBootCompleted:Z

    if-eqz v2, :cond_0

    invoke-direct/range {p0 .. p0}, Landroid/content/SyncManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_0
    const/16 v31, 0x1

    .line 517
    .local v31, backgroundDataUsageAllowed:Z
    :goto_0
    if-nez p4, :cond_1

    new-instance p4, Landroid/os/Bundle;

    .end local p4
    invoke-direct/range {p4 .. p4}, Landroid/os/Bundle;-><init>()V

    .line 519
    .restart local p4
    :cond_1
    const-string v2, "expedited"

    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    .line 520
    .local v33, expedited:Ljava/lang/Boolean;
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 521
    const-wide/16 p5, -0x1

    .line 525
    :cond_2
    if-eqz p1, :cond_6

    const/4 v2, -0x1

    move/from16 v0, p2

    if-eq v0, v2, :cond_6

    .line 526
    const/4 v2, 0x1

    new-array v0, v2, [Landroid/accounts/AccountAndUser;

    move-object/from16 v29, v0

    const/4 v2, 0x0

    new-instance v3, Landroid/accounts/AccountAndUser;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v3, v0, v1}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    aput-object v3, v29, v2

    .line 539
    .local v29, accounts:[Landroid/accounts/AccountAndUser;
    :cond_3
    const-string/jumbo v2, "upload"

    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v47

    .line 540
    .local v47, uploadOnly:Z
    const-string v2, "force"

    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v42

    .line 541
    .local v42, manualSync:Z
    if-eqz v42, :cond_4

    .line 542
    const-string v2, "ignore_backoff"

    const/4 v3, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 543
    const-string v2, "ignore_settings"

    const/4 v3, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 545
    :cond_4
    const-string v2, "ignore_settings"

    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v37

    .line 549
    .local v37, ignoreSettings:Z
    if-eqz v47, :cond_8

    .line 550
    const/4 v5, 0x1

    .line 563
    .local v5, source:I
    :goto_1
    new-instance v46, Ljava/util/HashSet;

    invoke-direct/range {v46 .. v46}, Ljava/util/HashSet;-><init>()V

    .line 565
    .local v46, syncableAuthorities:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-virtual {v2}, Landroid/content/SyncAdaptersCache;->getAllServices()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v35

    .local v35, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 566
    .local v43, syncAdapter:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    move-object/from16 v0, v43

    iget-object v2, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v2, Landroid/content/SyncAdapterType;

    iget-object v2, v2, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 514
    .end local v5           #source:I
    .end local v29           #accounts:[Landroid/accounts/AccountAndUser;
    .end local v31           #backgroundDataUsageAllowed:Z
    .end local v33           #expedited:Ljava/lang/Boolean;
    .end local v35           #i$:Ljava/util/Iterator;
    .end local v37           #ignoreSettings:Z
    .end local v42           #manualSync:Z
    .end local v43           #syncAdapter:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v46           #syncableAuthorities:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v47           #uploadOnly:Z
    :cond_5
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 530
    .restart local v31       #backgroundDataUsageAllowed:Z
    .restart local v33       #expedited:Ljava/lang/Boolean;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mAccounts:[Landroid/accounts/AccountAndUser;

    move-object/from16 v29, v0

    .line 531
    .restart local v29       #accounts:[Landroid/accounts/AccountAndUser;
    move-object/from16 v0, v29

    array-length v2, v0

    if-nez v2, :cond_3

    .line 532
    if-eqz v39, :cond_7

    .line 533
    const-string v2, "SyncManager"

    const-string/jumbo v3, "scheduleSync: no accounts configured, dropping"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_7
    return-void

    .line 551
    .restart local v37       #ignoreSettings:Z
    .restart local v42       #manualSync:Z
    .restart local v47       #uploadOnly:Z
    :cond_8
    if-eqz v42, :cond_9

    .line 552
    const/4 v5, 0x3

    .restart local v5       #source:I
    goto :goto_1

    .line 553
    .end local v5           #source:I
    :cond_9
    if-nez p3, :cond_a

    .line 554
    const/4 v5, 0x2

    .restart local v5       #source:I
    goto :goto_1

    .line 558
    .end local v5           #source:I
    :cond_a
    const/4 v5, 0x0

    .restart local v5       #source:I
    goto :goto_1

    .line 571
    .restart local v35       #i$:Ljava/util/Iterator;
    .restart local v46       #syncableAuthorities:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_b
    if-eqz p3, :cond_c

    .line 572
    move-object/from16 v0, v46

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v34

    .line 573
    .local v34, hasSyncAdapter:Z
    invoke-virtual/range {v46 .. v46}, Ljava/util/HashSet;->clear()V

    .line 574
    if-eqz v34, :cond_c

    move-object/from16 v0, v46

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 577
    .end local v34           #hasSyncAdapter:Z
    :cond_c
    invoke-virtual/range {v46 .. v46}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v35

    .end local v35           #i$:Ljava/util/Iterator;
    :cond_d
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 578
    .local v6, authority:Ljava/lang/String;
    move-object/from16 v30, v29

    .local v30, arr$:[Landroid/accounts/AccountAndUser;
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v41, v0

    .local v41, len$:I
    const/16 v36, 0x0

    .local v36, i$:I
    :goto_3
    move/from16 v0, v36

    move/from16 v1, v41

    if-ge v0, v1, :cond_d

    aget-object v28, v30, v36

    .line 579
    .local v28, account:Landroid/accounts/AccountAndUser;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object/from16 v0, v28

    iget-object v3, v0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object/from16 v0, v28

    iget v4, v0, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v2, v3, v4, v6}, Landroid/content/SyncStorageEngine;->getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I

    move-result v40

    .line 581
    .local v40, isSyncable:I
    if-nez v40, :cond_f

    .line 578
    :cond_e
    :goto_4
    add-int/lit8 v36, v36, 0x1

    goto :goto_3

    .line 584
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    move-object/from16 v0, v28

    iget-object v3, v0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v6, v3}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v44

    .line 587
    .local v44, syncAdapterInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    if-eqz v44, :cond_e

    .line 590
    move-object/from16 v0, v44

    iget-object v2, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v2, Landroid/content/SyncAdapterType;

    invoke-virtual {v2}, Landroid/content/SyncAdapterType;->allowParallelSyncs()Z

    move-result v14

    .line 591
    .local v14, allowParallelSyncs:Z
    move-object/from16 v0, v44

    iget-object v2, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v2, Landroid/content/SyncAdapterType;

    invoke-virtual {v2}, Landroid/content/SyncAdapterType;->isAlwaysSyncable()Z

    move-result v38

    .line 592
    .local v38, isAlwaysSyncable:Z
    if-gez v40, :cond_10

    if-eqz v38, :cond_10

    .line 593
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object/from16 v0, v28

    iget-object v3, v0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object/from16 v0, v28

    iget v4, v0, Landroid/accounts/AccountAndUser;->userId:I

    const/4 v8, 0x1

    invoke-virtual {v2, v3, v4, v6, v8}, Landroid/content/SyncStorageEngine;->setIsSyncable(Landroid/accounts/Account;ILjava/lang/String;I)V

    .line 594
    const/16 v40, 0x1

    .line 596
    :cond_10
    if-eqz p7, :cond_11

    if-gez v40, :cond_e

    .line 599
    :cond_11
    move-object/from16 v0, v44

    iget-object v2, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v2, Landroid/content/SyncAdapterType;

    invoke-virtual {v2}, Landroid/content/SyncAdapterType;->supportsUploading()Z

    move-result v2

    if-nez v2, :cond_12

    if-nez v47, :cond_e

    .line 604
    :cond_12
    if-ltz v40, :cond_13

    if-nez v37, :cond_13

    if-eqz v31, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object/from16 v0, v28

    iget v3, v0, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v2, v3}, Landroid/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    move-result v2

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object/from16 v0, v28

    iget-object v3, v0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object/from16 v0, v28

    iget v4, v0, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v2, v3, v4, v6}, Landroid/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_13
    const/16 v45, 0x1

    .line 611
    .local v45, syncAllowed:Z
    :goto_5
    if-nez v45, :cond_15

    .line 612
    if-eqz v39, :cond_e

    .line 613
    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scheduleSync: sync of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not allowed, dropping request"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 604
    .end local v45           #syncAllowed:Z
    :cond_14
    const/16 v45, 0x0

    goto :goto_5

    .line 619
    .restart local v45       #syncAllowed:Z
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object/from16 v0, v28

    iget-object v3, v0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object/from16 v0, v28

    iget v4, v0, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v2, v3, v4, v6}, Landroid/content/SyncStorageEngine;->getBackoff(Landroid/accounts/Account;ILjava/lang/String;)Landroid/util/Pair;

    move-result-object v32

    .line 621
    .local v32, backoff:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object/from16 v0, v28

    iget-object v3, v0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object/from16 v0, v28

    iget v4, v0, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v2, v3, v4, v6}, Landroid/content/SyncStorageEngine;->getDelayUntilTime(Landroid/accounts/Account;ILjava/lang/String;)J

    move-result-wide v12

    .line 623
    .local v12, delayUntil:J
    if-eqz v32, :cond_19

    move-object/from16 v0, v32

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 624
    .local v10, backoffTime:J
    :goto_6
    if-gez v40, :cond_17

    .line 625
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 626
    .local v7, newExtras:Landroid/os/Bundle;
    const-string v2, "initialize"

    const/4 v3, 0x1

    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 627
    if-eqz v39, :cond_16

    .line 628
    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scheduleSync: delay "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p5

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", source "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", account "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", authority "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", extras "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_16
    new-instance v2, Landroid/content/SyncOperation;

    move-object/from16 v0, v28

    iget-object v3, v0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object/from16 v0, v28

    iget v4, v0, Landroid/accounts/AccountAndUser;->userId:I

    const-wide/16 v8, 0x0

    invoke-direct/range {v2 .. v14}, Landroid/content/SyncOperation;-><init>(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;JJJZ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/SyncManager;->scheduleSyncOperation(Landroid/content/SyncOperation;)V

    .line 639
    .end local v7           #newExtras:Landroid/os/Bundle;
    :cond_17
    if-nez p7, :cond_e

    .line 640
    if-eqz v39, :cond_18

    .line 641
    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scheduleSync: delay "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p5

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", source "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", account "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", authority "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", extras "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_18
    new-instance v15, Landroid/content/SyncOperation;

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object/from16 v16, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/accounts/AccountAndUser;->userId:I

    move/from16 v17, v0

    move/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, p4

    move-wide/from16 v21, p5

    move-wide/from16 v23, v10

    move-wide/from16 v25, v12

    move/from16 v27, v14

    invoke-direct/range {v15 .. v27}, Landroid/content/SyncOperation;-><init>(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;JJJZ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/SyncManager;->scheduleSyncOperation(Landroid/content/SyncOperation;)V

    goto/16 :goto_4

    .line 623
    .end local v10           #backoffTime:J
    :cond_19
    const-wide/16 v10, 0x0

    goto/16 :goto_6
.end method

.method public scheduleSyncOperation(Landroid/content/SyncOperation;)V
    .locals 4
    .parameter "syncOperation"

    .prologue
    const/4 v3, 0x2

    .line 811
    iget-object v2, p0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    monitor-enter v2

    .line 812
    :try_start_0
    iget-object v1, p0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    invoke-virtual {v1, p1}, Landroid/content/SyncQueue;->add(Landroid/content/SyncOperation;)Z

    move-result v0

    .line 813
    .local v0, queueChanged:Z
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 815
    if-eqz v0, :cond_2

    .line 816
    const-string v1, "SyncManager"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 817
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scheduleSyncOperation: enqueued "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :cond_0
    invoke-direct {p0}, Landroid/content/SyncManager;->sendCheckAlarmsMessage()V

    .line 826
    :cond_1
    :goto_0
    return-void

    .line 813
    .end local v0           #queueChanged:Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 821
    .restart local v0       #queueChanged:Z
    :cond_2
    const-string v1, "SyncManager"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 822
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scheduleSyncOperation: dropping duplicate sync operation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
