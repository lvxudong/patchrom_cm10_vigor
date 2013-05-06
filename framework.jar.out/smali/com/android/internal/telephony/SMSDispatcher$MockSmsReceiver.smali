.class final Lcom/android/internal/telephony/SMSDispatcher$MockSmsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MockSmsReceiver"
.end annotation


# static fields
.field private static final SEND_MOCK_SMS_PERMISSION:Ljava/lang/String; = "android.permission.SEND_MOCK_SMS"

.field private static final TAG:Ljava/lang/String; = "MockSmsReceiver"


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 0
    .parameter

    .prologue
    .line 1209
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$MockSmsReceiver;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1209
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher$MockSmsReceiver;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    return-void
.end method

.method private bcdTimestamp()[B
    .locals 16

    .prologue
    .line 1407
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1408
    .local v0, c:Ljava/util/Calendar;
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v13, "yy"

    invoke-direct {v6, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1409
    .local v6, sdf:Ljava/text/SimpleDateFormat;
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v13, "Z"

    invoke-direct {v7, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1410
    .local v7, sdf2:Ljava/text/SimpleDateFormat;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x10

    invoke-static {v13, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v13

    int-to-byte v12, v13

    .line 1412
    .local v12, year:B
    const/4 v13, 0x2

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x10

    invoke-static {v13, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v13

    int-to-byte v5, v13

    .line 1413
    .local v5, month:B
    const/4 v13, 0x5

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x10

    invoke-static {v13, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v13

    int-to-byte v2, v13

    .line 1414
    .local v2, day:B
    const/16 v13, 0xa

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x10

    invoke-static {v13, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v13

    int-to-byte v3, v13

    .line 1415
    .local v3, hour:B
    const/16 v13, 0xc

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x10

    invoke-static {v13, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v13

    int-to-byte v4, v13

    .line 1416
    .local v4, minute:B
    const/16 v13, 0xd

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x10

    invoke-static {v13, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v13

    int-to-byte v8, v13

    .line 1417
    .local v8, second:B
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 1418
    .local v11, tz:Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    div-int/lit8 v9, v13, 0x64

    .line 1419
    .local v9, timezone:I
    if-gez v9, :cond_0

    .line 1420
    add-int/lit16 v9, v9, 0x80

    .line 1422
    :cond_0
    const/4 v13, 0x7

    new-array v1, v13, [B

    const/4 v13, 0x0

    aput-byte v12, v1, v13

    const/4 v13, 0x1

    aput-byte v5, v1, v13

    const/4 v13, 0x2

    aput-byte v2, v1, v13

    const/4 v13, 0x3

    aput-byte v3, v1, v13

    const/4 v13, 0x4

    aput-byte v4, v1, v13

    const/4 v13, 0x5

    aput-byte v8, v1, v13

    const/4 v13, 0x6

    const/4 v14, 0x0

    aput-byte v14, v1, v13

    .line 1423
    .local v1, data:[B
    const/4 v13, 0x0

    array-length v14, v1

    invoke-static {v1, v13, v14}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v10

    .line 1424
    .local v10, ts:[B
    const/4 v13, 0x6

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x10

    invoke-static {v14, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v14

    int-to-byte v14, v14

    aput-byte v14, v10, v13

    .line 1425
    return-object v10
.end method

.method private getPdus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[[B
    .locals 22
    .parameter "scAddress"
    .parameter "senderAddress"
    .parameter "message"

    .prologue
    .line 1329
    invoke-static/range {p3 .. p3}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 1332
    .local v13, msgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [[B

    move-object/from16 v16, v0

    .line 1335
    .local v16, pdus:[[B
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v11, v0, :cond_0

    .line 1336
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1339
    .local v12, msg:Ljava/lang/String;
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v18

    invoke-static {v0, v1, v12, v2}, Landroid/telephony/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v17

    .line 1347
    .local v17, submitPdu:Landroid/telephony/SmsMessage$SubmitPdu;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-static {v12, v0}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v18

    const/16 v19, 0x1

    aget v5, v18, v19

    .line 1350
    .local v5, dataLen:I
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v14, v0, [B

    const/16 v18, 0x0

    const/16 v19, 0x0

    aput-byte v19, v14, v18

    const/16 v18, 0x1

    const/16 v19, 0x0

    aput-byte v19, v14, v18

    const/16 v18, 0x2

    int-to-byte v0, v5

    move/from16 v19, v0

    aput-byte v19, v14, v18

    .line 1351
    .local v14, pds:[B
    new-instance v18, Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Ljava/lang/String;-><init>([B)V

    new-instance v19, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v0, v14}, Ljava/lang/String;-><init>([B)V

    const/16 v20, 0x4

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v18

    add-int/lit8 v6, v18, 0x2

    .line 1354
    .local v6, dataPos:I
    move-object/from16 v0, v17

    iget-object v8, v0, Landroid/telephony/SmsMessage$SubmitPdu;->encodedScAddress:[B

    .line 1355
    .local v8, encSc:[B
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    sub-int v18, v18, v6

    move/from16 v0, v18

    new-array v7, v0, [B

    .line 1356
    .local v7, encMsg:[B
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    sub-int v20, v20, v6

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v6, v7, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1359
    add-int/lit8 v18, v6, -0x4

    move/from16 v0, v18

    new-array v9, v0, [B

    .line 1360
    .local v9, encSender:[B
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object/from16 v18, v0

    const/16 v19, 0x2

    const/16 v20, 0x0

    add-int/lit8 v21, v6, -0x4

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v1, v9, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1363
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher$MockSmsReceiver;->bcdTimestamp()[B

    move-result-object v10

    .line 1364
    .local v10, encTs:[B
    array-length v0, v8

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    array-length v0, v9

    move/from16 v19, v0

    add-int v18, v18, v19

    add-int/lit8 v18, v18, 0x2

    array-length v0, v10

    move/from16 v19, v0

    add-int v18, v18, v19

    array-length v0, v7

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    new-array v15, v0, [B

    .line 1373
    .local v15, pdu:[B
    const/4 v4, 0x0

    .line 1374
    .local v4, c:I
    const/16 v18, 0x0

    array-length v0, v8

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v8, v0, v15, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1375
    array-length v0, v8

    move/from16 v18, v0

    add-int v4, v4, v18

    .line 1377
    const/16 v18, 0x4

    aput-byte v18, v15, v4

    .line 1378
    add-int/lit8 v4, v4, 0x1

    .line 1380
    const/16 v18, 0x0

    array-length v0, v9

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v9, v0, v15, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1381
    array-length v0, v9

    move/from16 v18, v0

    add-int v4, v4, v18

    .line 1383
    const/16 v18, 0x0

    aput-byte v18, v15, v4

    .line 1384
    add-int/lit8 v4, v4, 0x1

    .line 1385
    const/16 v18, 0x0

    aput-byte v18, v15, v4

    .line 1386
    add-int/lit8 v4, v4, 0x1

    .line 1388
    const/16 v18, 0x0

    array-length v0, v10

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v10, v0, v15, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1389
    array-length v0, v10

    move/from16 v18, v0

    add-int v4, v4, v18

    .line 1391
    const/16 v18, 0x0

    array-length v0, v7

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v7, v0, v15, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1394
    aput-object v15, v16, v11

    .line 1335
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 1398
    .end local v4           #c:I
    .end local v5           #dataLen:I
    .end local v6           #dataPos:I
    .end local v7           #encMsg:[B
    .end local v8           #encSc:[B
    .end local v9           #encSender:[B
    .end local v10           #encTs:[B
    .end local v12           #msg:Ljava/lang/String;
    .end local v14           #pds:[B
    .end local v15           #pdu:[B
    .end local v17           #submitPdu:Landroid/telephony/SmsMessage$SubmitPdu;
    :cond_0
    return-object v16
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1246
    const-string v10, "MockSmsReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "New mock SMS reception request. Intent: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    :try_start_0
    iget-object v10, p0, Lcom/android/internal/telephony/SMSDispatcher$MockSmsReceiver;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v10, v10, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "mock_sms"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    const/4 v1, 0x1

    .line 1253
    .local v1, allowMockSMS:Z
    :goto_0
    if-nez v1, :cond_1

    .line 1255
    const-string v10, "MockSmsReceiver"

    const-string v11, "Mock SMS is not allowed. Enable Mock SMS on Settings/Delevelopment."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    .end local v1           #allowMockSMS:Z
    :goto_1
    return-void

    .line 1251
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1261
    .restart local v1       #allowMockSMS:Z
    :cond_1
    const/4 v7, 0x0

    check-cast v7, [[B

    .line 1262
    .local v7, pdus:[[B
    const-string/jumbo v10, "pdus"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v10

    check-cast v10, [Ljava/lang/Object;

    move-object v0, v10

    check-cast v0, [Ljava/lang/Object;

    move-object v4, v0

    .line 1263
    .local v4, messages:[Ljava/lang/Object;
    if-eqz v4, :cond_2

    array-length v10, v4

    if-lez v10, :cond_2

    .line 1265
    array-length v10, v4

    new-array v7, v10, [[B

    .line 1266
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    array-length v10, v4

    if-ge v3, v10, :cond_6

    .line 1267
    aget-object v10, v4, v3

    check-cast v10, [B

    check-cast v10, [B

    aput-object v10, v7, v3

    .line 1266
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1272
    .end local v3           #i:I
    :cond_2
    const-string/jumbo v10, "scAddr"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1273
    .local v8, scAddress:Ljava/lang/String;
    const-string/jumbo v10, "senderAddr"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1274
    .local v9, senderAddress:Ljava/lang/String;
    const-string/jumbo v10, "msg"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1277
    .local v6, msg:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1278
    const-string v8, "+01123456789"

    .line 1280
    :cond_3
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1281
    const-string v9, "+01123456789"

    .line 1283
    :cond_4
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1284
    const-string v6, "This is a mock SMS message."

    .line 1286
    :cond_5
    const-string v10, "MockSmsReceiver"

    const-string v11, "Mock SMS. scAddress: %s, senderAddress: %s, msg: %s"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    const/4 v13, 0x1

    aput-object v9, v12, v13

    const/4 v13, 0x2

    aput-object v6, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    invoke-direct {p0, v8, v9, v6}, Lcom/android/internal/telephony/SMSDispatcher$MockSmsReceiver;->getPdus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[[B

    move-result-object v7

    .line 1296
    .end local v6           #msg:Ljava/lang/String;
    .end local v8           #scAddress:Ljava/lang/String;
    .end local v9           #senderAddress:Ljava/lang/String;
    :cond_6
    const-string v10, "MockSmsReceiver"

    const-string v11, "Mock SMS. Number of msg: %d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    array-length v14, v7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    new-instance v5, Landroid/content/Intent;

    const-string v10, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1303
    .local v5, mockSmsIntent:Landroid/content/Intent;
    const-string/jumbo v10, "pdus"

    invoke-virtual {v5, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1304
    const-string v10, "format"

    const-string v11, "3gpp"

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1305
    iget-object v10, p0, Lcom/android/internal/telephony/SMSDispatcher$MockSmsReceiver;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v11, "android.permission.RECEIVE_SMS"

    invoke-virtual {v10, v5, v11}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1308
    const/4 v10, -0x1

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/SMSDispatcher$MockSmsReceiver;->setResultCode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1310
    .end local v1           #allowMockSMS:Z
    .end local v4           #messages:[Ljava/lang/Object;
    .end local v5           #mockSmsIntent:Landroid/content/Intent;
    .end local v7           #pdus:[[B
    :catch_0
    move-exception v2

    .line 1311
    .local v2, ex:Ljava/lang/Exception;
    const-string v10, "MockSmsReceiver"

    const-string v11, "Failed to dispatch SMS"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1314
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/SMSDispatcher$MockSmsReceiver;->setResultCode(I)V

    goto/16 :goto_1
.end method

.method public final registerReceiver()V
    .locals 5

    .prologue
    .line 1220
    :try_start_0
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 1221
    .local v2, handler:Landroid/os/Handler;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1222
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v3, "android.provider.Telephony.MOCK_SMS_RECEIVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1223
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$MockSmsReceiver;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v3, v3, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.SEND_MOCK_SMS"

    invoke-virtual {v3, p0, v1, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1224
    const-string v3, "MockSmsReceiver"

    const-string v4, "Registered MockSmsReceiver"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1228
    .end local v1           #filter:Landroid/content/IntentFilter;
    .end local v2           #handler:Landroid/os/Handler;
    :goto_0
    return-void

    .line 1225
    :catch_0
    move-exception v0

    .line 1226
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "MockSmsReceiver"

    const-string v4, "Failed to register MockSmsReceiver"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final unregisterReceiver()V
    .locals 3

    .prologue
    .line 1235
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher$MockSmsReceiver;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v1, v1, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1239
    :goto_0
    return-void

    .line 1236
    :catch_0
    move-exception v0

    .line 1237
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "MockSmsReceiver"

    const-string v2, "Failed to unregister MockSmsReceiver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
