.class public Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;
.super Ljava/lang/Object;
.source "WorldPhoneUtil.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;


# static fields
.field private static final IS_LTE_SUPPORT:Z

.field private static final IS_WORLD_PHONE_SUPPORT:Z = true

.field private static final PROJECT_SIM_NUM:I

.field private static sActivePhones:[Lcom/android/internal/telephony/Phone;

.field private static sContext:Landroid/content/Context;

.field private static sDefultPhone:Lcom/android/internal/telephony/Phone;

.field private static sProxyPhones:[Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 58
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->PROJECT_SIM_NUM:I

    .line 60
    const-string v2, "ro.mtk_lte_support"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->IS_LTE_SUPPORT:Z

    .line 61
    sput-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sContext:Landroid/content/Context;

    .line 62
    sput-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sDefultPhone:Lcom/android/internal/telephony/Phone;

    .line 63
    sput-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 64
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/Phone;

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    return-void

    :cond_0
    move v0, v1

    .line 60
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-string v1, "Constructor invoked"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sDefultPhone:Lcom/android/internal/telephony/Phone;

    .line 69
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v1

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 70
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->PROJECT_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 71
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    aput-object v1, v2, v0

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_0
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sDefultPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_1

    .line 74
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sDefultPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sContext:Landroid/content/Context;

    .line 78
    :goto_1
    return-void

    .line 76
    :cond_1
    const-string v1, "DefaultPhone = null"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static denyReasonToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "reason"    # I

    .prologue
    .line 198
    packed-switch p0, :pswitch_data_0

    .line 215
    const-string v0, "Invalid Reason"

    .line 219
    .local v0, "drString":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 200
    .end local v0    # "drString":Ljava/lang/String;
    :pswitch_0
    const-string v0, "CAMP_ON_NOT_DENIED"

    .line 201
    .restart local v0    # "drString":Ljava/lang/String;
    goto :goto_0

    .line 203
    .end local v0    # "drString":Ljava/lang/String;
    :pswitch_1
    const-string v0, "CAMP_ON_DENY_REASON_UNKNOWN"

    .line 204
    .restart local v0    # "drString":Ljava/lang/String;
    goto :goto_0

    .line 206
    .end local v0    # "drString":Ljava/lang/String;
    :pswitch_2
    const-string v0, "CAMP_ON_DENY_REASON_NEED_SWITCH_TO_FDD"

    .line 207
    .restart local v0    # "drString":Ljava/lang/String;
    goto :goto_0

    .line 209
    .end local v0    # "drString":Ljava/lang/String;
    :pswitch_3
    const-string v0, "CAMP_ON_DENY_REASON_NEED_SWITCH_TO_TDD"

    .line 210
    .restart local v0    # "drString":Ljava/lang/String;
    goto :goto_0

    .line 212
    .end local v0    # "drString":Ljava/lang/String;
    :pswitch_4
    const-string v0, "CAMP_ON_DENY_REASON_DOMESTIC_FDD_MD"

    .line 213
    .restart local v0    # "drString":Ljava/lang/String;
    goto :goto_0

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getMajorSim()I
    .locals 4

    .prologue
    .line 85
    const/16 v0, -0x63

    .line 86
    .local v0, "n":I
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/ProxyController;->isCapabilitySwitching()Z

    move-result v2

    if-nez v2, :cond_1

    .line 87
    const-string v2, "persist.radio.simswitch"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getMajorSim]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 90
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 99
    .end local v1    # "value":Ljava/lang/String;
    :goto_0
    return v0

    .line 93
    .restart local v1    # "value":Ljava/lang/String;
    :cond_0
    const-string v2, "[getMajorSim]: fail to get major SIM"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    .end local v1    # "value":Ljava/lang/String;
    :cond_1
    const-string v2, "[getMajorSim]: radio capability is switching"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getModemSelectionMode()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 103
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 104
    const-string v0, "sContext = null"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 109
    :goto_0
    return v1

    .line 108
    :cond_0
    const-string v0, "getModemSelectionMode: always auto!"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getProjectSimNum()I
    .locals 1

    .prologue
    .line 81
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->PROJECT_SIM_NUM:I

    return v0
.end method

.method public static iccCardTypeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "iccCardType"    # I

    .prologue
    .line 224
    packed-switch p0, :pswitch_data_0

    .line 235
    const-string v0, "Invalid Icc Card Type"

    .line 239
    .local v0, "iccTypeString":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 226
    .end local v0    # "iccTypeString":Ljava/lang/String;
    :pswitch_0
    const-string v0, "SIM"

    .line 227
    .restart local v0    # "iccTypeString":Ljava/lang/String;
    goto :goto_0

    .line 229
    .end local v0    # "iccTypeString":Ljava/lang/String;
    :pswitch_1
    const-string v0, "USIM"

    .line 230
    .restart local v0    # "iccTypeString":Ljava/lang/String;
    goto :goto_0

    .line 232
    .end local v0    # "iccTypeString":Ljava/lang/String;
    :pswitch_2
    const-string v0, "Icc Card Type Unknown"

    .line 233
    .restart local v0    # "iccTypeString":Ljava/lang/String;
    goto :goto_0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isLteSupport()Z
    .locals 1

    .prologue
    .line 121
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->IS_LTE_SUPPORT:Z

    return v0
.end method

.method public static isWorldPhoneSupport()Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 246
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WPP_UTIL]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-void
.end method

.method public static regStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "regState"    # I

    .prologue
    .line 169
    packed-switch p0, :pswitch_data_0

    .line 189
    const-string v0, "Invalid RegState"

    .line 193
    .local v0, "rsString":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 171
    .end local v0    # "rsString":Ljava/lang/String;
    :pswitch_0
    const-string v0, "REGISTRATION_STATE_NOT_REGISTERED_AND_NOT_SEARCHING"

    .line 172
    .restart local v0    # "rsString":Ljava/lang/String;
    goto :goto_0

    .line 174
    .end local v0    # "rsString":Ljava/lang/String;
    :pswitch_1
    const-string v0, "REGISTRATION_STATE_HOME_NETWORK"

    .line 175
    .restart local v0    # "rsString":Ljava/lang/String;
    goto :goto_0

    .line 177
    .end local v0    # "rsString":Ljava/lang/String;
    :pswitch_2
    const-string v0, "REGISTRATION_STATE_NOT_REGISTERED_AND_SEARCHING"

    .line 178
    .restart local v0    # "rsString":Ljava/lang/String;
    goto :goto_0

    .line 180
    .end local v0    # "rsString":Ljava/lang/String;
    :pswitch_3
    const-string v0, "REGISTRATION_STATE_REGISTRATION_DENIED"

    .line 181
    .restart local v0    # "rsString":Ljava/lang/String;
    goto :goto_0

    .line 183
    .end local v0    # "rsString":Ljava/lang/String;
    :pswitch_4
    const-string v0, "REGISTRATION_STATE_UNKNOWN"

    .line 184
    .restart local v0    # "rsString":Ljava/lang/String;
    goto :goto_0

    .line 186
    .end local v0    # "rsString":Ljava/lang/String;
    :pswitch_5
    const-string v0, "REGISTRATION_STATE_ROAMING"

    .line 187
    .restart local v0    # "rsString":Ljava/lang/String;
    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static regionToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "region"    # I

    .prologue
    .line 126
    packed-switch p0, :pswitch_data_0

    .line 137
    const-string v0, "Invalid Region"

    .line 141
    .local v0, "regionString":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 128
    .end local v0    # "regionString":Ljava/lang/String;
    :pswitch_0
    const-string v0, "REGION_UNKNOWN"

    .line 129
    .restart local v0    # "regionString":Ljava/lang/String;
    goto :goto_0

    .line 131
    .end local v0    # "regionString":Ljava/lang/String;
    :pswitch_1
    const-string v0, "REGION_DOMESTIC"

    .line 132
    .restart local v0    # "regionString":Ljava/lang/String;
    goto :goto_0

    .line 134
    .end local v0    # "regionString":Ljava/lang/String;
    :pswitch_2
    const-string v0, "REGION_FOREIGN"

    .line 135
    .restart local v0    # "regionString":Ljava/lang/String;
    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 146
    packed-switch p0, :pswitch_data_0

    .line 160
    const-string v0, "Invalid State"

    .line 164
    .local v0, "stateString":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 148
    .end local v0    # "stateString":Ljava/lang/String;
    :pswitch_0
    const-string v0, "STATE_POWER_OFF"

    .line 149
    .restart local v0    # "stateString":Ljava/lang/String;
    goto :goto_0

    .line 151
    .end local v0    # "stateString":Ljava/lang/String;
    :pswitch_1
    const-string v0, "STATE_IN_SERVICE"

    .line 152
    .restart local v0    # "stateString":Ljava/lang/String;
    goto :goto_0

    .line 154
    .end local v0    # "stateString":Ljava/lang/String;
    :pswitch_2
    const-string v0, "STATE_OUT_OF_SERVICE"

    .line 155
    .restart local v0    # "stateString":Ljava/lang/String;
    goto :goto_0

    .line 157
    .end local v0    # "stateString":Ljava/lang/String;
    :pswitch_3
    const-string v0, "STATE_EMERGENCY_ONLY"

    .line 158
    .restart local v0    # "stateString":Ljava/lang/String;
    goto :goto_0

    .line 146
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public setModemSelectionMode(II)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "modemType"    # I

    .prologue
    .line 243
    return-void
.end method
