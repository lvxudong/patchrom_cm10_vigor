.class public Lcom/android/internal/telephony/SonyQualcommRIL;
.super Lcom/android/internal/telephony/QualcommSharedRIL;
.source "SonyQualcommRIL.java"

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
    iput-boolean v0, p0, Lcom/android/internal/telephony/SonyQualcommRIL;->RILJ_LOGV:Z

    .line 40
    iput-boolean v0, p0, Lcom/android/internal/telephony/SonyQualcommRIL;->RILJ_LOGD:Z

    .line 44
    return-void
.end method


# virtual methods
.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 3
    .parameter "address"
    .parameter "clirMode"
    .parameter "uusInfo"
    .parameter "result"

    .prologue
    .line 224
    const/16 v1, 0xa

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 226
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    if-nez p3, :cond_1

    .line 230
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    :goto_0
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget-boolean v1, p0, Lcom/android/internal/telephony/SonyQualcommRIL;->RILJ_LOGD:Z

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

    invoke-static {v2}, Lcom/android/internal/telephony/SonyQualcommRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SonyQualcommRIL;->riljLog(Ljava/lang/String;)V

    .line 241
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SonyQualcommRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 242
    return-void

    .line 232
    :cond_1
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0
.end method

.method public getCdmaSubscriptionSource(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 273
    const/16 v1, 0x68

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 276
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-boolean v1, p0, Lcom/android/internal/telephony/SonyQualcommRIL;->RILJ_LOGD:Z

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

    invoke-static {v2}, Lcom/android/internal/telephony/SonyQualcommRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SonyQualcommRIL;->riljLog(Ljava/lang/String;)V

    .line 277
    :cond_0
    const-string v1, "RILJ"

    const-string v2, "RIL_REQUEST_CDMA_GET_SUBSCRIPTION_SOURCE blocked!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    return-void
.end method

.method protected processSolicited(Landroid/os/Parcel;)V
    .locals 10
    .parameter "p"

    .prologue
    const/4 v9, 0x0

    .line 50
    const/4 v1, 0x0

    .line 52
    .local v1, found:Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 53
    .local v4, serial:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 57
    .local v0, error:I
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SonyQualcommRIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 59
    .local v3, rr:Lcom/android/internal/telephony/RILRequest;
    if-nez v3, :cond_0

    .line 60
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

    .line 219
    :goto_0
    return-void

    .line 65
    :cond_0
    const/4 v2, 0x0

    .line 67
    .local v2, ret:Ljava/lang/Object;
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v6

    if-lez v6, :cond_3

    .line 70
    :cond_1
    :try_start_0
    iget v6, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    packed-switch v6, :pswitch_data_0

    .line 186
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

    .line 188
    :catch_0
    move-exception v5

    .line 191
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

    invoke-static {v8}, Lcom/android/internal/telephony/SonyQualcommRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " exception, possible invalid RIL response"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v6, :cond_2

    .line 196
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v6, v9, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 197
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 199
    :cond_2
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto :goto_0

    .line 76
    .end local v5           #tr:Ljava/lang/Throwable;
    :pswitch_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 204
    .end local v2           #ret:Ljava/lang/Object;
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 205
    invoke-virtual {v3, v0, v2}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 206
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto :goto_0

    .line 77
    .restart local v2       #ret:Ljava/lang/Object;
    :pswitch_2
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 78
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 79
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 80
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 81
    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 82
    :pswitch_7
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 83
    :pswitch_8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 84
    :pswitch_9
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 85
    :pswitch_a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 86
    :pswitch_b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 87
    :pswitch_c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 88
    :pswitch_d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 89
    :pswitch_e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 90
    :pswitch_f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 91
    :pswitch_10
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 92
    :pswitch_11
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 93
    :pswitch_12
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 94
    :pswitch_13
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 95
    :pswitch_14
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 96
    :pswitch_15
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 97
    :pswitch_16
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 98
    :pswitch_17
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 99
    :pswitch_18
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 100
    :pswitch_19
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 101
    :pswitch_1a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 102
    :pswitch_1b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseSetupDataCall(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 103
    :pswitch_1c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 104
    :pswitch_1d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 105
    :pswitch_1e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 106
    :pswitch_1f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 107
    :pswitch_20
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 108
    :pswitch_21
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseCallForward(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 109
    :pswitch_22
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 110
    :pswitch_23
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 111
    :pswitch_24
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 112
    :pswitch_25
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 113
    :pswitch_26
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 114
    :pswitch_27
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 115
    :pswitch_28
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 116
    :pswitch_29
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 117
    :pswitch_2a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 118
    :pswitch_2b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 119
    :pswitch_2c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 120
    :pswitch_2d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 121
    :pswitch_2e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 122
    :pswitch_2f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 123
    :pswitch_30
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseOperatorInfos(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 124
    :pswitch_31
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 125
    :pswitch_32
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 126
    :pswitch_33
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 127
    :pswitch_34
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 128
    :pswitch_35
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 129
    :pswitch_36
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 130
    :pswitch_37
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 131
    :pswitch_38
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 132
    :pswitch_39
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseDataCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 133
    :pswitch_3a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 134
    :pswitch_3b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 135
    :pswitch_3c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 136
    :pswitch_3d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 137
    :pswitch_3e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 138
    :pswitch_3f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 139
    :pswitch_40
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 140
    :pswitch_41
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 141
    :pswitch_42
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 142
    :pswitch_43
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 143
    :pswitch_44
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 144
    :pswitch_45
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 145
    :pswitch_46
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 146
    :pswitch_47
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 147
    :pswitch_48
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 148
    :pswitch_49
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 149
    :pswitch_4a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseGetPreferredNetworkType(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 150
    :pswitch_4b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseCellList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 151
    :pswitch_4c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 152
    :pswitch_4d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 153
    :pswitch_4e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 154
    :pswitch_4f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 155
    :pswitch_50
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 156
    :pswitch_51
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 157
    :pswitch_52
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 158
    :pswitch_53
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 159
    :pswitch_54
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 160
    :pswitch_55
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 161
    :pswitch_56
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 162
    :pswitch_57
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 163
    :pswitch_58
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseGmsBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 164
    :pswitch_59
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 165
    :pswitch_5a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 166
    :pswitch_5b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseCdmaBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 167
    :pswitch_5c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 168
    :pswitch_5d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 169
    :pswitch_5e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 170
    :pswitch_5f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 171
    :pswitch_60
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 172
    :pswitch_61
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 173
    :pswitch_62
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 174
    :pswitch_63
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 175
    :pswitch_64
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 176
    :pswitch_65
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 177
    :pswitch_66
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 178
    :pswitch_67
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 179
    :pswitch_68
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 180
    :pswitch_69
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 181
    :pswitch_6a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 182
    :pswitch_6b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 183
    :pswitch_6c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    goto/16 :goto_1

    .line 210
    .end local v2           #ret:Ljava/lang/Object;
    :cond_4
    iget-boolean v6, p0, Lcom/android/internal/telephony/SonyQualcommRIL;->RILJ_LOGD:Z

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

    invoke-static {v7}, Lcom/android/internal/telephony/SonyQualcommRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {p0, v7, v2}, Lcom/android/internal/telephony/SonyQualcommRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SonyQualcommRIL;->riljLog(Ljava/lang/String;)V

    .line 213
    :cond_5
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v6, :cond_6

    .line 214
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v6, v2, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 215
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 218
    :cond_6
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto/16 :goto_0

    .line 70
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6c
    .end packed-switch
.end method

.method public setNetworkSelectionMode(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "operatorNumeric"
    .parameter "response"

    .prologue
    .line 248
    if-nez p1, :cond_0

    .line 249
    const/16 v1, 0x2e

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 253
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    :goto_0
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 254
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SonyQualcommRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 257
    return-void

    .line 251
    .end local v0           #rr:Lcom/android/internal/telephony/RILRequest;
    :cond_0
    const/16 v1, 0x2f

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .restart local v0       #rr:Lcom/android/internal/telephony/RILRequest;
    goto :goto_0
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 262
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SonyQualcommRIL;->setNetworkSelectionMode(Ljava/lang/String;Landroid/os/Message;)V

    .line 263
    return-void
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "operatorNumeric"
    .parameter "response"

    .prologue
    .line 268
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/SonyQualcommRIL;->setNetworkSelectionMode(Ljava/lang/String;Landroid/os/Message;)V

    .line 269
    return-void
.end method
