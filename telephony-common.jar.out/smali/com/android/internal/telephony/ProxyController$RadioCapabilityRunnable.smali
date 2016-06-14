.class Lcom/android/internal/telephony/ProxyController$RadioCapabilityRunnable;
.super Ljava/lang/Object;
.source "ProxyController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ProxyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RadioCapabilityRunnable"
.end annotation


# instance fields
.field private mSessionId:I

.field final synthetic this$0:Lcom/android/internal/telephony/ProxyController;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/ProxyController;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/internal/telephony/ProxyController$RadioCapabilityRunnable;->this$0:Lcom/android/internal/telephony/ProxyController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/ProxyController;Lcom/android/internal/telephony/ProxyController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/ProxyController;
    .param p2, "x1"    # Lcom/android/internal/telephony/ProxyController$1;

    .prologue
    .line 245
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController$RadioCapabilityRunnable;-><init>(Lcom/android/internal/telephony/ProxyController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 251
    iget v1, p0, Lcom/android/internal/telephony/ProxyController$RadioCapabilityRunnable;->mSessionId:I

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController$RadioCapabilityRunnable;->this$0:Lcom/android/internal/telephony/ProxyController;

    # getter for: Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I
    invoke-static {v2}, Lcom/android/internal/telephony/ProxyController;->access$500(Lcom/android/internal/telephony/ProxyController;)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 252
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController$RadioCapabilityRunnable;->this$0:Lcom/android/internal/telephony/ProxyController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RadioCapability timeout: Ignore mSessionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/ProxyController$RadioCapabilityRunnable;->mSessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!= mRadioCapabilitySessionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController$RadioCapabilityRunnable;->this$0:Lcom/android/internal/telephony/ProxyController;

    # getter for: Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I
    invoke-static {v3}, Lcom/android/internal/telephony/ProxyController;->access$500(Lcom/android/internal/telephony/ProxyController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/ProxyController;->access$000(Lcom/android/internal/telephony/ProxyController;Ljava/lang/String;)V

    .line 269
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController$RadioCapabilityRunnable;->this$0:Lcom/android/internal/telephony/ProxyController;

    # getter for: Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I
    invoke-static {v1}, Lcom/android/internal/telephony/ProxyController;->access$600(Lcom/android/internal/telephony/ProxyController;)[I

    move-result-object v2

    monitor-enter v2

    .line 256
    const/4 v0, 0x0

    .line 258
    .local v0, "i":I
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController$RadioCapabilityRunnable;->this$0:Lcom/android/internal/telephony/ProxyController;

    # getter for: Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;
    invoke-static {v1}, Lcom/android/internal/telephony/ProxyController;->access$700(Lcom/android/internal/telephony/ProxyController;)[Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 259
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController$RadioCapabilityRunnable;->this$0:Lcom/android/internal/telephony/ProxyController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RadioCapability timeout: mSetRadioAccessFamilyStatus["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController$RadioCapabilityRunnable;->this$0:Lcom/android/internal/telephony/ProxyController;

    # getter for: Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I
    invoke-static {v4}, Lcom/android/internal/telephony/ProxyController;->access$600(Lcom/android/internal/telephony/ProxyController;)[I

    move-result-object v4

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/android/internal/telephony/ProxyController;->access$000(Lcom/android/internal/telephony/ProxyController;Ljava/lang/String;)V

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 262
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController$RadioCapabilityRunnable;->this$0:Lcom/android/internal/telephony/ProxyController;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController$RadioCapabilityRunnable;->this$0:Lcom/android/internal/telephony/ProxyController;

    # getter for: Lcom/android/internal/telephony/ProxyController;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v4}, Lcom/android/internal/telephony/ProxyController;->access$800(Lcom/android/internal/telephony/ProxyController;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v4

    # invokes: Lcom/android/internal/telephony/ProxyController;->issueFinish(II)V
    invoke-static {v1, v3, v4}, Lcom/android/internal/telephony/ProxyController;->access$900(Lcom/android/internal/telephony/ProxyController;II)V

    .line 263
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController$RadioCapabilityRunnable;->this$0:Lcom/android/internal/telephony/ProxyController;

    # invokes: Lcom/android/internal/telephony/ProxyController;->completeRadioCapabilityTransaction()V
    invoke-static {v1}, Lcom/android/internal/telephony/ProxyController;->access$1000(Lcom/android/internal/telephony/ProxyController;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 267
    :try_start_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 265
    :catchall_1
    move-exception v1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public setTimeoutState(I)V
    .locals 0
    .param p1, "sessionId"    # I

    .prologue
    .line 272
    iput p1, p0, Lcom/android/internal/telephony/ProxyController$RadioCapabilityRunnable;->mSessionId:I

    .line 273
    return-void
.end method
