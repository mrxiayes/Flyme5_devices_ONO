.class Lcom/android/internal/telephony/RIL$2;
.super Landroid/os/Handler;
.source "RIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 0

    .prologue
    .line 670
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 672
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 673
    .local v0, "asyncResult":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/RadioCapability;

    .line 674
    .local v1, "radioCapability":Lcom/android/internal/telephony/RadioCapability;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 675
    iget-object v2, p0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    const-string v3, "Get supported radio access family fail"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 681
    :goto_0
    return-void

    .line 678
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioCapability;->getRadioAccessFamily()I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/RIL;->mSupportedRaf:I

    .line 679
    iget-object v2, p0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Supported radio access family="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    iget v4, v4, Lcom/android/internal/telephony/RIL;->mSupportedRaf:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_0
.end method
