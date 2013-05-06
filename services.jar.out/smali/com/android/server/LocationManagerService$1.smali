.class Lcom/android/server/LocationManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 2058
    iput-object p1, p0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 27
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2061
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 2062
    .local v3, action:Ljava/lang/String;
    const-string v23, "android.intent.action.QUERY_PACKAGE_RESTART"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 2063
    .local v15, queryRestart:Z
    if-nez v15, :cond_0

    const-string v23, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_0

    const-string v23, "android.intent.action.PACKAGE_RESTARTED"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_0

    const-string v23, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    .line 2067
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static/range {v23 .. v23}, Lcom/android/server/LocationManagerService;->access$300(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v24

    monitor-enter v24

    .line 2068
    const/16 v20, 0x0

    .line 2069
    .local v20, uidList:[I
    :try_start_0
    const-string v23, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 2070
    const-string v23, "android.intent.extra.changed_uid_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v20

    .line 2074
    :goto_0
    if-eqz v20, :cond_1

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v23, v0

    if-nez v23, :cond_4

    .line 2075
    :cond_1
    monitor-exit v24

    .line 2154
    .end local v20           #uidList:[I
    :cond_2
    :goto_1
    return-void

    .line 2072
    .restart local v20       #uidList:[I
    :cond_3
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v23, 0x0

    const-string v25, "android.intent.extra.UID"

    const/16 v26, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    aput v25, v21, v23

    .end local v20           #uidList:[I
    .local v21, uidList:[I
    move-object/from16 v20, v21

    .end local v21           #uidList:[I
    .restart local v20       #uidList:[I
    goto :goto_0

    .line 2077
    :cond_4
    move-object/from16 v4, v20

    .local v4, arr$:[I
    array-length v12, v4

    .local v12, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    move v9, v8

    .end local v8           #i$:I
    .local v9, i$:I
    :goto_2
    if-ge v9, v12, :cond_10

    aget v19, v4, v9

    .line 2078
    .local v19, uid:I
    if-ltz v19, :cond_f

    .line 2079
    const/16 v17, 0x0

    .line 2080
    .local v17, removedRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;
    invoke-static/range {v23 .. v23}, Lcom/android/server/LocationManagerService;->access$1400(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local v9           #i$:I
    .local v8, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 2081
    .local v7, i:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v23

    add-int/lit8 v11, v23, -0x1

    .local v11, j:I
    :goto_3
    if-ltz v11, :cond_5

    .line 2082
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2083
    .local v22, ur:Lcom/android/server/LocationManagerService$UpdateRecord;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/LocationManagerService$Receiver;->isPendingIntent()Z

    move-result v23

    if-eqz v23, :cond_8

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mUid:I

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 2084
    if-eqz v15, :cond_6

    .line 2085
    const/16 v23, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/LocationManagerService$1;->setResultCode(I)V

    .line 2086
    monitor-exit v24

    goto :goto_1

    .line 2124
    .end local v4           #arr$:[I
    .end local v7           #i:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v11           #j:I
    .end local v12           #len$:I
    .end local v17           #removedRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .end local v19           #uid:I
    .end local v22           #ur:Lcom/android/server/LocationManagerService$UpdateRecord;
    :catchall_0
    move-exception v23

    monitor-exit v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v23

    .line 2088
    .restart local v4       #arr$:[I
    .restart local v7       #i:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v11       #j:I
    .restart local v12       #len$:I
    .restart local v17       #removedRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .restart local v19       #uid:I
    .restart local v22       #ur:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_6
    if-nez v17, :cond_7

    .line 2089
    :try_start_1
    new-instance v17, Ljava/util/ArrayList;

    .end local v17           #removedRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 2091
    .restart local v17       #removedRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    :cond_7
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_8

    .line 2092
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2081
    :cond_8
    add-int/lit8 v11, v11, -0x1

    goto :goto_3

    .line 2097
    .end local v7           #i:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .end local v11           #j:I
    .end local v22           #ur:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_9
    const/16 v16, 0x0

    .line 2098
    .local v16, removedAlerts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$ProximityAlert;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/LocationManagerService;->mProximityAlerts:Ljava/util/HashMap;
    invoke-static/range {v23 .. v23}, Lcom/android/server/LocationManagerService;->access$1500(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_a
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/LocationManagerService$ProximityAlert;

    .line 2099
    .local v6, i:Lcom/android/server/LocationManagerService$ProximityAlert;
    iget v0, v6, Lcom/android/server/LocationManagerService$ProximityAlert;->mUid:I

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 2100
    if-eqz v15, :cond_b

    .line 2101
    const/16 v23, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/LocationManagerService$1;->setResultCode(I)V

    .line 2102
    monitor-exit v24

    goto/16 :goto_1

    .line 2104
    :cond_b
    if-nez v16, :cond_c

    .line 2105
    new-instance v16, Ljava/util/ArrayList;

    .end local v16           #removedAlerts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$ProximityAlert;>;"
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 2107
    .restart local v16       #removedAlerts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$ProximityAlert;>;"
    :cond_c
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_a

    .line 2108
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2112
    .end local v6           #i:Lcom/android/server/LocationManagerService$ProximityAlert;
    :cond_d
    if-eqz v17, :cond_e

    .line 2113
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v23

    add-int/lit8 v6, v23, -0x1

    .local v6, i:I
    :goto_5
    if-ltz v6, :cond_e

    .line 2114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/LocationManagerService$Receiver;

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    #calls: Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V
    invoke-static {v0, v1}, Lcom/android/server/LocationManagerService;->access$400(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$Receiver;)V

    .line 2113
    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    .line 2117
    .end local v6           #i:I
    :cond_e
    if-eqz v16, :cond_f

    .line 2118
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v23

    add-int/lit8 v6, v23, -0x1

    .restart local v6       #i:I
    :goto_6
    if-ltz v6, :cond_f

    .line 2119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/LocationManagerService$ProximityAlert;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/LocationManagerService$ProximityAlert;->mIntent:Landroid/app/PendingIntent;

    move-object/from16 v23, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    #calls: Lcom/android/server/LocationManagerService;->removeProximityAlertLocked(Landroid/app/PendingIntent;)V
    invoke-static {v0, v1}, Lcom/android/server/LocationManagerService;->access$1800(Lcom/android/server/LocationManagerService;Landroid/app/PendingIntent;)V

    .line 2118
    add-int/lit8 v6, v6, -0x1

    goto :goto_6

    .line 2077
    .end local v6           #i:I
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v16           #removedAlerts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$ProximityAlert;>;"
    .end local v17           #removedRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    :cond_f
    add-int/lit8 v8, v9, 0x1

    .local v8, i$:I
    move v9, v8

    .end local v8           #i$:I
    .restart local v9       #i$:I
    goto/16 :goto_2

    .line 2124
    .end local v19           #uid:I
    :cond_10
    monitor-exit v24
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 2125
    .end local v4           #arr$:[I
    .end local v9           #i$:I
    .end local v12           #len$:I
    .end local v20           #uidList:[I
    :cond_11
    const-string v23, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 2126
    const-string v23, "noConnectivity"

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    .line 2128
    .local v13, noConnectivity:Z
    if-nez v13, :cond_13

    .line 2129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    #setter for: Lcom/android/server/LocationManagerService;->mNetworkState:I
    invoke-static/range {v23 .. v24}, Lcom/android/server/LocationManagerService;->access$2602(Lcom/android/server/LocationManagerService;I)I

    .line 2134
    :goto_7
    const-string v23, "connectivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 2136
    .local v5, connManager:Landroid/net/ConnectivityManager;
    const-string v23, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v18

    check-cast v18, Landroid/net/NetworkInfo;

    .line 2142
    .local v18, retInfo:Landroid/net/NetworkInfo;
    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkInfo;->getType()I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v10

    .line 2145
    .local v10, info:Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static/range {v23 .. v23}, Lcom/android/server/LocationManagerService;->access$300(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v24

    monitor-enter v24

    .line 2146
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/android/server/LocationManagerService;->access$1900(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    add-int/lit8 v6, v23, -0x1

    .restart local v6       #i:I
    :goto_8
    if-ltz v6, :cond_14

    .line 2147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/android/server/LocationManagerService;->access$1900(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/location/LocationProviderInterface;

    .line 2148
    .local v14, provider:Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v14}, Lcom/android/server/location/LocationProviderInterface;->requiresNetwork()Z

    move-result v23

    if-eqz v23, :cond_12

    .line 2149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/LocationManagerService;->mNetworkState:I
    invoke-static/range {v23 .. v23}, Lcom/android/server/LocationManagerService;->access$2600(Lcom/android/server/LocationManagerService;)I

    move-result v23

    move/from16 v0, v23

    invoke-interface {v14, v0, v10}, Lcom/android/server/location/LocationProviderInterface;->updateNetworkState(ILandroid/net/NetworkInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2146
    :cond_12
    add-int/lit8 v6, v6, -0x1

    goto :goto_8

    .line 2131
    .end local v5           #connManager:Landroid/net/ConnectivityManager;
    .end local v6           #i:I
    .end local v10           #info:Landroid/net/NetworkInfo;
    .end local v14           #provider:Lcom/android/server/location/LocationProviderInterface;
    .end local v18           #retInfo:Landroid/net/NetworkInfo;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    #setter for: Lcom/android/server/LocationManagerService;->mNetworkState:I
    invoke-static/range {v23 .. v24}, Lcom/android/server/LocationManagerService;->access$2602(Lcom/android/server/LocationManagerService;I)I

    goto :goto_7

    .line 2152
    .restart local v5       #connManager:Landroid/net/ConnectivityManager;
    .restart local v6       #i:I
    .restart local v10       #info:Landroid/net/NetworkInfo;
    .restart local v18       #retInfo:Landroid/net/NetworkInfo;
    :cond_14
    :try_start_3
    monitor-exit v24

    goto/16 :goto_1

    .end local v6           #i:I
    :catchall_1
    move-exception v23

    monitor-exit v24
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v23
.end method
