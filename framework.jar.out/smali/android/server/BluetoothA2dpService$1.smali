.class Landroid/server/BluetoothA2dpService$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothA2dpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothA2dpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothA2dpService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothA2dpService;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 32
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 122
    .local v5, action:Ljava/lang/String;
    const-string v28, "android.bluetooth.adapter.action.STATE_CHANGED"

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1

    .line 123
    const-string v28, "android.bluetooth.adapter.extra.STATE"

    const/high16 v29, -0x8000

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    .line 125
    .local v25, state:I
    packed-switch v25, :pswitch_data_0

    .line 388
    .end local v25           #state:I
    :cond_0
    :goto_0
    return-void

    .line 127
    .restart local v25       #state:I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    #calls: Landroid/server/BluetoothA2dpService;->onBluetoothEnable()V
    invoke-static/range {v28 .. v28}, Landroid/server/BluetoothA2dpService;->access$000(Landroid/server/BluetoothA2dpService;)V

    goto :goto_0

    .line 130
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    #calls: Landroid/server/BluetoothA2dpService;->onBluetoothDisable()V
    invoke-static/range {v28 .. v28}, Landroid/server/BluetoothA2dpService;->access$100(Landroid/server/BluetoothA2dpService;)V

    goto :goto_0

    .line 133
    .end local v25           #state:I
    :cond_1
    const-string v28, "android.bluetooth.device.action.ACL_DISCONNECTED"

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_3

    .line 134
    monitor-enter p0

    .line 135
    :try_start_0
    const-string v28, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/bluetooth/BluetoothDevice;

    .line 137
    .local v8, device:Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;
    invoke-static/range {v28 .. v28}, Landroid/server/BluetoothA2dpService;->access$200(Landroid/server/BluetoothA2dpService;)Ljava/util/HashMap;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;
    invoke-static/range {v28 .. v28}, Landroid/server/BluetoothA2dpService;->access$200(Landroid/server/BluetoothA2dpService;)Ljava/util/HashMap;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Integer;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v25

    .line 139
    .restart local v25       #state:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v25

    move/from16 v2, v29

    #calls: Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v8, v1, v2}, Landroid/server/BluetoothA2dpService;->access$300(Landroid/server/BluetoothA2dpService;Landroid/bluetooth/BluetoothDevice;II)V

    .line 141
    .end local v25           #state:I
    :cond_2
    monitor-exit p0

    goto :goto_0

    .end local v8           #device:Landroid/bluetooth/BluetoothDevice;
    :catchall_0
    move-exception v28

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v28

    .line 142
    :cond_3
    const-string v28, "android.media.VOLUME_CHANGED_ACTION"

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_5

    .line 143
    const-string v28, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/16 v29, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v26

    .line 144
    .local v26, streamType:I
    const/16 v28, 0x3

    move/from16 v0, v26

    move/from16 v1, v28

    if-ne v0, v1, :cond_0

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/server/BluetoothA2dpService;->getConnectedDevices()Ljava/util/List;

    move-result-object v24

    .line 147
    .local v24, sinks:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v28

    if-eqz v28, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v29, v0

    const/16 v28, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    #calls: Landroid/server/BluetoothA2dpService;->isPhoneDocked(Landroid/bluetooth/BluetoothDevice;)Z
    invoke-static {v0, v1}, Landroid/server/BluetoothA2dpService;->access$400(Landroid/server/BluetoothA2dpService;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v28

    if-eqz v28, :cond_0

    .line 148
    const/16 v28, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual/range {v28 .. v28}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 149
    .local v6, address:Ljava/lang/String;
    const-string v28, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    const/16 v29, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 151
    .local v17, newVolLevel:I
    const-string v28, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    const/16 v29, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 153
    .local v18, oldVolLevel:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static/range {v28 .. v28}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothService;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 154
    .local v19, path:Ljava/lang/String;
    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_4

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    #calls: Landroid/server/BluetoothA2dpService;->avrcpVolumeUpNative(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Landroid/server/BluetoothA2dpService;->access$600(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 156
    :cond_4
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    #calls: Landroid/server/BluetoothA2dpService;->avrcpVolumeDownNative(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Landroid/server/BluetoothA2dpService;->access$700(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 161
    .end local v6           #address:Ljava/lang/String;
    .end local v17           #newVolLevel:I
    .end local v18           #oldVolLevel:I
    .end local v19           #path:Ljava/lang/String;
    .end local v24           #sinks:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v26           #streamType:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    #getter for: Landroid/server/BluetoothA2dpService;->metachanged_intents:Ljava/util/List;
    invoke-static/range {v28 .. v28}, Landroid/server/BluetoothA2dpService;->access$800(Landroid/server/BluetoothA2dpService;)Ljava/util/List;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_15

    .line 164
    :try_start_1
    const-string v28, "BluetoothA2dpService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "action: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    .line 168
    .local v12, extras:Landroid/os/Bundle;
    if-eqz v12, :cond_7

    .line 169
    invoke-virtual {v12}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v16

    .line 170
    .local v16, ks:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 171
    .local v14, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_6
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_7

    .line 172
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 173
    .local v15, key:Ljava/lang/String;
    invoke-virtual {v12, v15}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    .line 174
    .local v27, value:Ljava/lang/Object;
    if-eqz v27, :cond_6

    .line 175
    const-string v28, "BluetoothA2dpService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ": "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 257
    .end local v12           #extras:Landroid/os/Bundle;
    .end local v14           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v15           #key:Ljava/lang/String;
    .end local v16           #ks:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v27           #value:Ljava/lang/Object;
    :catch_0
    move-exception v9

    .line 258
    .local v9, e:Ljava/lang/Exception;
    const-string v28, "BluetoothA2dpService"

    const-string v29, "Error getting metadata from intent"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 181
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v12       #extras:Landroid/os/Bundle;
    :cond_7
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    #getter for: Landroid/server/BluetoothA2dpService;->has_special_extra_keys:Ljava/util/List;
    invoke-static/range {v28 .. v28}, Landroid/server/BluetoothA2dpService;->access$900(Landroid/server/BluetoothA2dpService;)Ljava/util/List;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_13

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    #getter for: Landroid/server/BluetoothA2dpService;->special_extra_keys:Ljava/util/HashMap;
    invoke-static/range {v28 .. v28}, Landroid/server/BluetoothA2dpService;->access$1000(Landroid/server/BluetoothA2dpService;)Ljava/util/HashMap;

    move-result-object v28

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "_track"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_f

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    #getter for: Landroid/server/BluetoothA2dpService;->special_extra_keys:Ljava/util/HashMap;
    invoke-static/range {v28 .. v28}, Landroid/server/BluetoothA2dpService;->access$1000(Landroid/server/BluetoothA2dpService;)Ljava/util/HashMap;

    move-result-object v28

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "_track"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    #setter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/server/BluetoothA2dpService;->access$1102(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 189
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    #getter for: Landroid/server/BluetoothA2dpService;->special_extra_keys:Ljava/util/HashMap;
    invoke-static/range {v28 .. v28}, Landroid/server/BluetoothA2dpService;->access$1000(Landroid/server/BluetoothA2dpService;)Ljava/util/HashMap;

    move-result-object v28

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "_artist"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_10

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    #getter for: Landroid/server/BluetoothA2dpService;->special_extra_keys:Ljava/util/HashMap;
    invoke-static/range {v28 .. v28}, Landroid/server/BluetoothA2dpService;->access$1000(Landroid/server/BluetoothA2dpService;)Ljava/util/HashMap;

    move-result-object v28

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "_artist"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    #setter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/server/BluetoothA2dpService;->access$1202(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 196
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    #getter for: Landroid/server/BluetoothA2dpService;->special_extra_keys:Ljava/util/HashMap;
    invoke-static/range {v28 .. v28}, Landroid/server/BluetoothA2dpService;->access$1000(Landroid/server/BluetoothA2dpService;)Ljava/util/HashMap;

    move-result-object v28

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "_album"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_11

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    #getter for: Landroid/server/BluetoothA2dpService;->special_extra_keys:Ljava/util/HashMap;
    invoke-static/range {v28 .. v28}, Landroid/server/BluetoothA2dpService;->access$1000(Landroid/server/BluetoothA2dpService;)Ljava/util/HashMap;

    move-result-object v28

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "_album"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    #setter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/server/BluetoothA2dpService;->access$1302(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 204
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    #getter for: Landroid/server/BluetoothA2dpService;->special_extra_keys:Ljava/util/HashMap;
    invoke-static/range {v28 .. v28}, Landroid/server/BluetoothA2dpService;->access$1000(Landroid/server/BluetoothA2dpService;)Ljava/util/HashMap;

    move-result-object v28

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "_id"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_12

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    #getter for: Landroid/server/BluetoothA2dpService;->special_extra_keys:Ljava/util/HashMap;
    invoke-static/range {v28 .. v28}, Landroid/server/BluetoothA2dpService;->access$1000(Landroid/server/BluetoothA2dpService;)Ljava/util/HashMap;

    move-result-object v28

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "_id"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    const-wide/16 v29, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move-wide/from16 v2, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 210
    .local v10, extra:J
    :goto_5
    const-wide/16 v28, 0x0

    cmp-long v28, v10, v28

    if-gez v28, :cond_8

    .line 211
    const-wide/16 v10, 0x0

    .line 212
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v29

    #setter for: Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;
    invoke-static/range {v28 .. v29}, Landroid/server/BluetoothA2dpService;->access$1402(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 224
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Landroid/server/BluetoothA2dpService;->access$1100(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v28

    if-nez v28, :cond_9

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    const-string v29, "Unknown"

    #setter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static/range {v28 .. v29}, Landroid/server/BluetoothA2dpService;->access$1102(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 226
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Landroid/server/BluetoothA2dpService;->access$1200(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v28

    if-nez v28, :cond_a

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    const-string v29, "Unknown"

    #setter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static/range {v28 .. v29}, Landroid/server/BluetoothA2dpService;->access$1202(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 228
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Landroid/server/BluetoothA2dpService;->access$1300(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v28

    if-nez v28, :cond_b

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    const-string v29, "Unknown"

    #setter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static/range {v28 .. v29}, Landroid/server/BluetoothA2dpService;->access$1302(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 231
    :cond_b
    const-string v28, "ListSize"

    const-wide/16 v29, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move-wide/from16 v2, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 232
    const-wide/16 v28, 0x0

    cmp-long v28, v10, v28

    if-gez v28, :cond_c

    .line 233
    const-wide/16 v10, 0x0

    .line 234
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v29

    #setter for: Landroid/server/BluetoothA2dpService;->mMediaCount:Ljava/lang/String;
    invoke-static/range {v28 .. v29}, Landroid/server/BluetoothA2dpService;->access$1502(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 236
    const-string v28, "duration"

    const-wide/16 v29, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move-wide/from16 v2, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 237
    const-wide/16 v28, 0x0

    cmp-long v28, v10, v28

    if-gez v28, :cond_d

    .line 238
    const-wide/16 v10, 0x0

    .line 239
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v29

    #setter for: Landroid/server/BluetoothA2dpService;->mDuration:Ljava/lang/String;
    invoke-static/range {v28 .. v29}, Landroid/server/BluetoothA2dpService;->access$1602(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 240
    const-string/jumbo v28, "position"

    const-wide/16 v29, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move-wide/from16 v2, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 241
    const-wide/16 v28, 0x0

    cmp-long v28, v10, v28

    if-gez v28, :cond_e

    .line 242
    const-wide/16 v10, 0x0

    .line 243
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    #setter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static {v0, v10, v11}, Landroid/server/BluetoothA2dpService;->access$1702(Landroid/server/BluetoothA2dpService;J)J

    .line 245
    const-string v28, "BluetoothA2dpService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Meta changed "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v30, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayStatus:I
    invoke-static/range {v30 .. v30}, Landroid/server/BluetoothA2dpService;->access$1800(Landroid/server/BluetoothA2dpService;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const-string v28, "BluetoothA2dpService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "player: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const-string v28, "BluetoothA2dpService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "trackname: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v30, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Landroid/server/BluetoothA2dpService;->access$1100(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " artist: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v30, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Landroid/server/BluetoothA2dpService;->access$1200(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const-string v28, "BluetoothA2dpService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "album: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v30, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Landroid/server/BluetoothA2dpService;->access$1300(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const-string v28, "BluetoothA2dpService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "medianumber: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v30, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Landroid/server/BluetoothA2dpService;->access$1400(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " mediacount "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v30, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mMediaCount:Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Landroid/server/BluetoothA2dpService;->access$1500(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const-string v28, "BluetoothA2dpService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "postion "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v30, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static/range {v30 .. v30}, Landroid/server/BluetoothA2dpService;->access$1700(Landroid/server/BluetoothA2dpService;)J

    move-result-wide v30

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " duration "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v30, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mDuration:Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Landroid/server/BluetoothA2dpService;->access$1600(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/server/BluetoothA2dpService;->getConnectedSinksPaths()Ljava/util/List;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 253
    .restart local v19       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    #calls: Landroid/server/BluetoothA2dpService;->sendMetaData(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/server/BluetoothA2dpService;->access$1900(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v30, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Landroid/server/BluetoothA2dpService;->access$1400(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    move/from16 v2, v29

    move-wide/from16 v3, v30

    #calls: Landroid/server/BluetoothA2dpService;->sendEvent(Ljava/lang/String;IJ)V
    invoke-static {v0, v1, v2, v3, v4}, Landroid/server/BluetoothA2dpService;->access$2000(Landroid/server/BluetoothA2dpService;Ljava/lang/String;IJ)V

    goto :goto_7

    .line 186
    .end local v10           #extra:J
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v19           #path:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    const-string/jumbo v29, "track"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    #setter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static/range {v28 .. v29}, Landroid/server/BluetoothA2dpService;->access$1102(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_2

    .line 193
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    const-string v29, "artist"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    #setter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static/range {v28 .. v29}, Landroid/server/BluetoothA2dpService;->access$1202(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_3

    .line 200
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    const-string v29, "album"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    #setter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static/range {v28 .. v29}, Landroid/server/BluetoothA2dpService;->access$1302(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_4

    .line 208
    :cond_12
    const-string v28, "id"

    const-wide/16 v29, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move-wide/from16 v2, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .restart local v10       #extra:J
    goto/16 :goto_5

    .line 215
    .end local v10           #extra:J
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    const-string/jumbo v29, "track"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    #setter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static/range {v28 .. v29}, Landroid/server/BluetoothA2dpService;->access$1102(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    const-string v29, "artist"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    #setter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static/range {v28 .. v29}, Landroid/server/BluetoothA2dpService;->access$1202(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    const-string v29, "album"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    #setter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static/range {v28 .. v29}, Landroid/server/BluetoothA2dpService;->access$1302(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 218
    const-string v28, "id"

    const-wide/16 v29, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move-wide/from16 v2, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 219
    .restart local v10       #extra:J
    const-wide/16 v28, 0x0

    cmp-long v28, v10, v28

    if-gez v28, :cond_14

    .line 220
    const-wide/16 v10, 0x0

    .line 221
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v29

    #setter for: Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;
    invoke-static/range {v28 .. v29}, Landroid/server/BluetoothA2dpService;->access$1402(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_6

    .line 260
    .end local v10           #extra:J
    .end local v12           #extras:Landroid/os/Bundle;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    #getter for: Landroid/server/BluetoothA2dpService;->playstatechanged_intents:Ljava/util/List;
    invoke-static/range {v28 .. v28}, Landroid/server/BluetoothA2dpService;->access$2100(Landroid/server/BluetoothA2dpService;)Ljava/util/List;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_0

    .line 263
    :try_start_3
    const-string v28, "BluetoothA2dpService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "action: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    .line 267
    .restart local v12       #extras:Landroid/os/Bundle;
    if-eqz v12, :cond_17

    .line 268
    invoke-virtual {v12}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v16

    .line 269
    .restart local v16       #ks:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 270
    .restart local v14       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_16
    :goto_8
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_17

    .line 271
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 272
    .restart local v15       #key:Ljava/lang/String;
    invoke-virtual {v12, v15}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    .line 273
    .restart local v27       #value:Ljava/lang/Object;
    if-eqz v27, :cond_16

    .line 274
    const-string v28, "BluetoothA2dpService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ": "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_8

    .line 384
    .end local v12           #extras:Landroid/os/Bundle;
    .end local v14           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v15           #key:Ljava/lang/String;
    .end local v16           #ks:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v27           #value:Ljava/lang/Object;
    :catch_1
    move-exception v9

    .line 385
    .restart local v9       #e:Ljava/lang/Exception;
    const-string v28, "BluetoothA2dpService"

    const-string v29, "Error getting playstate from intent"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 281
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v12       #extras:Landroid/os/Bundle;
    :cond_17
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    #getter for: Landroid/server/BluetoothA2dpService;->has_special_extra_keys:Ljava/util/List;
    invoke-static/range {v28 .. v28}, Landroid/server/BluetoothA2dpService;->access$900(Landroid/server/BluetoothA2dpService;)Ljava/util/List;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_20

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    #getter for: Landroid/server/BluetoothA2dpService;->special_extra_keys:Ljava/util/HashMap;
    invoke-static/range {v28 .. v28}, Landroid/server/BluetoothA2dpService;->access$1000(Landroid/server/BluetoothA2dpService;)Ljava/util/HashMap;

    move-result-object v28

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "_track"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1f

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    #getter for: Landroid/server/BluetoothA2dpService;->special_extra_keys:Ljava/util/HashMap;
    invoke-static/range {v28 .. v28}, Landroid/server/BluetoothA2dpService;->access$1000(Landroid/server/BluetoothA2dpService;)Ljava/util/HashMap;

    move-result-object v28

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "_track"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 288
    .local v7, currentTrackName:Ljava/lang/String;
    :goto_9
    if-nez v7, :cond_18

    .line 289
    const-string v7, "Unknown"

    .line 296
    :cond_18
    :goto_a
    const-string v28, "Unknown"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Landroid/server/BluetoothA2dpService;->access$1100(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_26

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    #setter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static {v0, v7}, Landroid/server/BluetoothA2dpService;->access$1102(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    #getter for: Landroid/server/BluetoothA2dpService;->has_special_extra_keys:Ljava/util/List;
    invoke-static/range {v28 .. v28}, Landroid/server/BluetoothA2dpService;->access$900(Landroid/server/BluetoothA2dpService;)Ljava/util/List;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_24

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    #getter for: Landroid/server/BluetoothA2dpService;->special_extra_keys:Ljava/util/HashMap;
    invoke-static/range {v28 .. v28}, Landroid/server/BluetoothA2dpService;->access$1000(Landroid/server/BluetoothA2dpService;)Ljava/util/HashMap;

    move-result-object v28

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "_artist"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_21

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    #getter for: Landroid/server/BluetoothA2dpService;->special_extra_keys:Ljava/util/HashMap;
    invoke-static/range {v28 .. v28}, Landroid/server/BluetoothA2dpService;->access$1000(Landroid/server/BluetoothA2dpService;)Ljava/util/HashMap;

    move-result-object v28

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "_artist"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    #setter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/server/BluetoothA2dpService;->access$1202(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 307
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    #getter for: Landroid/server/BluetoothA2dpService;->special_extra_keys:Ljava/util/HashMap;
    invoke-static/range {v28 .. v28}, Landroid/server/BluetoothA2dpService;->access$1000(Landroid/server/BluetoothA2dpService;)Ljava/util/HashMap;

    move-result-object v28

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "_album"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_22

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    #getter for: Landroid/server/BluetoothA2dpService;->special_extra_keys:Ljava/util/HashMap;
    invoke-static/range {v28 .. v28}, Landroid/server/BluetoothA2dpService;->access$1000(Landroid/server/BluetoothA2dpService;)Ljava/util/HashMap;

    move-result-object v28

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "_album"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    #setter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/server/BluetoothA2dpService;->access$1302(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 315
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    #getter for: Landroid/server/BluetoothA2dpService;->special_extra_keys:Ljava/util/HashMap;
    invoke-static/range {v28 .. v28}, Landroid/server/BluetoothA2dpService;->access$1000(Landroid/server/BluetoothA2dpService;)Ljava/util/HashMap;

    move-result-object v28

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "_id"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_23

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    #getter for: Landroid/server/BluetoothA2dpService;->special_extra_keys:Ljava/util/HashMap;
    invoke-static/range {v28 .. v28}, Landroid/server/BluetoothA2dpService;->access$1000(Landroid/server/BluetoothA2dpService;)Ljava/util/HashMap;

    move-result-object v28

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "_id"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    const-wide/16 v29, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move-wide/from16 v2, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 321
    .restart local v10       #extra:J
    :goto_d
    const-wide/16 v28, 0x0

    cmp-long v28, v10, v28

    if-gez v28, :cond_19

    .line 322
    const-wide/16 v10, 0x0

    .line 323
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v29

    #setter for: Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;
    invoke-static/range {v28 .. v29}, Landroid/server/BluetoothA2dpService;->access$1402(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 334
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Landroid/server/BluetoothA2dpService;->access$1200(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v28

    if-nez v28, :cond_1a

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    const-string v29, "Unknown"

    #setter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static/range {v28 .. v29}, Landroid/server/BluetoothA2dpService;->access$1202(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 336
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Landroid/server/BluetoothA2dpService;->access$1300(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v28

    if-nez v28, :cond_1b

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    const-string v29, "Unknown"

    #setter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static/range {v28 .. v29}, Landroid/server/BluetoothA2dpService;->access$1302(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 339
    :cond_1b
    const-string v28, "ListSize"

    const-wide/16 v29, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move-wide/from16 v2, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 340
    const-wide/16 v28, 0x0

    cmp-long v28, v10, v28

    if-gez v28, :cond_1c

    .line 341
    const-wide/16 v10, 0x0

    .line 342
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v29

    #setter for: Landroid/server/BluetoothA2dpService;->mMediaCount:Ljava/lang/String;
    invoke-static/range {v28 .. v29}, Landroid/server/BluetoothA2dpService;->access$1502(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 343
    const-string v28, "duration"

    const-wide/16 v29, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move-wide/from16 v2, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 344
    const-wide/16 v28, 0x0

    cmp-long v28, v10, v28

    if-gez v28, :cond_1d

    .line 345
    const-wide/16 v10, 0x0

    .line 346
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v29

    #setter for: Landroid/server/BluetoothA2dpService;->mDuration:Ljava/lang/String;
    invoke-static/range {v28 .. v29}, Landroid/server/BluetoothA2dpService;->access$1602(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 347
    const-string/jumbo v28, "position"

    const-wide/16 v29, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move-wide/from16 v2, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 348
    const-wide/16 v28, 0x0

    cmp-long v28, v10, v28

    if-gez v28, :cond_1e

    .line 349
    const-wide/16 v10, 0x0

    .line 350
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    #setter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static {v0, v10, v11}, Landroid/server/BluetoothA2dpService;->access$1702(Landroid/server/BluetoothA2dpService;J)J

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/server/BluetoothA2dpService;->getConnectedSinksPaths()Ljava/util/List;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13       #i$:Ljava/util/Iterator;
    :goto_f
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_26

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 352
    .restart local v19       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    #calls: Landroid/server/BluetoothA2dpService;->sendMetaData(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/server/BluetoothA2dpService;->access$1900(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)V

    goto :goto_f

    .line 286
    .end local v7           #currentTrackName:Ljava/lang/String;
    .end local v10           #extra:J
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v19           #path:Ljava/lang/String;
    :cond_1f
    const-string/jumbo v28, "track"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #currentTrackName:Ljava/lang/String;
    goto/16 :goto_9

    .line 292
    .end local v7           #currentTrackName:Ljava/lang/String;
    :cond_20
    const-string/jumbo v28, "track"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 293
    .restart local v7       #currentTrackName:Ljava/lang/String;
    if-nez v7, :cond_18

    .line 294
    const-string v7, "Unknown"

    goto/16 :goto_a

    .line 304
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    const-string v29, "artist"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    #setter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static/range {v28 .. v29}, Landroid/server/BluetoothA2dpService;->access$1202(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_b

    .line 311
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    const-string v29, "album"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    #setter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static/range {v28 .. v29}, Landroid/server/BluetoothA2dpService;->access$1302(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_c

    .line 319
    :cond_23
    const-string v28, "id"

    const-wide/16 v29, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move-wide/from16 v2, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .restart local v10       #extra:J
    goto/16 :goto_d

    .line 326
    .end local v10           #extra:J
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    const-string v29, "artist"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    #setter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static/range {v28 .. v29}, Landroid/server/BluetoothA2dpService;->access$1202(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    const-string v29, "album"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    #setter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static/range {v28 .. v29}, Landroid/server/BluetoothA2dpService;->access$1302(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 328
    const-string v28, "id"

    const-wide/16 v29, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move-wide/from16 v2, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 329
    .restart local v10       #extra:J
    const-wide/16 v28, 0x0

    cmp-long v28, v10, v28

    if-gez v28, :cond_25

    .line 330
    const-wide/16 v10, 0x0

    .line 331
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v29

    #setter for: Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;
    invoke-static/range {v28 .. v29}, Landroid/server/BluetoothA2dpService;->access$1402(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_e

    .line 354
    .end local v10           #extra:J
    :cond_26
    const-string/jumbo v28, "playing"

    const/16 v29, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    .line 355
    .local v21, playStatusPlaying:Z
    const-string/jumbo v28, "playstate"

    const/16 v29, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v22

    .line 358
    .local v22, playStatusPlaystate:Z
    const-string/jumbo v28, "state"

    const/16 v29, 0x2

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    .line 360
    .restart local v25       #state:I
    if-eqz v25, :cond_27

    const/16 v28, 0x1

    move/from16 v0, v25

    move/from16 v1, v28

    if-ne v0, v1, :cond_2a

    .line 361
    :cond_27
    const/16 v23, 0x1

    .line 365
    .local v23, playStatusState:Z
    :goto_10
    if-nez v21, :cond_28

    if-nez v22, :cond_28

    if-eqz v23, :cond_2b

    :cond_28
    const/16 v20, 0x1

    .line 367
    .local v20, playStatus:Z
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    const-string/jumbo v29, "position"

    const-wide/16 v30, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v29

    #setter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static/range {v28 .. v30}, Landroid/server/BluetoothA2dpService;->access$1702(Landroid/server/BluetoothA2dpService;J)J

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static/range {v28 .. v28}, Landroid/server/BluetoothA2dpService;->access$1700(Landroid/server/BluetoothA2dpService;)J

    move-result-wide v28

    const-wide/16 v30, 0x0

    cmp-long v28, v28, v30

    if-gez v28, :cond_29

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    const-wide/16 v29, 0x0

    #setter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static/range {v28 .. v30}, Landroid/server/BluetoothA2dpService;->access$1702(Landroid/server/BluetoothA2dpService;J)J

    .line 370
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v30, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static/range {v30 .. v30}, Landroid/server/BluetoothA2dpService;->access$1700(Landroid/server/BluetoothA2dpService;)J

    move-result-wide v30

    move-object/from16 v0, v29

    move/from16 v1, v20

    move-wide/from16 v2, v30

    #calls: Landroid/server/BluetoothA2dpService;->convertedPlayStatus(ZJ)I
    invoke-static {v0, v1, v2, v3}, Landroid/server/BluetoothA2dpService;->access$2200(Landroid/server/BluetoothA2dpService;ZJ)I

    move-result v29

    #setter for: Landroid/server/BluetoothA2dpService;->mPlayStatus:I
    invoke-static/range {v28 .. v29}, Landroid/server/BluetoothA2dpService;->access$1802(Landroid/server/BluetoothA2dpService;I)I

    .line 372
    const-string v28, "BluetoothA2dpService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "PlayState changed "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v30, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayStatus:I
    invoke-static/range {v30 .. v30}, Landroid/server/BluetoothA2dpService;->access$1800(Landroid/server/BluetoothA2dpService;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const-string v28, "BluetoothA2dpService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "player: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const-string v28, "BluetoothA2dpService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "trackname: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v30, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Landroid/server/BluetoothA2dpService;->access$1100(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " artist: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v30, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Landroid/server/BluetoothA2dpService;->access$1200(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const-string v28, "BluetoothA2dpService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "album: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v30, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Landroid/server/BluetoothA2dpService;->access$1300(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const-string v28, "BluetoothA2dpService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "medianumber: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v30, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Landroid/server/BluetoothA2dpService;->access$1400(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " mediacount "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v30, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mMediaCount:Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Landroid/server/BluetoothA2dpService;->access$1500(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const-string v28, "BluetoothA2dpService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "postion "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v30, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static/range {v30 .. v30}, Landroid/server/BluetoothA2dpService;->access$1700(Landroid/server/BluetoothA2dpService;)J

    move-result-wide v30

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " duration "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v30, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mDuration:Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Landroid/server/BluetoothA2dpService;->access$1600(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/server/BluetoothA2dpService;->getConnectedSinksPaths()Ljava/util/List;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13       #i$:Ljava/util/Iterator;
    :goto_12
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 381
    .restart local v19       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v30, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayStatus:I
    invoke-static/range {v30 .. v30}, Landroid/server/BluetoothA2dpService;->access$1800(Landroid/server/BluetoothA2dpService;)I

    move-result v30

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    move/from16 v2, v29

    move-wide/from16 v3, v30

    #calls: Landroid/server/BluetoothA2dpService;->sendEvent(Ljava/lang/String;IJ)V
    invoke-static {v0, v1, v2, v3, v4}, Landroid/server/BluetoothA2dpService;->access$2000(Landroid/server/BluetoothA2dpService;Ljava/lang/String;IJ)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_12

    .line 363
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v19           #path:Ljava/lang/String;
    .end local v20           #playStatus:Z
    .end local v23           #playStatusState:Z
    :cond_2a
    const/16 v23, 0x0

    .restart local v23       #playStatusState:Z
    goto/16 :goto_10

    .line 365
    :cond_2b
    const/16 v20, 0x0

    goto/16 :goto_11

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
