.class public Lcom/android/internal/telephony/SonyQualcommRIL7x27a;
.super Lcom/android/internal/telephony/QualcommSharedRIL;
.source "SonyQualcommRIL7x27a.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# instance fields
.field RILJ_LOGD:Z

.field RILJ_LOGV:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .parameter "context"
    .parameter "networkMode"
    .parameter "cdmaSubscription"

    .prologue
    const/4 v0, 0x1

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/QualcommSharedRIL;-><init>(Landroid/content/Context;II)V

    .line 39
    iput-boolean v0, p0, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->RILJ_LOGV:Z

    .line 40
    iput-boolean v0, p0, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->RILJ_LOGD:Z

    .line 44
    return-void
.end method


# virtual methods
.method public changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "oldPin2"
    .parameter "newPin2"
    .parameter "result"

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 54
    return-void
.end method

.method public getCdmaSubscriptionSource(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 299
    const/16 v1, 0x68

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 302
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-boolean v1, p0, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->RILJ_LOGD:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->riljLog(Ljava/lang/String;)V

    .line 303
    :cond_0
    const-string v1, "RILJ"

    const-string v2, "RIL_REQUEST_CDMA_GET_SUBSCRIPTION_SOURCE blocked!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return-void
.end method

.method public getIMSI(Landroid/os/Message;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V

    .line 84
    return-void
.end method

.method public getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "aid"
    .parameter "result"

    .prologue
    .line 88
    const/16 v1, 0xb

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 90
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-boolean v1, p0, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->RILJ_LOGD:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> getIMSI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " aid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->riljLog(Ljava/lang/String;)V

    .line 97
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 98
    return-void
.end method

.method public iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 11
    .parameter "command"
    .parameter "fileid"
    .parameter "path"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 104
    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 105
    return-void
.end method

.method protected processSolicited(Landroid/os/Parcel;)V
    .locals 10
    .parameter "p"

    .prologue
    const/4 v9, 0x0

    .line 111
    const/4 v1, 0x0

    .line 113
    .local v1, found:Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 114
    .local v4, serial:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 118
    .local v0, error:I
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 120
    .local v3, rr:Lcom/android/internal/telephony/RILRequest;
    if-nez v3, :cond_0

    .line 121
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected solicited response! sn: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :goto_0
    return-void

    .line 126
    :cond_0
    const/4 v2, 0x0

    .line 128
    .local v2, ret:Ljava/lang/Object;
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v6

    if-lez v6, :cond_3

    .line 131
    :cond_1
    :try_start_0
    iget v6, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    packed-switch v6, :pswitch_data_0

    .line 247
    :pswitch_0
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized solicited response: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :catch_0
    move-exception v5

    .line 252
    .local v5, tr:Ljava/lang/Throwable;
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "< "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v8}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->requestToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " exception, possible invalid RIL response"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 256
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v6, :cond_2

    .line 257
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v6, v9, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 258
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 260
    :cond_2
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto :goto_0

    .line 137
    .end local v5           #tr:Ljava/lang/Throwable;
    :pswitch_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 265
    .end local v2           #ret:Ljava/lang/Object;
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 266
    invoke-virtual {v3, v0, v2}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 267
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto :goto_0

    .line 138
    .restart local v2       #ret:Ljava/lang/Object;
    :pswitch_2
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 139
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 140
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 141
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 142
    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 143
    :pswitch_7
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 144
    :pswitch_8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 145
    :pswitch_9
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 146
    :pswitch_a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 147
    :pswitch_b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 148
    :pswitch_c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 149
    :pswitch_d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 150
    :pswitch_e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 151
    :pswitch_f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 152
    :pswitch_10
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 153
    :pswitch_11
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 154
    :pswitch_12
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 155
    :pswitch_13
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 156
    :pswitch_14
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 157
    :pswitch_15
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 158
    :pswitch_16
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 159
    :pswitch_17
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 160
    :pswitch_18
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 161
    :pswitch_19
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 162
    :pswitch_1a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 163
    :pswitch_1b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseSetupDataCall(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 164
    :pswitch_1c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 165
    :pswitch_1d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 166
    :pswitch_1e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 167
    :pswitch_1f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 168
    :pswitch_20
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 169
    :pswitch_21
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseCallForward(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 170
    :pswitch_22
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 171
    :pswitch_23
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 172
    :pswitch_24
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 173
    :pswitch_25
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 174
    :pswitch_26
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 175
    :pswitch_27
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 176
    :pswitch_28
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 177
    :pswitch_29
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 178
    :pswitch_2a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 179
    :pswitch_2b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 180
    :pswitch_2c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 181
    :pswitch_2d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 182
    :pswitch_2e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 183
    :pswitch_2f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 184
    :pswitch_30
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseOperatorInfos(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 185
    :pswitch_31
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 186
    :pswitch_32
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 187
    :pswitch_33
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 188
    :pswitch_34
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 189
    :pswitch_35
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 190
    :pswitch_36
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 191
    :pswitch_37
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 192
    :pswitch_38
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 193
    :pswitch_39
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseDataCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 194
    :pswitch_3a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 195
    :pswitch_3b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 196
    :pswitch_3c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 197
    :pswitch_3d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 198
    :pswitch_3e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 199
    :pswitch_3f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 200
    :pswitch_40
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 201
    :pswitch_41
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 202
    :pswitch_42
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 203
    :pswitch_43
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 204
    :pswitch_44
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 205
    :pswitch_45
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 206
    :pswitch_46
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 207
    :pswitch_47
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 208
    :pswitch_48
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 209
    :pswitch_49
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 210
    :pswitch_4a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseGetPreferredNetworkType(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 211
    :pswitch_4b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseCellList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 212
    :pswitch_4c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 213
    :pswitch_4d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 214
    :pswitch_4e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 215
    :pswitch_4f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 216
    :pswitch_50
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 217
    :pswitch_51
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 218
    :pswitch_52
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 219
    :pswitch_53
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 220
    :pswitch_54
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 221
    :pswitch_55
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 222
    :pswitch_56
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 223
    :pswitch_57
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 224
    :pswitch_58
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseGmsBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 225
    :pswitch_59
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 226
    :pswitch_5a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 227
    :pswitch_5b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseCdmaBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 228
    :pswitch_5c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 229
    :pswitch_5d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 230
    :pswitch_5e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 231
    :pswitch_5f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 232
    :pswitch_60
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 233
    :pswitch_61
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 234
    :pswitch_62
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 235
    :pswitch_63
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 236
    :pswitch_64
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 237
    :pswitch_65
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 238
    :pswitch_66
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 239
    :pswitch_67
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 240
    :pswitch_68
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 241
    :pswitch_69
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 242
    :pswitch_6a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 243
    :pswitch_6b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 244
    :pswitch_6c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    goto/16 :goto_1

    .line 271
    .end local v2           #ret:Ljava/lang/Object;
    :cond_4
    iget-boolean v6, p0, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->RILJ_LOGD:Z

    if-eqz v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "< "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v7}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->requestToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {p0, v7, v2}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->riljLog(Ljava/lang/String;)V

    .line 274
    :cond_5
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v6, :cond_6

    .line 275
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v6, v2, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 276
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 279
    :cond_6
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto/16 :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_55
        :pswitch_5e
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_5f
        :pswitch_60
        :pswitch_61
        :pswitch_62
        :pswitch_65
        :pswitch_63
        :pswitch_64
        :pswitch_66
        :pswitch_67
        :pswitch_68
        :pswitch_0
        :pswitch_69
        :pswitch_6a
        :pswitch_6b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6c
    .end packed-switch
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .parameter "facility"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 70
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 71
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 7
    .parameter "facility"
    .parameter "lockState"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 77
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 78
    return-void
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "operatorNumeric"
    .parameter "response"

    .prologue
    .line 285
    const/16 v1, 0x2f

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 289
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-boolean v1, p0, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->RILJ_LOGD:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->riljLog(Ljava/lang/String;)V

    .line 292
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 295
    return-void
.end method

.method public supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "pin"
    .parameter "result"

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 49
    return-void
.end method

.method public supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "puk"
    .parameter "newPin"
    .parameter "result"

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 59
    return-void
.end method

.method public supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "puk2"
    .parameter "newPin2"
    .parameter "result"

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/SonyQualcommRIL7x27a;->supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 64
    return-void
.end method
