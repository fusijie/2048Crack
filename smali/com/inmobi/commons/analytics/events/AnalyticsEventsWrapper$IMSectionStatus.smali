.class public final enum Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMSectionStatus;
.super Ljava/lang/Enum;
.source "AnalyticsEventsWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IMSectionStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMSectionStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CANCELED:Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMSectionStatus;

.field public static final enum COMPLETED:Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMSectionStatus;

.field public static final enum FAILED:Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMSectionStatus;

.field private static final synthetic a:[Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMSectionStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMSectionStatus;

    const-string v1, "COMPLETED"

    invoke-direct {v0, v1, v2}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMSectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMSectionStatus;->COMPLETED:Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMSectionStatus;

    .line 46
    new-instance v0, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMSectionStatus;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v3}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMSectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMSectionStatus;->FAILED:Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMSectionStatus;

    .line 48
    new-instance v0, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMSectionStatus;

    const-string v1, "CANCELED"

    invoke-direct {v0, v1, v4}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMSectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMSectionStatus;->CANCELED:Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMSectionStatus;

    .line 42
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMSectionStatus;

    sget-object v1, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMSectionStatus;->COMPLETED:Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMSectionStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMSectionStatus;->FAILED:Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMSectionStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMSectionStatus;->CANCELED:Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMSectionStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMSectionStatus;->a:[Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMSectionStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMSectionStatus;
    .locals 1
    .parameter

    .prologue
    .line 42
    const-class v0, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMSectionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMSectionStatus;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMSectionStatus;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMSectionStatus;->a:[Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMSectionStatus;

    invoke-virtual {v0}, [Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMSectionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMSectionStatus;

    return-object v0
.end method
