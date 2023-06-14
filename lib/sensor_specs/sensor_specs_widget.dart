import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sensor_specs_model.dart';
export 'sensor_specs_model.dart';

class SensorSpecsWidget extends StatefulWidget {
  const SensorSpecsWidget({Key? key}) : super(key: key);

  @override
  _SensorSpecsWidgetState createState() => _SensorSpecsWidgetState();
}

class _SensorSpecsWidgetState extends State<SensorSpecsWidget> {
  late SensorSpecsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SensorSpecsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: responsiveVisibility(
        context: context,
        tabletLandscape: false,
        desktop: false,
      )
          ? AppBar(
              backgroundColor: Colors.white,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: Color(0xFF090F13),
                  size: 30.0,
                ),
                onPressed: () async {
                  context.safePop();
                },
              ),
              title: Text(
                'Sensor Specifications',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Lexend Deca',
                      color: Color(0xFF090F13),
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).headlineMediumFamily),
                    ),
              ),
              actions: [],
              centerTitle: false,
              elevation: 0.0,
            )
          : null,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Flexible(
            child: StreamBuilder<List<SensorSpecificationRecord>>(
              stream: querySensorSpecificationRecord(
                queryBuilder: (sensorSpecificationRecord) =>
                    sensorSpecificationRecord.orderBy('name'),
              ),
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return Center(
                    child: SizedBox(
                      width: 50.0,
                      height: 50.0,
                      child: CircularProgressIndicator(
                        color: FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  );
                }
                List<SensorSpecificationRecord>
                    dataTableSensorSpecificationRecordList = snapshot.data!;
                return Container(
                  height: 250.0,
                  child: DataTable2(
                    columns: [
                      DataColumn2(
                        label: DefaultTextStyle.merge(
                          softWrap: true,
                          child: Text(
                            'Sensor ',
                            style: FlutterFlowTheme.of(context).labelLarge,
                          ),
                        ),
                      ),
                      DataColumn2(
                        label: DefaultTextStyle.merge(
                          softWrap: true,
                          child: Text(
                            'Precision',
                            style: FlutterFlowTheme.of(context).labelLarge,
                          ),
                        ),
                      ),
                    ],
                    rows: dataTableSensorSpecificationRecordList
                        .mapIndexed((dataTableIndex,
                                dataTableSensorSpecificationRecord) =>
                            [
                              Text(
                                dataTableSensorSpecificationRecord.name,
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                              Text(
                                dataTableSensorSpecificationRecord.specValue,
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                            ].map((c) => DataCell(c)).toList())
                        .map((e) => DataRow(cells: e))
                        .toList(),
                    headingRowColor: MaterialStateProperty.all(
                      FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    headingRowHeight: 56.0,
                    dataRowColor: MaterialStateProperty.all(
                      FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    dataRowHeight: 56.0,
                    border: TableBorder(
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                    dividerThickness: 1.0,
                    showBottomBorder: true,
                    minWidth: 49.0,
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
            child: FFButtonWidget(
              onPressed: () async {
                context.pop();
              },
              text: 'Edit',
              options: FFButtonOptions(
                width: 190.0,
                height: 50.0,
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: Color(0xFF4B39EF),
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Lexend Deca',
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).titleSmallFamily),
                    ),
                elevation: 3.0,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(80.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
