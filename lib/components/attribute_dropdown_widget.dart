import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'attribute_dropdown_model.dart';
export 'attribute_dropdown_model.dart';

class AttributeDropdownWidget extends StatefulWidget {
  const AttributeDropdownWidget({
    super.key,
    required this.label,
    this.options,
    required this.index,
    this.selectedAttributes,
  });

  final String? label;
  final List<dynamic>? options;
  final int? index;
  final List<dynamic>? selectedAttributes;

  @override
  State<AttributeDropdownWidget> createState() =>
      _AttributeDropdownWidgetState();
}

class _AttributeDropdownWidgetState extends State<AttributeDropdownWidget> {
  late AttributeDropdownModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AttributeDropdownModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 0.0,
      runSpacing: 0.0,
      alignment: WrapAlignment.start,
      crossAxisAlignment: WrapCrossAlignment.start,
      direction: Axis.horizontal,
      runAlignment: WrapAlignment.start,
      verticalDirection: VerticalDirection.down,
      clipBehavior: Clip.none,
      children: [
        Align(
          alignment: AlignmentDirectional(-1.0, -1.0),
          child: Text(
            valueOrDefault<String>(
              widget.label,
              'Color',
            ),
            textAlign: TextAlign.start,
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Onest',
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w500,
                ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
          child: FlutterFlowDropDown<String>(
            controller: _model.dropDownValueController ??=
                FormFieldController<String>(null),
            options: widget.options!.map((e) => e.toString()).toList(),
            onChanged: (val) async {
              safeSetState(() => _model.dropDownValue = val);
              _model.defaultDropdownValue = _model.dropDownValue;
              safeSetState(() {});
            },
            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.plusJakartaSans(
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
            hintText: 'Select...',
            icon: Icon(
              Icons.keyboard_arrow_down_rounded,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 24.0,
            ),
            fillColor: FlutterFlowTheme.of(context).secondaryBackground,
            elevation: 2.0,
            borderColor: FlutterFlowTheme.of(context).secondaryText,
            borderWidth: 1.0,
            borderRadius: 8.0,
            margin: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
            hidesUnderline: true,
            isOverButton: false,
            isSearchable: false,
            isMultiSelect: false,
          ),
        ),
      ],
    );
  }
}
