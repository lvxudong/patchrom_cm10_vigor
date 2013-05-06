.class Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
.super Ljava/lang/Object;
.source "KeyguardStatusViewManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/KeyguardStatusViewManager$4;,
        Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;,
        Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;
    }
.end annotation


# static fields
.field public static final ALARM_ICON:I = 0x108002e

.field private static final BATTERY_INFO:I = 0xf

.field public static final BATTERY_LOW_ICON:I = 0x0

.field private static final CARRIER_HELP_TEXT:I = 0xc

.field private static final CARRIER_TEXT:I = 0xb

.field public static final CHARGING_ICON:I = 0x0

.field private static final DEBUG:Z = false

.field public static final DISCHARGING_ICON:I = 0x0

.field private static final HELP_MESSAGE_TEXT:I = 0xd

.field private static final INSTRUCTION_RESET_DELAY:J = 0x7d0L

.field private static final INSTRUCTION_TEXT:I = 0xa

.field public static final LOCK_ICON:I = 0x0

.field private static final OWNER_INFO:I = 0xe

.field private static final QUERY_WEATHER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "KeyguardStatusView"

.field private static final UPDATE_WEATHER:I = 0x1

.field private static final URL_YAHOO_API_WEATHER:Ljava/lang/String; = "http://weather.yahooapis.com/forecastrss?w=%s&u="

.field private static mWeatherInfo:Lcom/android/internal/util/weather/WeatherInfo;


# instance fields
.field private mAlarmStatusView:Landroid/widget/TextView;

.field private mAlwaysShowBattery:Z

.field private mBatteryLevel:I

.field private mCalendarEventDetails:Landroid/widget/TextView;

.field private mCalendarEventTitle:Landroid/widget/TextView;

.field private mCalendarPanel:Landroid/widget/LinearLayout;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCarrierHelpText:Ljava/lang/CharSequence;

.field private mCarrierText:Ljava/lang/CharSequence;

.field private mCarrierView:Landroid/widget/TextView;

.field private mContainer:Landroid/view/View;

.field private mDateFormatString:Ljava/lang/String;

.field private mDateLineView:Landroid/widget/LinearLayout;

.field private mDateView:Landroid/widget/TextView;

.field private mDigitalClock:Lcom/android/internal/widget/DigitalClock;

.field private mEmergencyButtonEnabledBecauseSimLocked:Z

.field private mEmergencyCallButton:Landroid/widget/Button;

.field private final mEmergencyCallButtonEnabledInScreen:Z

.field private mHandler:Landroid/os/Handler;

.field private mHelpMessageText:Ljava/lang/String;

.field private mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

.field private mInstructionText:Ljava/lang/String;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOwnerInfoText:Ljava/lang/CharSequence;

.field private mOwnerInfoView:Landroid/widget/TextView;

.field protected mPhoneState:I

.field private mPlmn:Ljava/lang/CharSequence;

.field private mPluggedIn:Z

.field private mShowingBatteryInfo:Z

.field private mShowingStatus:Z

.field protected mSimState:Lcom/android/internal/telephony/IccCard$State;

.field private mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

.field private mSpn:Ljava/lang/CharSequence;

.field private mStatus:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

.field private mStatus1View:Landroid/widget/TextView;

.field private mTransientTextManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;

.field private mTransportView:Lcom/android/internal/widget/TransportControlView;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mWeatherCity:Landroid/widget/TextView;

.field private mWeatherCondition:Landroid/widget/TextView;

.field private mWeatherImage:Landroid/widget/ImageView;

.field private mWeatherLowHigh:Landroid/widget/TextView;

.field private mWeatherPanel:Landroid/widget/RelativeLayout;

.field private mWeatherRefreshing:Z

.field private mWeatherTemp:Landroid/widget/TextView;

.field private mWeatherTempsPanel:Landroid/widget/RelativeLayout;

.field private mWeatherUpdateTime:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 300
    new-instance v0, Lcom/android/internal/util/weather/WeatherInfo;

    invoke-direct {v0}, Lcom/android/internal/util/weather/WeatherInfo;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherInfo:Lcom/android/internal/util/weather/WeatherInfo;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V
    .locals 10
    .parameter "view"
    .parameter "updateMonitor"
    .parameter "lockPatternUtils"
    .parameter "callback"
    .parameter "emergencyButtonEnabledInScreen"

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingBatteryInfo:Z

    .line 127
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPluggedIn:Z

    .line 130
    const/16 v5, 0x64

    iput v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mBatteryLevel:I

    .line 133
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mAlwaysShowBattery:Z

    .line 305
    new-instance v5, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;-><init>(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mHandler:Landroid/os/Handler;

    .line 1080
    new-instance v5, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$2;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$2;-><init>(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

    .line 1113
    new-instance v5, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;-><init>(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    .line 218
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mContainer:Landroid/view/View;

    .line 219
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x10400bf

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDateFormatString:Ljava/lang/String;

    .line 220
    iput-object p3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 221
    iput-object p2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 222
    iput-object p4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 224
    const v5, 0x10202b4

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    .line 225
    const v5, 0x1020063

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDateView:Landroid/widget/TextView;

    .line 226
    const v5, 0x10202b3

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    .line 227
    const v5, 0x10202b2

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    .line 228
    const v5, 0x10202d2

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    .line 229
    const v5, 0x10202bd

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDateLineView:Landroid/widget/LinearLayout;

    .line 230
    const v5, 0x10202b8

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/TransportControlView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mTransportView:Lcom/android/internal/widget/TransportControlView;

    .line 231
    const v5, 0x102029b

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    .line 232
    iput-boolean p5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButtonEnabledInScreen:Z

    .line 233
    const v5, 0x1020064

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/DigitalClock;

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDigitalClock:Lcom/android/internal/widget/DigitalClock;

    .line 236
    const v5, 0x10202c9

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherPanel:Landroid/widget/RelativeLayout;

    .line 237
    const v5, 0x10202cb

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherCity:Landroid/widget/TextView;

    .line 238
    const v5, 0x10202cc

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherCondition:Landroid/widget/TextView;

    .line 239
    const v5, 0x10202ca

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherImage:Landroid/widget/ImageView;

    .line 240
    const v5, 0x10202cf

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherTemp:Landroid/widget/TextView;

    .line 241
    const v5, 0x10202d1

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherLowHigh:Landroid/widget/TextView;

    .line 242
    const v5, 0x10202cd

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherUpdateTime:Landroid/widget/TextView;

    .line 243
    const v5, 0x10202ce

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherTempsPanel:Landroid/widget/RelativeLayout;

    .line 246
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherPanel:Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_0

    .line 247
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 248
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    :cond_0
    const v5, 0x10202d3

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCalendarPanel:Landroid/widget/LinearLayout;

    .line 253
    const v5, 0x10202d4

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCalendarEventTitle:Landroid/widget/TextView;

    .line 254
    const v5, 0x10202d5

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCalendarEventDetails:Landroid/widget/TextView;

    .line 257
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCalendarPanel:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_1

    .line 258
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCalendarPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 262
    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mTransportView:Lcom/android/internal/widget/TransportControlView;

    if-eqz v5, :cond_2

    .line 263
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mTransportView:Lcom/android/internal/widget/TransportControlView;

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/TransportControlView;->setVisibility(I)V

    .line 266
    :cond_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    if-eqz v5, :cond_3

    .line 267
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    const v6, 0x1040326

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 268
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setFocusable(Z)V

    .line 272
    :cond_3
    new-instance v5, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;

    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    invoke-direct {v5, p0, v6}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;-><init>(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Landroid/widget/TextView;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mTransientTextManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;

    .line 274
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 275
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 277
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->resetStatusInfo()V

    .line 278
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->refreshDate()V

    .line 279
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateOwnerInfo()V

    .line 280
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->refreshWeather()V

    .line 281
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->refreshCalendar()V

    .line 282
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDigitalClock:Lcom/android/internal/widget/DigitalClock;

    if-eqz v5, :cond_4

    .line 283
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateClockAlign()V

    .line 287
    :cond_4
    new-array v3, v8, [Landroid/view/View;

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    aput-object v5, v3, v7

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDateView:Landroid/widget/TextView;

    aput-object v5, v3, v9

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    aput-object v6, v3, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    aput-object v6, v3, v5

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    aput-object v6, v3, v5

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCalendarEventDetails:Landroid/widget/TextView;

    aput-object v6, v3, v5

    const/4 v5, 0x6

    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherCity:Landroid/widget/TextView;

    aput-object v6, v3, v5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherCondition:Landroid/widget/TextView;

    aput-object v6, v3, v5

    .line 289
    .local v3, scrollableViews:[Landroid/view/View;
    move-object v0, v3

    .local v0, arr$:[Landroid/view/View;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_6

    aget-object v4, v0, v1

    .line 290
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_5

    .line 291
    invoke-virtual {v4, v9}, Landroid/view/View;->setSelected(Z)V

    .line 289
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 294
    .end local v4           #v:Landroid/view/View;
    :cond_6
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Llibcore/util/MutableInt;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getAltTextMessage(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000()Lcom/android/internal/util/weather/WeatherInfo;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherInfo:Lcom/android/internal/util/weather/WeatherInfo;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/internal/util/weather/WeatherInfo;)Lcom/android/internal/util/weather/WeatherInfo;
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    sput-object p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherInfo:Lcom/android/internal/util/weather/WeatherInfo;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setNoWeatherData()V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingBatteryInfo:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPluggedIn:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;ILjava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->refreshWeather()V

    return-void
.end method

.method static synthetic access$1702(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSpn:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Lcom/android/internal/telephony/IccCard$State;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateCarrierStateWithSimStatus(Lcom/android/internal/telephony/IccCard$State;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateEmergencyCallButtonState(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Lorg/w3c/dom/Document;)Lcom/android/internal/util/weather/WeatherInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->parseXml(Lorg/w3c/dom/Document;)Lcom/android/internal/util/weather/WeatherInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherRefreshing:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Lcom/android/internal/util/weather/WeatherInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setWeatherData(Lcom/android/internal/util/weather/WeatherInfo;)V

    return-void
.end method

.method private findViewById(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getAltTextMessage(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "icon"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 819
    const/4 v0, 0x0

    .line 820
    .local v0, string:Ljava/lang/CharSequence;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingBatteryInfo:Z

    if-eqz v1, :cond_4

    .line 822
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPluggedIn:Z

    if-eqz v1, :cond_2

    .line 824
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceCharged()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 825
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x104032e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 829
    :goto_0
    iput v5, p1, Llibcore/util/MutableInt;->value:I

    .line 842
    :cond_0
    :goto_1
    return-object v0

    .line 827
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x104032c

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mBatteryLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 830
    :cond_2
    iget v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mBatteryLevel:I

    const/16 v2, 0x14

    if-ge v1, v2, :cond_3

    .line 832
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040330

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mBatteryLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 833
    iput v5, p1, Llibcore/util/MutableInt;->value:I

    goto :goto_1

    .line 834
    :cond_3
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mAlwaysShowBattery:Z

    if-eqz v1, :cond_0

    .line 836
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x104032d

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mBatteryLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 837
    iput v5, p1, Llibcore/util/MutableInt;->value:I

    goto :goto_1

    .line 840
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierText:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 7
    .parameter "woeid"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 515
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "weather_use_metric"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v0, :cond_0

    .line 519
    .local v0, celcius:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 520
    const-string v2, "http://weather.yahooapis.com/forecastrss?w=%s&u=c"

    .line 525
    .local v2, urlWithDegreeUnit:Ljava/lang/String;
    :goto_1
    new-instance v3, Lcom/android/internal/util/weather/HttpRetriever;

    invoke-direct {v3}, Lcom/android/internal/util/weather/HttpRetriever;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/weather/HttpRetriever;->getDocumentFromURL(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 530
    .end local v0           #celcius:Z
    .end local v2           #urlWithDegreeUnit:Ljava/lang/String;
    :goto_2
    return-object v3

    :cond_0
    move v0, v3

    .line 515
    goto :goto_0

    .line 522
    .restart local v0       #celcius:Z
    :cond_1
    const-string v2, "http://weather.yahooapis.com/forecastrss?w=%s&u=f"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2       #urlWithDegreeUnit:Ljava/lang/String;
    goto :goto_1

    .line 526
    .end local v0           #celcius:Z
    .end local v2           #urlWithDegreeUnit:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 527
    .local v1, e:Ljava/io/IOException;
    const-string v3, "KeyguardStatusView"

    const-string v4, "Error querying Yahoo weather"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private getPriorityTextMessage(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "icon"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 846
    const/4 v0, 0x0

    .line 847
    .local v0, string:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mInstructionText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 849
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mInstructionText:Ljava/lang/String;

    .line 850
    iput v5, p1, Llibcore/util/MutableInt;->value:I

    .line 874
    :cond_0
    :goto_0
    return-object v0

    .line 851
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingBatteryInfo:Z

    if-eqz v1, :cond_5

    .line 853
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPluggedIn:Z

    if-eqz v1, :cond_3

    .line 855
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceCharged()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 856
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x104032e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 860
    :goto_1
    iput v5, p1, Llibcore/util/MutableInt;->value:I

    goto :goto_0

    .line 858
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x104032c

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mBatteryLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 861
    :cond_3
    iget v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mBatteryLevel:I

    const/16 v2, 0x14

    if-ge v1, v2, :cond_4

    .line 863
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040330

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mBatteryLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 864
    iput v5, p1, Llibcore/util/MutableInt;->value:I

    goto :goto_0

    .line 865
    :cond_4
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mAlwaysShowBattery:Z

    if-eqz v1, :cond_0

    .line 867
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x104032d

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mBatteryLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 868
    iput v5, p1, Llibcore/util/MutableInt;->value:I

    goto :goto_0

    .line 870
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->inWidgetMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 872
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private getText(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "resId"

    .prologue
    .line 631
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method private inWidgetMode()Z
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mTransportView:Lcom/android/internal/widget/TransportControlView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mTransportView:Lcom/android/internal/widget/TransportControlView;

    invoke-virtual {v0}, Lcom/android/internal/widget/TransportControlView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static makeCarierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "plmn"
    .parameter "spn"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1143
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .line 1144
    .local v0, plmnValid:Z
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    move v1, v2

    .line 1145
    .local v1, spnValid:Z
    :goto_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 1146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1152
    .end local p0
    :cond_0
    :goto_2
    return-object p0

    .end local v0           #plmnValid:Z
    .end local v1           #spnValid:Z
    .restart local p0
    :cond_1
    move v0, v3

    .line 1143
    goto :goto_0

    .restart local v0       #plmnValid:Z
    :cond_2
    move v1, v3

    .line 1144
    goto :goto_1

    .line 1147
    .restart local v1       #spnValid:Z
    :cond_3
    if-nez v0, :cond_0

    .line 1149
    if-eqz v1, :cond_4

    move-object p0, p1

    .line 1150
    goto :goto_2

    .line 1152
    :cond_4
    const-string p0, ""

    goto :goto_2
.end method

.method private makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "simMessage"
    .parameter "emergencyCallMessage"

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallCapable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1004
    invoke-static {p1, p2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->makeCarierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1006
    .end local p1
    :cond_0
    return-object p1
.end method

.method private static parseStoredValue(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "val"

    .prologue
    .line 591
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 592
    :cond_0
    const/4 v0, 0x0

    .line 596
    :goto_0
    return-object v0

    .line 595
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 596
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private parseXml(Lorg/w3c/dom/Document;)Lcom/android/internal/util/weather/WeatherInfo;
    .locals 3
    .parameter "wDoc"

    .prologue
    .line 540
    :try_start_0
    new-instance v1, Lcom/android/internal/util/weather/WeatherXmlParser;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/util/weather/WeatherXmlParser;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/android/internal/util/weather/WeatherXmlParser;->parseWeatherResponse(Lorg/w3c/dom/Document;)Lcom/android/internal/util/weather/WeatherInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 545
    :goto_0
    return-object v1

    .line 541
    :catch_0
    move-exception v0

    .line 542
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "KeyguardStatusView"

    const-string v2, "Error parsing Yahoo weather XML document"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 545
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private refreshCalendar()V
    .locals 13

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 553
    iget-object v10, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCalendarPanel:Landroid/widget/LinearLayout;

    if-eqz v10, :cond_2

    .line 554
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 555
    .local v6, resolver:Landroid/content/ContentResolver;
    const/4 v5, 0x0

    .line 556
    .local v5, nextCalendar:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 559
    .local v7, visible:Z
    const-string v10, "lockscreen_calendar"

    invoke-static {v6, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_3

    move v1, v8

    .line 561
    .local v1, lockCalendar:Z
    :goto_0
    const-string v10, "lockscreen_calendars"

    invoke-static {v6, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->parseStoredValue(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 563
    .local v0, calendars:[Ljava/lang/String;
    const-string v10, "lockscreen_calendar_reminders_only"

    invoke-static {v6, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_4

    move v4, v8

    .line 565
    .local v4, lockCalendarRemindersOnly:Z
    :goto_1
    const-string v10, "lockscreen_calendar_lookahead"

    const-wide/32 v11, 0xa4cb80

    invoke-static {v6, v10, v11, v12}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 568
    .local v2, lockCalendarLookahead:J
    if-eqz v1, :cond_1

    .line 569
    iget-object v10, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10, v2, v3, v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->getNextCalendarAlarm(J[Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v5

    .line 571
    aget-object v10, v5, v9

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCalendarEventTitle:Landroid/widget/TextView;

    if-eqz v10, :cond_1

    .line 572
    iget-object v10, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCalendarEventTitle:Landroid/widget/TextView;

    aget-object v11, v5, v9

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    aget-object v10, v5, v8

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCalendarEventDetails:Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 574
    iget-object v10, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCalendarEventDetails:Landroid/widget/TextView;

    aget-object v8, v5, v8

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 576
    :cond_0
    const/4 v7, 0x1

    .line 580
    :cond_1
    iget-object v8, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCalendarPanel:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_5

    :goto_2
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 582
    .end local v0           #calendars:[Ljava/lang/String;
    .end local v1           #lockCalendar:Z
    .end local v2           #lockCalendarLookahead:J
    .end local v4           #lockCalendarRemindersOnly:Z
    .end local v5           #nextCalendar:[Ljava/lang/String;
    .end local v6           #resolver:Landroid/content/ContentResolver;
    .end local v7           #visible:Z
    :cond_2
    return-void

    .restart local v5       #nextCalendar:[Ljava/lang/String;
    .restart local v6       #resolver:Landroid/content/ContentResolver;
    .restart local v7       #visible:Z
    :cond_3
    move v1, v9

    .line 559
    goto :goto_0

    .restart local v0       #calendars:[Ljava/lang/String;
    .restart local v1       #lockCalendar:Z
    :cond_4
    move v4, v9

    .line 563
    goto :goto_1

    .line 580
    .restart local v2       #lockCalendarLookahead:J
    .restart local v4       #lockCalendarRemindersOnly:Z
    :cond_5
    const/16 v9, 0x8

    goto :goto_2
.end method

.method private refreshWeather()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 396
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 397
    .local v3, resolver:Landroid/content/ContentResolver;
    const-string v6, "lockscreen_weather"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v2, :cond_1

    move v4, v2

    .line 399
    .local v4, showWeather:Z
    :goto_0
    if-eqz v4, :cond_5

    .line 400
    const-string v6, "weather_update_interval"

    const-wide/16 v7, 0x3c

    invoke-static {v3, v6, v7, v8}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 402
    .local v0, interval:J
    cmp-long v6, v0, v10

    if-nez v6, :cond_2

    .line 403
    .local v2, manualSync:Z
    :goto_1
    if-nez v2, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-object v8, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherInfo:Lcom/android/internal/util/weather/WeatherInfo;

    iget-wide v8, v8, Lcom/android/internal/util/weather/WeatherInfo;->last_sync:J

    sub-long/2addr v6, v8

    const-wide/32 v8, 0xea60

    div-long/2addr v6, v8

    cmp-long v6, v6, v0

    if-ltz v6, :cond_3

    .line 404
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherRefreshing:Z

    if-nez v6, :cond_0

    .line 405
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 418
    .end local v0           #interval:J
    .end local v2           #manualSync:Z
    :cond_0
    :goto_2
    return-void

    .end local v4           #showWeather:Z
    :cond_1
    move v4, v5

    .line 397
    goto :goto_0

    .restart local v0       #interval:J
    .restart local v4       #showWeather:Z
    :cond_2
    move v2, v5

    .line 402
    goto :goto_1

    .line 407
    .restart local v2       #manualSync:Z
    :cond_3
    if-eqz v2, :cond_4

    sget-object v5, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherInfo:Lcom/android/internal/util/weather/WeatherInfo;

    iget-wide v5, v5, Lcom/android/internal/util/weather/WeatherInfo;->last_sync:J

    cmp-long v5, v5, v10

    if-nez v5, :cond_4

    .line 408
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setNoWeatherData()V

    goto :goto_2

    .line 410
    :cond_4
    sget-object v5, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherInfo:Lcom/android/internal/util/weather/WeatherInfo;

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setWeatherData(Lcom/android/internal/util/weather/WeatherInfo;)V

    goto :goto_2

    .line 414
    .end local v0           #interval:J
    .end local v2           #manualSync:Z
    :cond_5
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherPanel:Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_0

    .line 415
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherPanel:Landroid/widget/RelativeLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method private setNoWeatherData()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 485
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherPanel:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_5

    .line 486
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherImage:Landroid/widget/ImageView;

    const v1, 0x1080659

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherCity:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 490
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherCity:Landroid/widget/TextView;

    const v1, 0x104056a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 491
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherCity:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 493
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherCondition:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherRefreshing:Z

    if-nez v0, :cond_2

    .line 494
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherCondition:Landroid/widget/TextView;

    const v1, 0x104056b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 496
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherUpdateTime:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 497
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherUpdateTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 499
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherTempsPanel:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_4

    .line 500
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherTempsPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 504
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 506
    :cond_5
    return-void
.end method

.method private setSpecificMargins(Landroid/view/View;IIII)V
    .locals 2
    .parameter "view"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v1, -0x1

    .line 792
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 793
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    if-eq p2, v1, :cond_0

    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 794
    :cond_0
    if-eq p3, v1, :cond_1

    iput p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 795
    :cond_1
    if-eq p4, v1, :cond_2

    iput p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 796
    :cond_2
    if-eq p5, v1, :cond_3

    iput p5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 797
    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 798
    return-void
.end method

.method private setWeatherData(Lcom/android/internal/util/weather/WeatherInfo;)V
    .locals 16
    .parameter "w"

    .prologue
    .line 425
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 426
    .local v12, resolver:Landroid/content/ContentResolver;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 427
    .local v10, res:Landroid/content/res/Resources;
    const-string v1, "weather_show_location"

    const/4 v2, 0x1

    invoke-static {v12, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    const/4 v13, 0x1

    .line 429
    .local v13, showLocation:Z
    :goto_0
    const-string v1, "weather_show_timestamp"

    const/4 v2, 0x1

    invoke-static {v12, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    const/4 v14, 0x1

    .line 431
    .local v14, showTimestamp:Z
    :goto_1
    const-string v1, "weather_invert_lowhigh"

    const/4 v2, 0x0

    invoke-static {v12, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    const/4 v9, 0x1

    .line 434
    .local v9, invertLowhigh:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherPanel:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_5

    .line 435
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 436
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/internal/util/weather/WeatherInfo;->condition_code:Ljava/lang/String;

    .line 437
    .local v7, conditionCode:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "weather_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 438
    .local v8, condition_filename:Ljava/lang/String;
    const-string v1, "drawable"

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v8, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 444
    .local v11, resID:I
    if-eqz v11, :cond_9

    .line 445
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherImage:Landroid/widget/ImageView;

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 450
    .end local v7           #conditionCode:Ljava/lang/String;
    .end local v8           #condition_filename:Ljava/lang/String;
    .end local v11           #resID:I
    :cond_0
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherCity:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 451
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherCity:Landroid/widget/TextView;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/util/weather/WeatherInfo;->city:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherCity:Landroid/widget/TextView;

    if-eqz v13, :cond_a

    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 454
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherCondition:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherRefreshing:Z

    if-nez v1, :cond_2

    .line 455
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherCondition:Landroid/widget/TextView;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/util/weather/WeatherInfo;->condition:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherCondition:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 458
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherUpdateTime:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 459
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 460
    .local v3, now:J
    move-object/from16 v0, p1

    iget-wide v1, v0, Lcom/android/internal/util/weather/WeatherInfo;->last_sync:J

    sub-long v1, v3, v1

    const-wide/32 v5, 0xea60

    cmp-long v1, v1, v5

    if-gez v1, :cond_b

    .line 461
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherUpdateTime:Landroid/widget/TextView;

    const v2, 0x104056d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 466
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherUpdateTime:Landroid/widget/TextView;

    if-eqz v14, :cond_c

    const/4 v1, 0x0

    :goto_6
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 468
    .end local v3           #now:J
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherTempsPanel:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherTemp:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherLowHigh:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 469
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherTemp:Landroid/widget/TextView;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/util/weather/WeatherInfo;->temp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherLowHigh:Landroid/widget/TextView;

    if-eqz v9, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/util/weather/WeatherInfo;->high:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " | "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/util/weather/WeatherInfo;->low:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_7
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherTempsPanel:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 475
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherPanel:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 477
    :cond_5
    return-void

    .line 427
    .end local v9           #invertLowhigh:Z
    .end local v13           #showLocation:Z
    .end local v14           #showTimestamp:Z
    :cond_6
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 429
    .restart local v13       #showLocation:Z
    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 431
    .restart local v14       #showTimestamp:Z
    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 447
    .restart local v7       #conditionCode:Ljava/lang/String;
    .restart local v8       #condition_filename:Ljava/lang/String;
    .restart local v9       #invertLowhigh:Z
    .restart local v11       #resID:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherImage:Landroid/widget/ImageView;

    const v2, 0x1080659

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 452
    .end local v7           #conditionCode:Ljava/lang/String;
    .end local v8           #condition_filename:Ljava/lang/String;
    .end local v11           #resID:I
    :cond_a
    const/16 v1, 0x8

    goto/16 :goto_4

    .line 463
    .restart local v3       #now:J
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherUpdateTime:Landroid/widget/TextView;

    move-object/from16 v0, p1

    iget-wide v1, v0, Lcom/android/internal/util/weather/WeatherInfo;->last_sync:J

    const-wide/32 v5, 0xea60

    invoke-static/range {v1 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 466
    :cond_c
    const/16 v1, 0x8

    goto/16 :goto_6

    .line 470
    .end local v3           #now:J
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/util/weather/WeatherInfo;->low:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " | "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/util/weather/WeatherInfo;->high:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method private update(ILjava/lang/CharSequence;)V
    .locals 4
    .parameter "what"
    .parameter "string"

    .prologue
    .line 648
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->inWidgetMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    packed-switch p1, :pswitch_data_0

    .line 667
    :goto_0
    :pswitch_0
    return-void

    .line 656
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mTransientTextManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;

    const/4 v1, 0x0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;->post(Ljava/lang/CharSequence;IJ)V

    goto :goto_0

    .line 665
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingStatus:Z

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateStatusLines(Z)V

    goto :goto_0

    .line 651
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateAlarmInfo()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 723
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 724
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getNextAlarm()Ljava/lang/String;

    move-result-object v0

    .line 725
    .local v0, nextAlarm:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingStatus:Z

    if-eqz v3, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    .line 726
    .local v1, showAlarm:Z
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 727
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    const v4, 0x108002e

    invoke-virtual {v3, v4, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 728
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 730
    .end local v0           #nextAlarm:Ljava/lang/String;
    .end local v1           #showAlarm:Z
    :cond_0
    return-void

    .restart local v0       #nextAlarm:Ljava/lang/String;
    :cond_1
    move v1, v2

    .line 725
    goto :goto_0

    .line 728
    .restart local v1       #showAlarm:Z
    :cond_2
    const/16 v2, 0x8

    goto :goto_1
.end method

.method private updateCarrierStateWithSimStatus(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 6
    .parameter "simState"

    .prologue
    const v5, 0x1040331

    const/4 v4, 0x1

    .line 931
    const/4 v1, 0x0

    .line 932
    .local v1, carrierText:Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 933
    .local v0, carrierHelpTextId:I
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    .line 934
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getStatusForIccState(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mStatus:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    .line 935
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 936
    sget-object v2, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$4;->$SwitchMap$com$android$internal$policy$impl$KeyguardStatusViewManager$StatusMode:[I

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mStatus:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 992
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setCarrierText(Ljava/lang/CharSequence;)V

    .line 993
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setCarrierHelpText(I)V

    .line 994
    iget v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPhoneState:I

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateEmergencyCallButtonState(I)V

    .line 995
    return-void

    .line 938
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSpn:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->makeCarierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 939
    goto :goto_0

    .line 942
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x104033d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 945
    const v0, 0x1040324

    .line 946
    goto :goto_0

    .line 953
    :pswitch_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 956
    const v0, 0x1040334

    .line 957
    goto :goto_0

    .line 960
    :pswitch_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040335

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 962
    const v0, 0x1040336

    .line 963
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto :goto_0

    .line 967
    :pswitch_4
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 970
    const v0, 0x1040333

    .line 971
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto :goto_0

    .line 975
    :pswitch_5
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040340

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 978
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto :goto_0

    .line 982
    :pswitch_6
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x104033e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 985
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isPukUnlockScreenEnable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 987
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto/16 :goto_0

    .line 936
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private updateCarrierText()V
    .locals 2

    .prologue
    .line 811
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->inWidgetMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 814
    :cond_0
    return-void
.end method

.method private updateClockAlign()V
    .locals 10

    .prologue
    const/4 v5, 0x2

    const/4 v3, -0x1

    .line 745
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    .line 747
    .local v7, config:Landroid/content/res/Configuration;
    iget v0, v7, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v5, :cond_1

    .line 788
    :cond_0
    :goto_0
    return-void

    .line 751
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_clock_align"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 753
    .local v6, clockAlign:I
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 757
    .local v9, margin:I
    iget v0, v7, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v1, 0x258

    if-lt v0, v1, :cond_2

    .line 758
    const/4 v9, 0x0

    .line 761
    :cond_2
    const/4 v2, 0x0

    .local v2, leftMargin:I
    const/4 v4, 0x0

    .line 762
    .local v4, rightMargin:I
    const/4 v8, 0x5

    .line 764
    .local v8, gravity:I
    packed-switch v6, :pswitch_data_0

    .line 777
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDigitalClock:Lcom/android/internal/widget/DigitalClock;

    invoke-virtual {v0, v8}, Lcom/android/internal/widget/DigitalClock;->setGravity(I)V

    .line 778
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDigitalClock:Lcom/android/internal/widget/DigitalClock;

    move-object v0, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setSpecificMargins(Landroid/view/View;IIII)V

    .line 780
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDateLineView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 781
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDateLineView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 782
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDateLineView:Landroid/widget/LinearLayout;

    move-object v0, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setSpecificMargins(Landroid/view/View;IIII)V

    .line 784
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 786
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    move-object v0, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setSpecificMargins(Landroid/view/View;IIII)V

    goto :goto_0

    .line 766
    :pswitch_0
    const/4 v8, 0x3

    .line 767
    move v2, v9

    .line 768
    goto :goto_1

    .line 770
    :pswitch_1
    const/16 v8, 0x11

    .line 771
    goto :goto_1

    .line 773
    :pswitch_2
    move v4, v9

    goto :goto_1

    .line 764
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateEmergencyCallButtonState(I)V
    .locals 5
    .parameter "phoneState"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1070
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    if-eqz v4, :cond_1

    .line 1071
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallEnabledWhileSimLocked()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    if-eqz v4, :cond_2

    move v0, v2

    .line 1074
    .local v0, enabledBecauseSimLocked:Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButtonEnabledInScreen:Z

    if-nez v4, :cond_0

    if-eqz v0, :cond_3

    :cond_0
    move v1, v2

    .line 1075
    .local v1, shown:Z
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v3, p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;IZ)V

    .line 1078
    .end local v0           #enabledBecauseSimLocked:Z
    .end local v1           #shown:Z
    :cond_1
    return-void

    :cond_2
    move v0, v3

    .line 1071
    goto :goto_0

    .restart local v0       #enabledBecauseSimLocked:Z
    :cond_3
    move v1, v3

    .line 1074
    goto :goto_1
.end method

.method private updateOwnerInfo()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 733
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 734
    .local v1, res:Landroid/content/ContentResolver;
    const-string v2, "lock_screen_owner_info_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 736
    .local v0, ownerInfoEnabled:Z
    :goto_0
    if-eqz v0, :cond_2

    const-string v2, "lock_screen_owner_info"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    .line 738
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 739
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 740
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 742
    :cond_0
    return-void

    .end local v0           #ownerInfoEnabled:Z
    :cond_1
    move v0, v3

    .line 734
    goto :goto_0

    .line 736
    .restart local v0       #ownerInfoEnabled:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    move v2, v3

    .line 740
    goto :goto_2
.end method

.method private updateStatus1()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 801
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 802
    new-instance v0, Llibcore/util/MutableInt;

    invoke-direct {v0, v2}, Llibcore/util/MutableInt;-><init>(I)V

    .line 803
    .local v0, icon:Llibcore/util/MutableInt;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getPriorityTextMessage(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 804
    .local v1, string:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 805
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    iget v4, v0, Llibcore/util/MutableInt;->value:I

    invoke-virtual {v3, v4, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 806
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingStatus:Z

    if-eqz v4, :cond_1

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 808
    .end local v0           #icon:Llibcore/util/MutableInt;
    .end local v1           #string:Ljava/lang/CharSequence;
    :cond_0
    return-void

    .line 806
    .restart local v0       #icon:Llibcore/util/MutableInt;
    .restart local v1       #string:Ljava/lang/CharSequence;
    :cond_1
    const/4 v2, 0x4

    goto :goto_0
.end method


# virtual methods
.method public getStatusForIccState(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;
    .locals 3
    .parameter "simState"

    .prologue
    .line 888
    if-nez p1, :cond_0

    .line 889
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->Normal:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    .line 915
    :goto_0
    return-object v1

    .line 892
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v1, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 896
    .local v0, missingAndNotProvisioned:Z
    :goto_1
    if-eqz v0, :cond_2

    sget-object p1, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .line 897
    :cond_2
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$4;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 915
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimMissing:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 892
    .end local v0           #missingAndNotProvisioned:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 899
    .restart local v0       #missingAndNotProvisioned:Z
    :pswitch_0
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimMissing:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 901
    :pswitch_1
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimMissingLocked:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 903
    :pswitch_2
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimMissing:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 905
    :pswitch_3
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimLocked:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 907
    :pswitch_4
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimPukLocked:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 909
    :pswitch_5
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->Normal:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 911
    :pswitch_6
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimPermDisabled:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 913
    :pswitch_7
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimMissing:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 897
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

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 1122
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    .line 1134
    :cond_0
    :goto_0
    return-void

    .line 1123
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherPanel:Landroid/widget/RelativeLayout;

    if-ne p1, v0, :cond_0

    .line 1125
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherCondition:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1126
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherCondition:Landroid/widget/TextView;

    const v1, 0x104056c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1129
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 1130
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherRefreshing:Z

    if-nez v0, :cond_0

    .line 1131
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 671
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 672
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 673
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 680
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDigitalClock:Lcom/android/internal/widget/DigitalClock;

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDigitalClock:Lcom/android/internal/widget/DigitalClock;

    invoke-virtual {v0}, Lcom/android/internal/widget/DigitalClock;->updateTime()V

    .line 682
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateClockAlign()V

    .line 684
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->refreshWeather()V

    .line 686
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 687
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 688
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->resetStatusInfo()V

    .line 692
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getMaxBiometricUnlockAttemptsReached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 693
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104032b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setInstructionText(Ljava/lang/String;)V

    .line 695
    :cond_1
    return-void
.end method

.method refreshDate()V
    .locals 3

    .prologue
    .line 878
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDateView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDateView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDateFormatString:Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 881
    :cond_0
    return-void
.end method

.method resetStatusInfo()V
    .locals 1

    .prologue
    .line 698
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mInstructionText:Ljava/lang/String;

    .line 699
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingBatteryInfo:Z

    .line 700
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDevicePluggedIn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPluggedIn:Z

    .line 701
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryLevel()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mBatteryLevel:I

    .line 702
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldAlwaysShowBatteryInfo(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mAlwaysShowBattery:Z

    .line 703
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateStatusLines(Z)V

    .line 704
    return-void
.end method

.method public setCarrierHelpText(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 626
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierHelpText:Ljava/lang/CharSequence;

    .line 627
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierHelpText:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 628
    return-void
.end method

.method setCarrierText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 610
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierText:Ljava/lang/CharSequence;

    .line 611
    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 612
    return-void
.end method

.method public setHelpMessage(II)V
    .locals 3
    .parameter "textResId"
    .parameter "lockIcon"

    .prologue
    .line 642
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 643
    .local v0, tmp:Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mHelpMessageText:Ljava/lang/String;

    .line 644
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mHelpMessageText:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 645
    return-void

    .line 643
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method setInstructionText(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 605
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mInstructionText:Ljava/lang/String;

    .line 606
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 607
    return-void
.end method

.method setOwnerInfo(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 615
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    .line 616
    const/16 v0, 0xe

    invoke-direct {p0, v0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 617
    return-void
.end method

.method updateStatusLines(Z)V
    .locals 0
    .parameter "showStatusLines"

    .prologue
    .line 715
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingStatus:Z

    .line 716
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateAlarmInfo()V

    .line 717
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateOwnerInfo()V

    .line 718
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateStatus1()V

    .line 719
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateCarrierText()V

    .line 720
    return-void
.end method
