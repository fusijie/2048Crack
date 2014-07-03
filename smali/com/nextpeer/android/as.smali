.class final Lcom/nextpeer/android/as;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/as$aa;,
        Lcom/nextpeer/android/as$ab;,
        Lcom/nextpeer/android/as$ac;,
        Lcom/nextpeer/android/as$ad;,
        Lcom/nextpeer/android/as$ae;
    }
.end annotation


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:I

.field public static final d:I

.field static final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/nextpeer/android/as$ac;->c:Lcom/nextpeer/android/as$ac;

    invoke-virtual {v0}, Lcom/nextpeer/android/as$ac;->a()I

    move-result v0

    sput v0, Lcom/nextpeer/android/as;->a:I

    sget-object v0, Lcom/nextpeer/android/as$aa;->b:Lcom/nextpeer/android/as$aa;

    invoke-virtual {v0}, Lcom/nextpeer/android/as$aa;->a()I

    move-result v0

    sput v0, Lcom/nextpeer/android/as;->b:I

    sget-object v0, Lcom/nextpeer/android/as$ad;->a:Lcom/nextpeer/android/as$ad;

    invoke-virtual {v0}, Lcom/nextpeer/android/as$ad;->a()I

    move-result v0

    sput v0, Lcom/nextpeer/android/as;->c:I

    invoke-static {}, Lcom/nextpeer/android/as$ae;->values()[Lcom/nextpeer/android/as$ae;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/as$ae;->a([Lcom/nextpeer/android/as$ae;)I

    move-result v0

    sput v0, Lcom/nextpeer/android/as;->d:I

    invoke-static {}, Lcom/nextpeer/android/at;->a()I

    move-result v0

    sput v0, Lcom/nextpeer/android/as;->e:I

    return-void
.end method

.method public static a()Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->a()Lcom/nextpeer/android/Nextpeer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nextpeer/android/Nextpeer;->b()Landroid/content/Context;

    move-result-object v1

    const-string v2, "NPPrefrences"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "npFirstTimeSeen"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "npFirstTimeSeen"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    const-string v0, "https://apia.nextpeer.com/v2/sdk/"

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    const-string v0, "tcp://android-push.nextpeer.com:1883"

    return-object v0
.end method
